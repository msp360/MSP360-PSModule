function New-MBSNBFBackupPlan {
    
    [CmdletBinding()]
    param (
        # File level backup plan
        [Parameter(Mandatory=$False, HelpMessage="File-Level plan object", ParameterSetName='FileLevel')]
        [MBS.Agent.Plan.NBFFileLevelBackupPlan]
        $NBFFileLevelBackupPlan,
        # Image-Based backup plan
        [Parameter(Mandatory=$False, HelpMessage="Image-Based plan object", ParameterSetName='ImageBased')]
        [MBS.Agent.Plan.NBFImageBasedBackupPlan]
        $NBFImageBasedBackupPlan,
        #
        [Parameter(Mandatory=$False, HelpMessage="Master password. Should be specified if configuration is protected by master password. Use -MasterPassword (ConvertTo-SecureString -string ""Your_Password"" -AsPlainText -Force)", ParameterSetName='FileLevel')]
        [Parameter(Mandatory=$False, HelpMessage="Master password. Should be specified if configuration is protected by master password. Use -MasterPassword (ConvertTo-SecureString -string ""Your_Password"" -AsPlainText -Force)", ParameterSetName='ImageBased')]
        [SecureString]
        $MasterPassword
    )
    
    begin {
        if (-not($CBB = Get-MBSAgent)) {
            Break
        }
        $CBBVersion = [version]$CBB.version
        if ($CBBVersion -lt [version]"7.1.0.0") {
            Write-Error "Version $($CBB.version) is not supported. Please upgrade to the minimum supported version 7.1"
            Break
        }
        if (-Not(Test-MBSAgentMasterPassword)) {
            $MasterPassword = $null
        } else {
            if (-Not(Test-MBSAgentMasterPassword -CheckMasterPassword -MasterPassword $MasterPassword)) {
                $MasterPassword = Read-Host -AsSecureString -Prompt "Master Password"
                if (-Not(Test-MBSAgentMasterPassword -CheckMasterPassword -MasterPassword $MasterPassword)) {
                    Write-Error "ERROR: Master password is not specified"
                    Break
                }
            }
        }
    }
    
    process {

        function Set-Schedule {
            param (
                [Parameter()]
                [psobject]
                $Schedule,
                [Parameter()]
                [string]
                $Prefix = ''
            )
            switch ($Schedule.Frequency) {
                Daily {$ScheduleCli += " -every$prefix day"}
                Weekly {$ScheduleCli += " -every$prefix week"}
                Monthly {$ScheduleCli += " -every$prefix month"}
                dayofmonth {$ScheduleCli += " -every$prefix dayofmonth"}
                Default {
                    #Write-Host "Schedule frequency is not specified."
                    #Break
                }
            }
            if ($Schedule.At){$ScheduleCli += " -at$prefix ""$($Schedule.At.ToString())"""}
            if ($Schedule.DayOfMonth){$ScheduleCli += " -day$prefix $($Schedule.DayOfMonth)"}
            if ($null -ne $Schedule.DayOfWeek){$ScheduleCli += " -weekday$prefix "+(($Schedule.DayOfWeek | foreach-object -Begin {$weekdaylocal = @()} -Process{$weekdaylocal += $_.ToString().Substring(0,2)} -End {return $weekdaylocal.ToLower()}) -join ",")}
            if ($Schedule.Weeknumber){$ScheduleCli += " -weeknumber$prefix $($Schedule.Weeknumber)"}
            if ($Schedule.OccursFrom){$ScheduleCli += " -dailyFrom$prefix $($Schedule.OccursFrom.ToString('hh\:mm'))"}
            if ($Schedule.OccursTo){$ScheduleCli += " -dailyTill$prefix $($Schedule.OccursTo.ToString('hh\:mm'))"}
            if ($null -ne $Schedule.OccursEvery.TotalMinutes){
                if ($Schedule.OccursEvery.TotalMinutes -ne 0){
                    if ($Schedule.OccursEvery.TotalHours -gt 180){
                        $ScheduleCli += " -occurs$prefix hour -occurValue$prefix 180"
                    }elseif($Schedule.OccursEvery.TotalHours -lt 180 -and $Schedule.OccursEvery.TotalHours -ge 1){
                        $ScheduleCli += " -occurs$prefix hour -occurValue$prefix $([Math]::Round($Schedule.OccursEvery.TotalHours))"
                    }elseif($Schedule.OccursEvery.TotalHours -lt 1 -and $Schedule.OccursEvery.TotalMinutes -ge 1){
                        $ScheduleCli += " -occurs$prefix min -occurValue$prefix $([Math]::Round($Schedule.OccursEvery.TotalMinutes))"
                    }else{
                        Write-host "Schedule 'OccursEvery' parameter cannot be less then 1 minute."
                    }
                }
            }
            if ($Schedule.RepeatInterval) {
                if ($CBBVersion -ge [version]"7.5.0.80") {
                    $ScheduleCli += " -repeatEvery$prefix $($Schedule.RepeatInterval)"
                } else {
                    Write-Warning "Backup agent version is $CBBVersion. ""RepeatInterval"" parameter requires version 7.5.0.80 or higher. Ignoring RepeatInterval option"
                }
            }
            if ($Schedule.RepeatStartDate) {
                if ($CBBVersion -ge [version]"7.5.0.80") {
                    $ScheduleCli += " -repeatStartDate$prefix ""$($Schedule.RepeatStartDate.ToString())"""
                } else {
                    Write-Warning "Backup agent version is $CBBVersion. ""RepeatStartDate"" parameter requires version 7.5.0.80 or higher. Ignoring RepeatStartDate option"
                }
            }

            return $Schedulecli

        }
        function Set-Argument ($Object) {
            if ($Object.Name){$Argument += " -n ""$($Object.Name)"""}
            if(($Object.BackupPlanCommonOption.StorageClass -ne 'Standard') -And (-Not ($Global:MSP360ModuleSettings.SkipStorageClass))){
                if (($Object.BackupPlanCommonOption.StorageClass -eq 'GlacierInstantRetrieval') -And ($CBBVersion -lt [version]"7.3.1")){
                    Write-Warning "Backup agent version is $CBBVersion. GlacierInstantRetrieval storage class is supported in version 7.3.1 or higher. Ignoring StorageClass option"
                    $Argument += " -aid ""$($Object.StorageAccount.ID)"""
                }else{
                    $Argument += " -a ""$($Object.StorageAccount.DisplayName)"" -sc ""$($Object.BackupPlanCommonOption.StorageClass)"""
                }
            }else{
                if($Global:MSP360ModuleSettings.SkipStorageClass){
                    Write-Warning "MSP360ModuleSettings.SkipStorageClass is set. Ignoring StorageClass option"
                }
                $Argument += " -aid ""$($Object.StorageAccount.ID)"""
            }

            if($Object.Schedule){$Argument += Set-Schedule -Schedule $Object.Schedule}
            if($Object.ForceFullSchedule){$Argument += Set-Schedule -Schedule $Object.ForceFullSchedule -Prefix "ForceFull"}
            if($Object.MSSQLDiffSchedule){$Argument += Set-Schedule -Schedule $Object.MSSQLDiffSchedule -Prefix "Diff"}
            if($Object.MSSQLTlogSchedule){$Argument += Set-Schedule -Schedule $Object.MSSQLTlogSchedule -Prefix "TLog"}
            
            
            
            if($Object.BackupPlanCommonOption.SyncRepositoryBeforeRun){$Argument += " -sync yes"}#else{$Argument += " -sync no"}
            if(-Not ($Global:MSP360ModuleSettings.SkipSSE)) {
                if($Object.BackupPlanCommonOption.UseServerSideEncryption){$Argument += " -sse yes"}else{$Argument += " -sse no"}
            } else {
                Write-Warning "MSP360ModuleSettings.SkipSSE is set. Ignoring UseServerSideEncryption option"
            }
            if(-Not ($Global:MSP360ModuleSettings.SkipEncryption)) {
                if($Null -ne $Object.BackupPlanCommonOption.EncryptionPassword){$Argument += " -ea $($Object.BackupPlanCommonOption.EncryptionAlgorithm)"}
                if($Object.BackupPlanCommonOption.EncryptionPassword){$Argument += " -ep """+([System.Runtime.InteropServices.Marshal]::PtrToStringAuto([System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($Object.BackupPlanCommonOption.EncryptionPassword)))+""""}
            } else {
                Write-Warning "MSP360ModuleSettings.SkipEncryption is set. Ignoring EncryptionPassword and EncryptionAlgorithm options"
            }
            if(-Not ($Global:MSP360ModuleSettings.SkipCompression)) {
                if($Object.BackupPlanCommonOption.UseCompression){$Argument += " -c yes"}else{$Argument += " -c no"}
            } else {
                Write-Warning "MSP360ModuleSettings.SkipCompression is set. Ignoring UseCompression option"
            }
            if($Object.BackupPlanCommonOption.FullConsistencyCheck){$Argument += " -fcCheck yes"}else{$Argument += " -fcCheck no"}
            if($Object.BackupPlanCommonOption.StopIfPlanRunsFor.TotalMinutes -gt 0){$Argument += " -stopAfter $( [math]::Round($Object.BackupPlanCommonOption.StopIfPlanRunsFor.TotalHours)):$($Object.BackupPlanCommonOption.StopIfPlanRunsFor.Minutes)"}
            if($Object.BackupPlanCommonOption.RunMissedPlanImmediately){$Argument += " -runMissed yes"}else{$Argument += " -runMissed no"}
            if($Object.BackupPlanCommonOption.PreActionCommand){$Argument += " -preAction $($Object.BackupPlanCommonOption.PreActionCommand)"}
            if($Null -ne $Object.BackupPlanCommonOption.PreActionContinueAnyway){
                if($Object.BackupPlanCommonOption.PreActionContinueAnyway){
                    $Argument += " -pac yes"
                } else {
                    $Argument += " -pac no"
                }
            }
            if($Object.BackupPlanCommonOption.PostActionCommand){$Argument += " -postAction $($Object.BackupPlanCommonOption.PostActionCommand)"}
            if($Null -ne $Object.BackupPlanCommonOption.PostActionRunAnyway){
                if($Object.BackupPlanCommonOption.PostActionRunAnyway){
                    $Argument += " -paa yes"
                } else {
                    $Argument += " -paa no"
                }
            }
            if($Null -ne $Object.BackupPlanCommonOption.ResultEmailNotification){$Argument += " -notification $($Object.BackupPlanCommonOption.ResultEmailNotification)"}
            if($Null -ne $Object.BackupPlanCommonOption.AddEventToWindowsLog){$Argument += " -winLog $($Object.BackupPlanCommonOption.AddEventToWindowsLog)"}
            if($Null -ne $Object.BackupPlanCommonOption.KeepVersionPeriod){
                if($Object.BackupPlanCommonOption.KeepVersionPeriod.TotalDays -gt 0){
                    $Argument += " -purge $([Math]::Round($Object.BackupPlanCommonOption.KeepVersionPeriod.TotalDays))d"
                }else{
                    $Argument += " -purge no"
                }
            }

            if($Object.BackupPlanCommonOption.GFSKeepWeekly -gt 0){$Argument += " -gfsW $($Object.BackupPlanCommonOption.GFSKeepWeekly)"}
            if($Object.BackupPlanCommonOption.GFSKeepMonthly -gt 0){$Argument += " -gfsM $($Object.BackupPlanCommonOption.GFSKeepMonthly)"}
            if($Object.BackupPlanCommonOption.GFSKeepYearly -gt 0){$Argument += " -gfsY $($Object.BackupPlanCommonOption.GFSKeepYearly)"}
            if($Object.BackupPlanCommonOption.GFSMonthOfTheYear -gt 0){$Argument += " -gfsYMonth $($Object.BackupPlanCommonOption.GFSMonthOfTheYear)"}


            switch ($PSCmdlet.ParameterSetName){
                'FileLevel' {
                    # --------- File-Level ------------
                    if ($Object.FastNTFSScan) {$Argument += " -fastNtfs yes"}else{$Argument += " -fastNtfs no"}
                    if ($Object.BackupNTFSPermissions) {$Argument += " -ntfs yes"}
                    if(-Not ($Global:MSP360ModuleSettings.SkipVSS)) {
                        if ($Object.ForceUsingVSS) {$Argument += " -vss yes"}else{$Argument += " -vss no"}
                    } else {
                        Write-Warning "MSP360ModuleSettings.SkipVSS is set. Ignoring ForceUsingVSS option"
                    }
                    if ($Object.UseShareReadWriteModeOnError) {$Argument += " -sharerw yes"}
                    if ($Object.BackupEmptyFolders) {$Argument += " -bef yes"}
                    if ($Object.BackupOnlyAfter){$Argument += " -oa $($Object.BackupOnlyAfter.ToString('MM/dd/yyyy HH:mm tt'))"}
                    if ($Object.ExcludeSystemHiddenFiles) {
                        $Argument += " -es yes"
                    }else{
                        $Argument += " -es no"
                    }
                    if ($Object.SkipFolders){$Argument += " -skipf $($Object.SkipFolders -join ',')"}
                    if ($Object.IncludeFilesMask){$Argument += " -ifm $($Object.IncludeFilesMask -join ',')"}
                    if ($Object.ExcludeFilesMask){$Argument += " -efm $($Object.ExcludeFilesMask -join ',')"}
                    if ($Object.IgnoreErrorPathNotFound) {$Argument += " -iepnf yes"}
                    if ($Object.BackupItem){
                        $Object.BackupItem | ForEach-Object -Process {
                            if (Test-Path -Path $_ -PathType Container) {
                                $Argument += " -d ""$_"""
                            }
                            if (Test-Path -Path $_ -PathType Leaf) {
                                $Argument += " -f ""$_"""
                            }
                            #$Argument += " -f "+'"{0}"' -f ($Object.BackupFile -join '" -f "')
                        }
                    }
                    if ($Object.ExcludeItem) {
                        if ($CBBVersion -ge [version]"7.5.0") {
                            $Object.ExcludeItem | ForEach-Object -Process {
                                if (Test-Path -Path $_ -PathType Container) {
                                    $Argument += " -rd ""$_"""
                                }
                                if (Test-Path -Path $_ -PathType Leaf) {
                                    $Argument += " -rf ""$_"""
                                }
                                #$Argument += " -rf "+'"{0}"' -f ($Object.ExcludeFile -join '" -rf "')
                            }
                        }
                    }
                    
                    #if ($Object.BackupDirectory){$Argument += " -d "+'"{0}"' -f ($Object.BackupDirectory -join '" -d "')}
                    #if ($Object.ExcludeDirectory){$Argument += " -rd "+'"{0}"' -f ($Object.ExcludeDirectory -join '" -rd "')}
                    if ($Object.GenerateDetailedReport) {
                        $Argument += " -dr yes"
                    }else{
                        $Argument += " -dr no"
                    }
                }   

                'ImageBased' {
                    # ------------- Image-Based -------------
                    switch ($Object.BackupVolumes) {
                        'AllVolumes' {$Argument += " -av"}
                        'FixedVolumes' {
                            if ($CBBVersion -ge [version]"7.2.2.10") {
                                $Argument += " -f"
                            } else {
                                Write-Warning "Backup agent version is $CBBVersion. ""FixedVolumes"" backup volume type requires version 7.2.2 or higher. Setting SystemRequired value"
                                $Argument += " -r"
                            }
                        }
                        'SystemRequired' {$Argument += " -r"}
                        'SelectedVolumes' {
                            $Object.Volumes.WindowsVolumeIdentity | ForEach-Object -Process {
                                $Argument += " -v $_"
                            }
                        }
                        Default {}
                    }

                    if ($Object.disableVSS) {$Argument += " -disableVSS yes"}
                    if ($Object.ignoreBadSectors) {
                        $Argument += " -ignoreBadSectors yes"
                    }else{
                        $Argument += " -ignoreBadSectors no"
                    }
                    if ($Object.useSystemVSS) {$Argument += " -useSystemVSS yes"}
                    if ($Null -ne $Object.prefetchBlockCount){$Argument += " -prefetchBlockCount $($Object.prefetchBlockCount)"}
                    if ($Object.blockSize){$Argument += " -blockSize $($Object.blockSize.Value__)"}
                    if ($Object.ExcludeItem){$Argument += " -skipf "+'"{0}"' -f ($Object.ExcludeItem -join '" -skipf "')}
                    if ($Object.KeepBitLocker) {
                        if ($CBBVersion -ge [version]"7.2.2.0") {
                            $Argument += " -keepBitlocker yes"
                        } else {
                            Write-Warning "Backup agent version is $CBBVersion. ""KeepBitLocker"" parameter requires version 7.2.2 or higher. Ignoring KeepBitLocker option"
                        }
                    #} else {
                        #if (($CBBVersion -ge [version]"7.2.2.0") -And (-Not($Object.KeepBitLockerEnableForVolume)) -And (-Not($Object.KeepBitLockerDisableForVolume))) {
                        #    $Argument += " -keepBitlocker no"
                        #}
                    }
                    if ($Object.KeepBitLockerEnableForVolume) {
                        if ($CBBVersion -ge [version]"7.2.2.0") {
                            if (-Not($Object.KeepBitLocker)) {
                                $Argument += " -keepBitlockerOn "+'"{0}"' -f ($Object.KeepBitLockerEnableForVolume -join '" -keepBitlockerOn "')
                            } else {
                                Write-Warning """KeepBitLocker"" and ""KeepBitLockerEnableForVolume"" parameters are mutually exclusive. Ignoring KeepBitLockerEnableForVolume option"
                            }
                        }else{
                            Write-Warning "Backup agent version is $CBBVersion. ""KeepBitLockerEnableForVolume"" parameter requires version 7.2.2 or higher. Ignoring KeepBitLockerEnableForVolume option"
                        }
                    }
                    if ($Object.KeepBitLockerDisableForVolume) {
                        if ($CBBVersion -ge [version]"7.2.2.0") {
                            if (-Not($Object.KeepBitLocker)) {
                                $Argument += " -keepBitlockerOff "+'"{0}"' -f ($Object.KeepBitLockerDisableForVolume -join '" -keepBitlockerOff "')
                            } else {
                                Write-Warning """KeepBitLocker"" and ""KeepBitLockerDisableForVolume"" parameters are mutually exclusive. Ignoring KeepBitLockerDisableForVolume option"
                            }
                        }else{
                            Write-Warning "Backup agent version is $CBBVersion. ""KeepBitLockerDisableForVolume"" parameter requires version 7.2.2 or higher. Ignoring KeepBitLockerDisableForVolume option"
                        }
                    }
                    switch ($Object.RestoreVerificationMode) {
                        'DoNotRun' {$Argument += " -rv None"}
                        'RunForFull' {$Argument += " -rv OnFull"}
                        'RunForIncremental' {$Argument += " -rv OnDiff"}
                        'RunForFullAndIncremental' {$Argument += " -rv OnAll"}
                        Default {}
                    }

                }
                Default {}
            }

            Return $Argument
        }

        switch ($PSCmdlet.ParameterSetName){
            'FileLevel' {
                $Arguments += " addBackupPlan -nbf"
                $Arguments += Set-Argument $NBFFileLevelBackupPlan
            }
            'ImageBased' {
                $Arguments += " addBackupIBBPlan -nbf"
                $Arguments += Set-Argument $NBFImageBasedBackupPlan
            }
            #'HyperV' {$Arguments += " addHyperVPlan"}
            #'MSSQL' {$Arguments += " addBackupMSSQLPlan"}
            Default {}
        }

        

        $BPID = (Start-MBSProcess -CMDPath $CBB.CBBCLIPath -CMDArguments $Arguments -Output json -MasterPassword $MasterPassword -ErrorAction Stop).ID
        if ($NBFFileLevelBackupPlan.ExcludeItem -and ($CBBVersion -lt [version]"7.5.0")) {
            $ArgumentsExcludeItem = " editBackupPlan -nbf -id $BPID"
            $NBFFileLevelBackupPlan.ExcludeItem | ForEach-Object -Process {
                if (Test-Path -Path $_ -PathType Container) {
                    $ArgumentsExcludeItem += " -rd ""$_"""
                }
                if (Test-Path -Path $_ -PathType Leaf) {
                    $ArgumentsExcludeItem += " -rf ""$_"""
                }
            }
            Start-MBSProcess -CMDPath $CBB.CBBCLIPath -CMDArguments $ArgumentsExcludeItem -Output json -MasterPassword $MasterPassword -ErrorAction Stop
        }
        return $BPID
    }
    
    end {
        
    }
}
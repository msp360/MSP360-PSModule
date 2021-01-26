function New-MBSBackupPlan {
    <#
    .SYNOPSIS
    Creates new backup plan.
    
    .DESCRIPTION
    Creates File-Level, Image-Based, Hyper-V, or MS SQL backup plan.
    
    .PARAMETER Name
    Backup plan name.
    
    .PARAMETER StorageAccount
    Specify storage account object. Use Get-MBSStorageAccount cmdlet to list storages. Example: (Get-MBSStorageAccount -Name "AWS S3")
    
    .PARAMETER MasterPassword
    Master password. Should be specified if configuration is protected by master password. Use -MasterPassword (ConvertTo-SecureString -string "Your_Password" -AsPlainText -Force)
    
    .PARAMETER Schedule
    Specify schedule. Use New-MBSPlanSchedule to create an object.
    
    .PARAMETER FullSchedule
    Specify force full schedule. Use New-MBSPlanSchedule to create an object.
    
    .PARAMETER MSSQLDiffSchedule
    Specify MS SQL Differential schedule. Use New-MBSPlanSchedule to create an object.
    
    .PARAMETER MSSQLTlogSchedule
    Specify MS SQL T-Log schedule. Use New-MBSPlanSchedule to create an object.
    
    .PARAMETER BackupPlanCommonOption
    Specify plan common options. Use New-MBSBackupPlanCommonOption to create an object.
    
    .PARAMETER UseBlockLevelBackup
    Use block level backup.
    
    .PARAMETER BackupNTFSPermissions
    Backup NTFS permissions
    
    .PARAMETER ForceUsingVSS
    Force using VSS (Volume Shadow Copy Service)
    
    .PARAMETER UseShareReadWriteModeOnError
    Use share read/write mode on errors. Can help if file is open in share read/write mode
    
    .PARAMETER DeleteLocallyDeletedFilesAfter
    Delete files that have been deleted locally after specified number of days. Example: -DeleteLocallyDeletedFilesAfter 30. .
    
    .PARAMETER BackupEmptyFolders
    Backup empty folders
    
    .PARAMETER BackupOnlyAfter
    Backup files only after specific date. Example: "06/09/19 7:43 AM"
    
    .PARAMETER ExcludeSystemHiddenFiles
    Exclude system and hidden files from backup plan.
    
    .PARAMETER SkipFolder
    Skip folders. Example: -skipfolder ""bin,*temp*,My*""
    
    .PARAMETER IncludeFilesMask
    Include files mask. Example: -IncludeFilesMask ""*.doc,*.xls""
    
    .PARAMETER ExcludeFilesMask
    Exclude files mask. Example: -ExcludeFilesMask ""*.bak,*.tmp""
    
    .PARAMETER IgnoreErrorPathNotFound
    Ignore errors path not found
    
    .PARAMETER TrackDeletedFiles
    Track deleted files data
    
    .PARAMETER BackupFile
    Backup file path. Example: "c:\temp\test.txt","c:\temp\test.ps1"
    
    .PARAMETER BackupDirectory
    Backup directory path. Example: "c:\Work","c:\Users"
    
    .PARAMETER GenerateDetailedReport
    Specify to generate detailed report
    
    .PARAMETER BackupVolumes
    Backup Volumes type. 
    
    .PARAMETER Volumes
    Backup selected volumes with the specified ids
    
    .PARAMETER DisableVSS
    Disable VSS, use direct access to NTFS volume
    
    .PARAMETER IgnoreBadSectors
    Ignore bad sectors
    
    .PARAMETER UseSystemVSS
    Use system VSS provider
    
    .PARAMETER DisableSyntheticFull
    Disable Synthetic Full backup.
    
    .PARAMETER PrefetchBlockCount
    Prefetch block count (0 - 100, 0 without prefetch)
    
    .PARAMETER BlockSize
    Block size. Possible values: 128, 256, 512, 1024
    
    .PARAMETER BackupVM
    Backup Virtual Machine type
    
    .PARAMETER VirtualMachine
    Backup selected virtual machines only the specified names
    
    .PARAMETER InstanceName
    MS SQL server instance name
    
    .PARAMETER useSSL
    Use secure connection (SSL/TLS)
    
    .PARAMETER useWinauth
    Use Windows authentication
    
    .PARAMETER UserName
    MS SQL server user name
    
    .PARAMETER Password
    MS SQL server password
    
    .PARAMETER BackupDB
    Database selection type
    
    .PARAMETER Databases
    Select backup database
    
    .PARAMETER CopyOnly
    Use copy only
    
    .PARAMETER Verify
    Verify
    
    .EXAMPLE
    New-MBSBackupPlan -Name "IBB Plan" -StorageAccount (Get-MBSStorageAccount -ID aa3230dc-c20f-4ff3-83be-1cf6820de46b) -BackupVolumes AllVolumes -Schedule $schedule -BackupPlanCommonOption $commonOptions
    
    Create Image-Based backup plan.

    .EXAMPLE
    New-MBSBackupPlan -Name "File-level Plan" -StorageAccount (Get-MBSStorageAccount -ID aa3230dc-c20f-4ff3-83be-1cf6820de46b) -BackupFile "c:\temp\test.txt","c:\temp\test.ps1" -BackupDirectory "c:\Work","c:\Users" -Schedule $schedule -BackupPlanCommonOption $commonOptions

    Create File-Level backup plan.
    
    .EXAMPLE
    New-MBSBackupPlan -Name "HyperV plan" -StorageAccount (Get-MBSStorageAccount -ID aa3230dc-c20f-4ff3-83be-1cf6820de46b) -Schedule $DailySchedule -BackupVM All

    Create Hyper-V backup plan to backup all virtual machines.

    .EXAMPLE
    New-MBSBackupPlan -Name "MS SQL plan" -StorageAccount (Get-MBSStorageAccount -ID aa3230dc-c20f-4ff3-83be-1cf6820de46b) -Schedule $DailySchedule -InstanceName "host\sqlexpress" -MSSQLTlogSchedule $DiffSchedule -BackupPlanCommonOption $commonOptions -useSSL -useWinauth -BackupDB All

    Create MS SQL backup plan to backup all databases.

    .INPUTS
        None.

    .OUTPUTS
        None.

    .NOTES
        Author: Alex Volkov

    .LINK
        https://kb.msp360.com/managed-backup-service/powershell-module/cmdlets/backup-agent/new-mbsbackupplan/
    #>
    [CmdletBinding()]
    param (
        #
        [Parameter(Mandatory=$true, HelpMessage="Backup plan name.")]
        [string]
        $Name,
        # 
        [Parameter(Mandatory=$true, HelpMessage="Specify storage account object. Use Get-MBSStorageAccount cmdlet to list storages. Example: (Get-MBSStorageAccount -Name ""AWS S3"")", ParameterSetName='FileLevel')]
        [Parameter(Mandatory=$true, HelpMessage="Specify storage account object. Use Get-MBSStorageAccount cmdlet to list storages. Example: (Get-MBSStorageAccount -Name ""AWS S3"")", ParameterSetName='ImageBased')]
        [Parameter(Mandatory=$true, HelpMessage="Specify storage account object. Use Get-MBSStorageAccount cmdlet to list storages. Example: (Get-MBSStorageAccount -Name ""AWS S3"")", ParameterSetName='HyperV')]
        [Parameter(Mandatory=$true, HelpMessage="Specify storage account object. Use Get-MBSStorageAccount cmdlet to list storages. Example: (Get-MBSStorageAccount -Name ""AWS S3"")", ParameterSetName='MSSQL')]
        [MBS.Agent.StorageAccount]
        $StorageAccount,
        #
        [Parameter(Mandatory=$False, HelpMessage="Master password. Should be specified if configuration is protected by master password. Use -MasterPassword (ConvertTo-SecureString -string ""Your_Password"" -AsPlainText -Force)", ParameterSetName='FileLevel')]
        [Parameter(Mandatory=$False, HelpMessage="Master password. Should be specified if configuration is protected by master password. Use -MasterPassword (ConvertTo-SecureString -string ""Your_Password"" -AsPlainText -Force)", ParameterSetName='ImageBased')]
        [Parameter(Mandatory=$False, HelpMessage="Master password. Should be specified if configuration is protected by master password. Use -MasterPassword (ConvertTo-SecureString -string ""Your_Password"" -AsPlainText -Force)", ParameterSetName='HyperV')]
        [Parameter(Mandatory=$False, HelpMessage="Master password. Should be specified if configuration is protected by master password. Use -MasterPassword (ConvertTo-SecureString -string ""Your_Password"" -AsPlainText -Force)", ParameterSetName='MSSQL')]
        [SecureString]
        $MasterPassword,
        
        # ------------------------- Schedule -----------------------------
        [Parameter(Mandatory=$False, HelpMessage="Specify schedule. Use New-MBSPlanSchedule to create an object.", ParameterSetName='FileLevel')]
        [Parameter(Mandatory=$False, HelpMessage="Specify schedule. Use New-MBSPlanSchedule to create an object.", ParameterSetName='ImageBased')]
        [Parameter(Mandatory=$False, HelpMessage="Specify schedule. Use New-MBSPlanSchedule to create an object.", ParameterSetName='HyperV')]
        [Parameter(Mandatory=$False, HelpMessage="Specify schedule. Use New-MBSPlanSchedule to create an object.", ParameterSetName='MSSQL')]
        [MBS.Agent.Plan.Schedule]
        $Schedule,
        #
        [Parameter(Mandatory=$False, HelpMessage="Specify force full schedule. Use New-MBSPlanSchedule to create an object.", ParameterSetName='ImageBased')]
        [Parameter(Mandatory=$False, HelpMessage="Specify force full schedule. Use New-MBSPlanSchedule to create an object.", ParameterSetName='FileLevel')]
        [Parameter(Mandatory=$False, HelpMessage="Specify force full schedule. Use New-MBSPlanSchedule to create an object.", ParameterSetName='HyperV')]
        [MBS.Agent.Plan.Schedule]
        $FullSchedule,
        #
        [Parameter(Mandatory=$False, HelpMessage="Specify MS SQL Differential schedule. Use New-MBSPlanSchedule to create an object.", ParameterSetName='MSSQL')]
        [MBS.Agent.Plan.Schedule]
        $MSSQLDiffSchedule,
        #
        [Parameter(Mandatory=$False, HelpMessage="Specify MS SQL T-Log schedule. Use New-MBSPlanSchedule to create an object.", ParameterSetName='MSSQL')]
        [MBS.Agent.Plan.Schedule]
        $MSSQLTlogSchedule,

        # ------------------------- Schedule -----------------------------
        [Parameter(Mandatory=$true, HelpMessage="Specify plan common options. Use New-MBSBackupPlanCommonOption to create an object.", ParameterSetName='FileLevel')]
        [Parameter(Mandatory=$true, HelpMessage="Specify plan common options. Use New-MBSBackupPlanCommonOption to create an object.", ParameterSetName='ImageBased')]
        [Parameter(Mandatory=$true, HelpMessage="Specify plan common options. Use New-MBSBackupPlanCommonOption to create an object.", ParameterSetName='HyperV')]
        [Parameter(Mandatory=$true, HelpMessage="Specify plan common options. Use New-MBSBackupPlanCommonOption to create an object.", ParameterSetName='MSSQL')]
        [MBS.Agent.Plan.BackupPlanCommonOption]
        $BackupPlanCommonOption,
        
        #---------------------------- Block Level ------------------
        [Parameter(Mandatory=$False, HelpMessage='Use block level backup.', ParameterSetName='FileLevel')]
        [Switch]
        $UseBlockLevelBackup,
        # --------------------------- File Backup settings ------------

        [Parameter(Mandatory=$False, HelpMessage="Backup NTFS permissions", ParameterSetName='FileLevel')]
        [Switch]
        $BackupNTFSPermissions,
        #
        [Parameter(Mandatory=$False, HelpMessage='Force using VSS (Volume Shadow Copy Service).', ParameterSetName='FileLevel')]
        [Switch]
        $ForceUsingVSS,
        #
        [Parameter(Mandatory=$False, HelpMessage='Use share read/write mode on errors. Can help if file is open in share read/write mode.', ParameterSetName='FileLevel')]
        [Switch]
        $UseShareReadWriteModeOnError,
        #
        [Parameter(Mandatory=$False, HelpMessage="Delete files that have been deleted locally after specified number of days. Example: -DeleteLocallyDeletedFilesAfter 30.", ParameterSetName='FileLevel')]
        [timespan]
        $DeleteLocallyDeletedFilesAfter,
        #
        [Parameter(Mandatory=$False, HelpMessage='Backup empty folders.', ParameterSetName='FileLevel')]
        [Switch]
        $BackupEmptyFolders,
        #
        [Parameter(Mandatory=$False, HelpMessage="Backup files only after specific date. Example: ""06/09/19 7:43 AM""", ParameterSetName='FileLevel')]
        [datetime]
        $BackupOnlyAfter,
        #
        [Parameter(Mandatory=$False, HelpMessage='Exclude system and hidden files.', ParameterSetName='FileLevel')]
        [bool]
        $ExcludeSystemHiddenFiles=$true,
        #
        [Parameter(Mandatory=$False, HelpMessage="Skip folders. Example: -skipfolder ""bin,*temp*,My*""", ParameterSetName='FileLevel')]
        [string[]]
        $SkipFolder,
        #
        [Parameter(Mandatory=$False, HelpMessage="Include files mask. Example: -IncludeFilesMask ""*.doc,*.xls""", ParameterSetName='FileLevel')]
        [string[]]
        $IncludeFilesMask,
        #
        [Parameter(Mandatory=$False, HelpMessage="Exclude files mask. Example: -ExcludeFilesMask ""*.bak,*.tmp""", ParameterSetName='FileLevel')]
        [string[]]
        $ExcludeFilesMask,
        #
        [Parameter(Mandatory=$False, HelpMessage='Ignore errors path not found.', ParameterSetName='FileLevel')]
        [Switch]
        $IgnoreErrorPathNotFound,
        #
        [Parameter(Mandatory=$False, HelpMessage='Track deleted files data.', ParameterSetName='FileLevel')]
        [Switch]
        $TrackDeletedFiles,
        #
        [Parameter(Mandatory=$False, HelpMessage="Backup file", ParameterSetName='FileLevel')]
        [string[]]
        $BackupFile,
        #
        [Parameter(Mandatory=$False, HelpMessage="Backup directory", ParameterSetName='FileLevel')]
        [string[]]
        $BackupDirectory,
        #
        [Parameter(Mandatory=$False, HelpMessage='Specify to generate detailed report.', ParameterSetName='FileLevel')]
        [Parameter(Mandatory=$False, HelpMessage='Specify to generate detailed report.', ParameterSetName='MSSQL')]
        [Switch]
        $GenerateDetailedReport,  
        # ------------------------- Image-Based --------------------------------------
        [Parameter(Mandatory=$true, HelpMessage="Backup Volumes type", ParameterSetName='ImageBased')]
        [MBS.Agent.Plan.BackupVolumeType]
        $BackupVolumes,
        #
        [Parameter(Mandatory=$False, HelpMessage="Backup selected volumes with the specified ids.", ParameterSetName='ImageBased')]
        [string[]]
        $Volumes,
        #
        [Parameter(Mandatory=$False, HelpMessage='Disable VSS, use direct access to NTFS volume.', ParameterSetName='ImageBased')]
        [Switch]
        $DisableVSS,
        #
        [Parameter(Mandatory=$False, HelpMessage='Ignore bad sectors.', ParameterSetName='ImageBased')]
        [bool]
        $IgnoreBadSectors=$true,
        #
        [Parameter(Mandatory=$False, HelpMessage='Use system VSS provider.', ParameterSetName='ImageBased')]
        [Switch]
        $UseSystemVSS,
        #
        [Parameter(Mandatory=$False, HelpMessage='Disable Synthetic Full backup.', ParameterSetName='ImageBased')]
        [Switch]
        $DisableSyntheticFull,
        #
        [Parameter(Mandatory=$False, HelpMessage="Prefetch block count (0 - 100, 0 without prefetch)", ParameterSetName='ImageBased')]
        [Int32][ValidateRange(0,100)]
        $PrefetchBlockCount,
        #
        [Parameter(Mandatory=$False, HelpMessage="Block size. Possible values: 128, 256, 512, 1024", ParameterSetName='ImageBased')]
        [ValidateSet("128", "256", "512", "1024")]
        [string]
        $BlockSize,
        # ------------------------- Hyper-V --------------------------------------
        [Parameter(Mandatory=$true, HelpMessage="Backup Virtual Machine type", ParameterSetName='HyperV')]
        #[ValidateSet("All", "OnlyRunning", "SelectedVM")]
        [MBS.Agent.Plan.BackupVMType]
        $BackupVM,
        #
        [Parameter(Mandatory=$False, HelpMessage="Backup selected virtual machines only the specified names.", ParameterSetName='HyperV')]
        [string[]]
        $VirtualMachine,
        # ------------------------- MS SQL --------------------------------------
        [Parameter(Mandatory=$true, HelpMessage="MS SQL server instance name", ParameterSetName='MSSQL')]
        [string]
        $InstanceName,
        #
        [Parameter(Mandatory=$False, HelpMessage='Use secure connection (SSL/TLS).', ParameterSetName='MSSQL')]
        [Switch]
        $useSSL,
        #
        [Parameter(Mandatory=$False, HelpMessage='Use Windows authentication.', ParameterSetName='MSSQL')]
        [Switch]
        $useWinauth,
        #
        [Parameter(Mandatory=$False, HelpMessage="MS SQL server user name", ParameterSetName='MSSQL')]
        [string]
        $UserName,
        #
        [Parameter(Mandatory=$False, HelpMessage="MS SQL server password", ParameterSetName='MSSQL')]
        [Securestring]
        $Password,
        #
        [Parameter(Mandatory=$False, HelpMessage="Database selection type", ParameterSetName='MSSQL')]
        #[ValidateSet("All", "User", "Selected")]
        [MBS.Agent.Plan.DatabaseSelectionType]
        $BackupDB,
        #
        [Parameter(Mandatory=$False, HelpMessage="Select backup database.", ParameterSetName='MSSQL')]
        [string[]]
        $Databases,
        #
        [Parameter(Mandatory=$False, HelpMessage='Use copy only.', ParameterSetName='MSSQL')]
        [Switch]
        $CopyOnly,
        #
        [Parameter(Mandatory=$False, HelpMessage='Verify.', ParameterSetName='MSSQL')]
        [Switch]
        $Verify

    )
    
    begin {
        if (-not($CBB = Get-MBSAgent)) {
            Break
        }
        try {
            if ((Get-MBSAgentSetting -ErrorAction SilentlyContinue).MasterPassword -ne "" -and $null -ne (Get-MBSAgentSetting -ErrorAction SilentlyContinue).MasterPassword -and -not $MasterPassword) {
                $MasterPassword = Read-Host Master Password -AsSecureString
            }
        }
        catch {
            
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
                Realtime {$ScheduleCli += " -every$prefix real-time"}
                Default {
                    Write-Host "Schedule frequency is not specified."
                    Break
                }
            }
            if ($Schedule.At){$ScheduleCli += " -at$prefix ""$($Schedule.At.ToString())"""}
            if ($Schedule.DayOfMonth){$ScheduleCli += " -day$prefix $($Schedule.DayOfMonth)"}
            if ($Schedule.DayOfWeek){$ScheduleCli += " -weekday$prefix "+(($Schedule.DayOfWeek | foreach-object -Begin {$weekdaylocal = @()} -Process{$weekdaylocal += $_.ToString().Substring(0,2)} -End {return $weekdaylocal.ToLower()}) -join ",")}
            if ($Schedule.Weeknumber){$ScheduleCli += " -weeknumber$prefix $($Schedule.Weeknumber)"}
            if ($Schedule.OccursFrom){$ScheduleCli += " -dailyFrom$prefix $($Schedule.OccursFrom.ToString('hh\:mm'))"}
            if ($Schedule.OccursTo){$ScheduleCli += " -dailyTill$prefix $($Schedule.OccursTo.ToString('hh\:mm'))"}
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
            if ($Schedule.RepeatInterval){$ScheduleCli += " -repeatEvery$prefix $($Schedule.RepeatInterval)"}
            if ($Schedule.RepeatStartDate){$ScheduleCli += " -repeatStartDate$prefix ""$($Schedule.RepeatStartDate.ToString())"""}   

            return $Schedulecli

        }
        function Set-Argument {
            if ($Name){$Argument += " -n ""$Name"""}
            if($BackupPlanCommonOption.StorageClass -ne 'Standard'){
                $Argument += " -a ""$($StorageAccount.DisplayName)"" -sc ""$($BackupPlanCommonOption.StorageClass)"""
            }else{
                $Argument += " -aid ""$($StorageAccount.ID)"""
            }

            if($Schedule){$Argument += Set-Schedule -Schedule $Schedule}
            if($FullSchedule){$Argument += Set-Schedule -Schedule $FullSchedule -Prefix "ForceFull"}
            if($MSSQLDiffSchedule){$Argument += Set-Schedule -Schedule $MSSQLDiffSchedule -Prefix "Diff"}
            if($MSSQLTlogSchedule){$Argument += Set-Schedule -Schedule $MSSQLTlogSchedule -Prefix "TLog"}
            
            
            if($BackupPlanCommonOption.SyncRepositoryBeforeRun){$Argument += " -sync yes"}#else{$Argument += " -sync no"}
            if($BackupPlanCommonOption.UseServerSideEncryption){$Argument += " -sse yes"}else{$Argument += " -sse no"}
            if($Null -ne $BackupPlanCommonOption.EncryptionPassword){$Argument += " -ea $($BackupPlanCommonOption.EncryptionAlgorithm)"}
            if($BackupPlanCommonOption.EncryptionPassword){$Argument += " -ep """+([System.Runtime.InteropServices.Marshal]::PtrToStringAuto([System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($BackupPlanCommonOption.EncryptionPassword)))+""""}
            if($BackupPlanCommonOption.UseCompression){$Argument += " -c yes"}else{$Argument += " -c no"}
            
            if($BackupPlanCommonOption.SaveBackupPlanConfiguration){
                $Argument += " -sp yes"
            }else{
                $Argument += " -sp no"
            }
            if($BackupPlanCommonOption.StopIfPlanRunsFor.TotalMinutes -gt 0){$Argument += " -stopAfter $( [math]::Round($BackupPlanCommonOption.StopIfPlanRunsFor.TotalHours)):$($BackupPlanCommonOption.StopIfPlanRunsFor.Minutes)"}
            if($BackupPlanCommonOption.RunMissedPlanImmediately){$Argument += " -runMissed yes"}else{$Argument += " -runMissed no"}
            if($BackupPlanCommonOption.PreActionCommand){$Argument += " -preAction $($BackupPlanCommonOption.PreActionCommand)"}
            if($BackupPlanCommonOption.PreActionContinueAnyway){$Argument += " -pac yes"}else{$Argument += " -pac no"}
            if($BackupPlanCommonOption.PostActionCommand){$Argument += " -postAction $($BackupPlanCommonOption.PostActionCommand)"}
            if($BackupPlanCommonOption.PostActionRunAnyway){$Argument += " -paa yes"}else{$Argument += " -paa no"}
            if($BackupPlanCommonOption.ResultEmailNotification){$Argument += " -notification $($BackupPlanCommonOption.ResultEmailNotification)"}
            if($BackupPlanCommonOption.AddEventToWindowsLog){$Argument += " -winLog $($BackupPlanCommonOption.AddEventToWindowsLog)"}
            if($Null -ne $BackupPlanCommonOption.KeepVersionPeriod){
                if($BackupPlanCommonOption.KeepVersionPeriodValue.TotalDays -gt 0){
                    $Argument += " -purge $([Math]::Round($BackupPlanCommonOption.KeepVersionPeriod.TotalDays))d"
                }else{
                    $Argument += " -purge no"
                }
            }
            if($Null -ne $BackupPlanCommonOption.KeepNumberOfVersion){
                if($BackupPlanCommonOption.KeepNumberOfVersion -gt 0){
                    $Argument += " -keep $($BackupPlanCommonOption.KeepNumberOfVersion)"
                }elseif ($BackupPlanCommonOption.KeepNumberOfVersion -eq 0) {
                    $Argument += " -keep all"
                }
            }
            if($BackupPlanCommonOption.KeepLastVersion){$Argument += " -keepLastVersion yes"}
            if($Null -ne $BackupPlanCommonOption.DelayPurgePeriodValue){
                if($BackupPlanCommonOption.DelayPurgePeriodValue.TotalDays -gt 0){
                    $Argument += " -delayPurge $([Math]::Round($BackupPlanCommonOption.DelayPurgePeriod.TotalDays))d"
                }else{
                    $Argument += " -delayPurge no"
                }
            }

            switch ($PSCmdlet.ParameterSetName){
                'FileLevel' {
                # --------- File-Level ------------
                    #$Argument += " addBackupPlan"
                    if ($useBlockLevelBackup) {$Argument += " -useBlockLevelBackup yes"}
                    if ($BackupNTFSPermissions) {$Argument += " -ntfs yes"}
                    if ($ForceUsingVSS) {$Argument += " -vss yes"}
                    if ($UseShareReadWriteModeOnError) {$Argument += " -sharerw yes"}
                    if ($DeleteLocallyDeletedFilesAfter){$Argument += " -df $($DeleteLocallyDeletedFilesAfter.TotalDays)"}
                    if ($BackupEmptyFolders) {$Argument += " -bef yes"}
                    if ($BackupOnlyAfter){$Argument += " -oa $($BackupOnlyAfter.ToString('MM/dd/yyyy HH:mm tt'))"}
                    if ($ExcludeSystemHiddenFiles) {
                        $Argument += " -es yes"
                    }else{
                        $Argument += " -es no"
                    }
                    if ($SkipFolders){$Argument += " -skipf $($SkipFolders -join ',')"}
                    if ($IncludeFilesMask){$Argument += " -ifm $($IncludeFilesMask -join ',')"}
                    if ($ExcludeFilesMask){$Argument += " -efm $($ExcludeFilesMask -join ',')"}
                    if ($IgnoreErrorPathNotFound) {$Argument += " -iepnf yes"}
                    if ($TrackDeletedFiles) {$Argument += " -trackdeleted yes"}
                    if ($ExcludeFile){$Argument += " -rf ""$ExcludeFile"""}
                    if ($ExcludeDirectory){$Argument += " -rd ""$ExcludeDirectory"""}
                    if ($BackupFile){$Argument += " -f "+'"{0}"' -f ($BackupFile -join '" -f "')}
                    if ($BackupDirectory){$Argument += " -d "+'"{0}"' -f ($BackupDirectory -join '" -d "')}
                    if ($GenerateDetailedReport) {
                        $Argument += " -dr yes"
                    }else{
                        $Argument += " -dr no"
                    }
                }   

                'ImageBased' {
                    # ------------- Image-Based -------------
                    #$Argument += " addBackupIBBPlan"    
                    switch ($BackupVolumes) {
                        'AllVolumes' {$Argument += " -av"}
                        'SystemRequired' {$Argument += " -r"}
                        'SelectedVolumes' {
                            $Volumes | ForEach-Object -Process {
                                $Argument += " -v $_"
                            }
                        }
                        Default {}
                    }

                    if ($disableVSS) {$Argument += " -disableVSS yes"}
                    if ($ignoreBadSectors) {
                        $Argument += " -ignoreBadSectors yes"
                    }else{
                        $Argument += " -ignoreBadSectors no"
                    }
                    if ($useSystemVSS) {$Argument += " -useSystemVSS yes"}
                    if ($DisableSyntheticFull) {$Argument += " -syntheticFull no"}
                    if ($prefetchBlockCount){$Argument += " -prefetchBlockCount $prefetchBlockCount"}
                    if ($blockSize){$Argument += " -blockSize $blockSize"}
                }
                'HyperV' { 
                    # ------------- Hyper-V -------------
                    #$Argument += " addHyperVPlan"
                    switch ($BackupVM) {
                        'All' {$Argument += " -all"}
                        'OnlyRunning' {$Argument += " -r"}
                        'SelectedVM' {$Argument += " -v "+"'$($VirtualMachine -join "' -v '")'"}
                        Default {}
                    }
                }  
                'MSSQL' {
                    # ------------- MS SQL -------------
                    #$Argument += " addBackupMSSQLPlan"
                    if ($InstanceName){$Argument += " -instancename $InstanceName"}
                    if ($useSSL){$Argument += " -secure"}
                    if ($useWinauth){$Argument += " -winauth yes"}
                    if ($UserName){$Argument += " -username $UserName"}
                    if ($Password){$Argument += " -password """+([System.Runtime.InteropServices.Marshal]::PtrToStringAuto([System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($Password)))+""""}
                    switch ($BackupDB) {
                        'All' {$Argument += " -databases All"}
                        'User' {$Argument += " -databases User"}
                        'SelectedDB' {$Argument += " -databases ""$($Databases -join  ";")"""}
                        Default {}
                    }
                    if ($CopyOnly){$Argument += " -copyonly yes"}
                    if ($Verify){$Argument += " -verify yes"}
                }
                Default {}
            }

            Return $Argument
        }

        switch ($PSCmdlet.ParameterSetName){
            'FileLevel' {$Arguments += " addBackupPlan"}
            'ImageBased' {$Arguments += " addBackupIBBPlan"}
            'HyperV' {$Arguments += " addHyperVPlan"}
            'MSSQL' {$Arguments += " addBackupMSSQLPlan"}
            Default {}
        }

        $Arguments += Set-Argument

        (Start-MBSProcess -CMDPath $CBB.CBBCLIPath -CMDArguments $Arguments -Output short -MasterPassword $MasterPassword).result
    }
    
    end {
        
    }
}
# SIG # Begin signature block
# MIIbfAYJKoZIhvcNAQcCoIIbbTCCG2kCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCAaJI3yshi5mSIq
# PwjkbQh/mAl3dfnMxTNRgbGioM6d+KCCC04wggVmMIIETqADAgECAhEA3VtfmfWb
# K32tKkM2xJo7CjANBgkqhkiG9w0BAQsFADB9MQswCQYDVQQGEwJHQjEbMBkGA1UE
# CBMSR3JlYXRlciBNYW5jaGVzdGVyMRAwDgYDVQQHEwdTYWxmb3JkMRowGAYDVQQK
# ExFDT01PRE8gQ0EgTGltaXRlZDEjMCEGA1UEAxMaQ09NT0RPIFJTQSBDb2RlIFNp
# Z25pbmcgQ0EwHhcNMTcxMjE0MDAwMDAwWhcNMjExMjE0MjM1OTU5WjCBqDELMAkG
# A1UEBhMCQ1kxDTALBgNVBBEMBDEwOTUxETAPBgNVBAgMCExlZmNvc2lhMRAwDgYD
# VQQHDAdOaWNvc2lhMRUwEwYDVQQJDAxMYW1wb3VzYXMsIDExJjAkBgNVBAoMHVRy
# aWNoaWxpYSBDb25zdWx0YW50cyBMaW1pdGVkMSYwJAYDVQQDDB1UcmljaGlsaWEg
# Q29uc3VsdGFudHMgTGltaXRlZDCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoC
# ggEBAJC5Ak9MZHfMGygnL9B+2OcFRvnTeYAJPa4tJS/ES3eSBBge9BiBUa6f+QlX
# lIjt+NBD9QrewScUj9EnaguKzc8NFonBJAgT43jD5rCuuj3GljTIHftLDF9vgetf
# 7KUYhwMypqxRP8pLMAuXzIzw5Yxjh1Quy92dZyJYpOuGbz1PQVRMj2fhRqeerP4J
# OiRktwnykjrxDsRNm+Iuas1BM+vjVA7B9Cj0Wf5NsMxSegJezvs0yqwHrsngEQrY
# GXDKHstfsxd8KM5LxJdYN1neIAO8v6AuM6yjQT1z1ZwVSCHu2swNCA3T3M26fkk9
# 9TIZZI/LvfR++FJCUvJkPoPbOKUCAwEAAaOCAbMwggGvMB8GA1UdIwQYMBaAFCmR
# YP+KTfrr+aZquM/55ku9Sc4SMB0GA1UdDgQWBBRqlxdnVxjIxF6fnOYUd7LOYeNe
# rjAOBgNVHQ8BAf8EBAMCB4AwDAYDVR0TAQH/BAIwADATBgNVHSUEDDAKBggrBgEF
# BQcDAzARBglghkgBhvhCAQEEBAMCBBAwRgYDVR0gBD8wPTA7BgwrBgEEAbIxAQIB
# AwIwKzApBggrBgEFBQcCARYdaHR0cHM6Ly9zZWN1cmUuY29tb2RvLm5ldC9DUFMw
# QwYDVR0fBDwwOjA4oDagNIYyaHR0cDovL2NybC5jb21vZG9jYS5jb20vQ09NT0RP
# UlNBQ29kZVNpZ25pbmdDQS5jcmwwdAYIKwYBBQUHAQEEaDBmMD4GCCsGAQUFBzAC
# hjJodHRwOi8vY3J0LmNvbW9kb2NhLmNvbS9DT01PRE9SU0FDb2RlU2lnbmluZ0NB
# LmNydDAkBggrBgEFBQcwAYYYaHR0cDovL29jc3AuY29tb2RvY2EuY29tMCQGA1Ud
# EQQdMBuBGWNvbnRhY3RAY2xvdWRiZXJyeWxhYi5jb20wDQYJKoZIhvcNAQELBQAD
# ggEBAEeInauUdqKYV4ncwGMqz5+frptASCXVnCMLI7j3JK0KCzmJkwHHmkIk3P0A
# Rzedj5+1aFuXANtT42IACVf00tqq0IHO2KT2vHHJHNnx3ht6kMcCmKmUlnkZMjEK
# +0WJD0JSP7lBRQBf5QJpDLmpbBTVvlbe/3nzpUZ95O5reaPekoQ1xC4Ossu06ba0
# djKhwk0HgeqZz7ZruWOVY/YRDfnlZ3it5+4Ck2JTXIVcUcXzT/ZdwNTkUiIqmh4T
# HwOj+k/Yej7Q13ILWTNZMELs3Iec6FSSGXUijHV65pPI0dUXnq8pWYMfutgwlBaL
# 78yXl4ihf46TXsnAMottH+ld8lAwggXgMIIDyKADAgECAhAufIfMDpNKUv6U/Ry3
# zTSvMA0GCSqGSIb3DQEBDAUAMIGFMQswCQYDVQQGEwJHQjEbMBkGA1UECBMSR3Jl
# YXRlciBNYW5jaGVzdGVyMRAwDgYDVQQHEwdTYWxmb3JkMRowGAYDVQQKExFDT01P
# RE8gQ0EgTGltaXRlZDErMCkGA1UEAxMiQ09NT0RPIFJTQSBDZXJ0aWZpY2F0aW9u
# IEF1dGhvcml0eTAeFw0xMzA1MDkwMDAwMDBaFw0yODA1MDgyMzU5NTlaMH0xCzAJ
# BgNVBAYTAkdCMRswGQYDVQQIExJHcmVhdGVyIE1hbmNoZXN0ZXIxEDAOBgNVBAcT
# B1NhbGZvcmQxGjAYBgNVBAoTEUNPTU9ETyBDQSBMaW1pdGVkMSMwIQYDVQQDExpD
# T01PRE8gUlNBIENvZGUgU2lnbmluZyBDQTCCASIwDQYJKoZIhvcNAQEBBQADggEP
# ADCCAQoCggEBAKaYkGN3kTR/itHd6WcxEevMHv0xHbO5Ylc/k7xb458eJDIRJ2u8
# UZGnz56eJbNfgagYDx0eIDAO+2F7hgmz4/2iaJ0cLJ2/cuPkdaDlNSOOyYruGgxk
# x9hCoXu1UgNLOrCOI0tLY+AilDd71XmQChQYUSzm/sES8Bw/YWEKjKLc9sMwqs0o
# GHVIwXlaCM27jFWM99R2kDozRlBzmFz0hUprD4DdXta9/akvwCX1+XjXjV8QwkRV
# PJA8MUbLcK4HqQrjr8EBb5AaI+JfONvGCF1Hs4NB8C4ANxS5Eqp5klLNhw972GIp
# pH4wvRu1jHK0SPLj6CH5XkxieYsCBp9/1QsCAwEAAaOCAVEwggFNMB8GA1UdIwQY
# MBaAFLuvfgI9+qbxPISOre44mOzZMjLUMB0GA1UdDgQWBBQpkWD/ik366/mmarjP
# +eZLvUnOEjAOBgNVHQ8BAf8EBAMCAYYwEgYDVR0TAQH/BAgwBgEB/wIBADATBgNV
# HSUEDDAKBggrBgEFBQcDAzARBgNVHSAECjAIMAYGBFUdIAAwTAYDVR0fBEUwQzBB
# oD+gPYY7aHR0cDovL2NybC5jb21vZG9jYS5jb20vQ09NT0RPUlNBQ2VydGlmaWNh
# dGlvbkF1dGhvcml0eS5jcmwwcQYIKwYBBQUHAQEEZTBjMDsGCCsGAQUFBzAChi9o
# dHRwOi8vY3J0LmNvbW9kb2NhLmNvbS9DT01PRE9SU0FBZGRUcnVzdENBLmNydDAk
# BggrBgEFBQcwAYYYaHR0cDovL29jc3AuY29tb2RvY2EuY29tMA0GCSqGSIb3DQEB
# DAUAA4ICAQACPwI5w+74yjuJ3gxtTbHxTpJPr8I4LATMxWMRqwljr6ui1wI/zG8Z
# wz3WGgiU/yXYqYinKxAa4JuxByIaURw61OHpCb/mJHSvHnsWMW4j71RRLVIC4nUI
# BUzxt1HhUQDGh/Zs7hBEdldq8d9YayGqSdR8N069/7Z1VEAYNldnEc1PAuT+89r8
# dRfb7Lf3ZQkjSR9DV4PqfiB3YchN8rtlTaj3hUUHr3ppJ2WQKUCL33s6UTmMqB9w
# ea1tQiCizwxsA4xMzXMHlOdajjoEuqKhfB/LYzoVp9QVG6dSRzKp9L9kR9GqH1NO
# MjBzwm+3eIKdXP9Gu2siHYgL+BuqNKb8jPXdf2WMjDFXMdA27Eehz8uLqO8cGFjF
# BnfKS5tRr0wISnqP4qNS4o6OzCbkstjlOMKo7caBnDVrqVhhSgqXtEtCtlWdvpnn
# cG1Z+G0qDH8ZYF8MmohsMKxSCZAWG/8rndvQIMqJ6ih+Mo4Z33tIMx7XZfiuyfiD
# FJN2fWTQjs6+NX3/cjFNn569HmwvqI8MBlD7jCezdsn05tfDNOKMhyGGYf6/VXTh
# IXcDCmhsu+TJqebPWSXrfOxFDnlmaOgizbjvmIVNlhE8CYrQf7woKBP7aspUjZJc
# zcJlmAaezkhb1LU3k0ZBfAfdz/pD77pnYf99SeC7MH1cgOPmFjlLpzGCD4Qwgg+A
# AgEBMIGSMH0xCzAJBgNVBAYTAkdCMRswGQYDVQQIExJHcmVhdGVyIE1hbmNoZXN0
# ZXIxEDAOBgNVBAcTB1NhbGZvcmQxGjAYBgNVBAoTEUNPTU9ETyBDQSBMaW1pdGVk
# MSMwIQYDVQQDExpDT01PRE8gUlNBIENvZGUgU2lnbmluZyBDQQIRAN1bX5n1myt9
# rSpDNsSaOwowDQYJYIZIAWUDBAIBBQCgfDAQBgorBgEEAYI3AgEMMQIwADAZBgkq
# hkiG9w0BCQMxDAYKKwYBBAGCNwIBBDAcBgorBgEEAYI3AgELMQ4wDAYKKwYBBAGC
# NwIBFTAvBgkqhkiG9w0BCQQxIgQg/aR6qlfVzns/hQqCq6QrmU/ThL/ITCfRmO/q
# +sLzI4MwDQYJKoZIhvcNAQEBBQAEggEAjRDMetg78+3FeZHKGiEYsKtXyuhTa5U0
# oX01z45GIMj1eKCFLvuVoxZv3VGEL0XDPNsMtiwNfSyCqhqJV0cy8Z1OmyQsNAlb
# 3f5RCwEWLF3CNNBz+/OR0sBRleq9Y/s2v6ZWJM0VbouYtHsMMWF/1L1UGidGTR6Y
# Ehlt99042Xk1UHhLAzr21+GHQTput3zKkzcff/BPFY4pb45SgoObaLpoasc+jYB6
# cfkkeCVN9995Qzcx3JPAtZFsqb7oKvsDkiwEPtkLavGWN4/KT0URdPuqjhghZ7F/
# FEnH6kIqZizamEyn0VuKIzG5UaJ5incTAHKG7vYHds/y7FnB9cKLJqGCDUQwgg1A
# BgorBgEEAYI3AwMBMYINMDCCDSwGCSqGSIb3DQEHAqCCDR0wgg0ZAgEDMQ8wDQYJ
# YIZIAWUDBAIBBQAwdwYLKoZIhvcNAQkQAQSgaARmMGQCAQEGCWCGSAGG/WwHATAx
# MA0GCWCGSAFlAwQCAQUABCCyPAiBG75gDJMD6TLjmTT9jbrkitTeUTi6b8h9FJ/p
# yAIQL/0GT3PfMFTBGX2uZWJs1RgPMjAyMTAxMjYwODExMjlaoIIKNzCCBP4wggPm
# oAMCAQICEA1CSuC+Ooj/YEAhzhQA8N0wDQYJKoZIhvcNAQELBQAwcjELMAkGA1UE
# BhMCVVMxFTATBgNVBAoTDERpZ2lDZXJ0IEluYzEZMBcGA1UECxMQd3d3LmRpZ2lj
# ZXJ0LmNvbTExMC8GA1UEAxMoRGlnaUNlcnQgU0hBMiBBc3N1cmVkIElEIFRpbWVz
# dGFtcGluZyBDQTAeFw0yMTAxMDEwMDAwMDBaFw0zMTAxMDYwMDAwMDBaMEgxCzAJ
# BgNVBAYTAlVTMRcwFQYDVQQKEw5EaWdpQ2VydCwgSW5jLjEgMB4GA1UEAxMXRGln
# aUNlcnQgVGltZXN0YW1wIDIwMjEwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEK
# AoIBAQDC5mGEZ8WK9Q0IpEXKY2tR1zoRQr0KdXVNlLQMULUmEP4dyG+RawyW5xpc
# SO9E5b+bYc0VkWJauP9nC5xj/TZqgfop+N0rcIXeAhjzeG28ffnHbQk9vmp2h+mK
# vfiEXR52yeTGdnY6U9HR01o2j8aj4S8bOrdh1nPsTm0zinxdRS1LsVDmQTo3Vobc
# kyON91Al6GTm3dOPL1e1hyDrDo4s1SPa9E14RuMDgzEpSlwMMYpKjIjF9zBa+RSv
# FV9sQ0kJ/SYjU/aNY+gaq1uxHTDCm2mCtNv8VlS8H6GHq756WwogL0sJyZWnjbL6
# 1mOLTqVyHO6fegFz+BnW/g1JhL0BAgMBAAGjggG4MIIBtDAOBgNVHQ8BAf8EBAMC
# B4AwDAYDVR0TAQH/BAIwADAWBgNVHSUBAf8EDDAKBggrBgEFBQcDCDBBBgNVHSAE
# OjA4MDYGCWCGSAGG/WwHATApMCcGCCsGAQUFBwIBFhtodHRwOi8vd3d3LmRpZ2lj
# ZXJ0LmNvbS9DUFMwHwYDVR0jBBgwFoAU9LbhIB3+Ka7S5GGlsqIlssgXNW4wHQYD
# VR0OBBYEFDZEho6kurBmvrwoLR1ENt3janq8MHEGA1UdHwRqMGgwMqAwoC6GLGh0
# dHA6Ly9jcmwzLmRpZ2ljZXJ0LmNvbS9zaGEyLWFzc3VyZWQtdHMuY3JsMDKgMKAu
# hixodHRwOi8vY3JsNC5kaWdpY2VydC5jb20vc2hhMi1hc3N1cmVkLXRzLmNybDCB
# hQYIKwYBBQUHAQEEeTB3MCQGCCsGAQUFBzABhhhodHRwOi8vb2NzcC5kaWdpY2Vy
# dC5jb20wTwYIKwYBBQUHMAKGQ2h0dHA6Ly9jYWNlcnRzLmRpZ2ljZXJ0LmNvbS9E
# aWdpQ2VydFNIQTJBc3N1cmVkSURUaW1lc3RhbXBpbmdDQS5jcnQwDQYJKoZIhvcN
# AQELBQADggEBAEgc3LXpmiO85xrnIA6OZ0b9QnJRdAojR6OrktIlxHBZvhSg5SeB
# pU0UFRkHefDRBMOG2Tu9/kQCZk3taaQP9rhwz2Lo9VFKeHk2eie38+dSn5On7UOe
# e+e03UEiifuHokYDTvz0/rdkd2NfI1Jpg4L6GlPtkMyNoRdzDfTzZTlwS/Oc1np7
# 2gy8PTLQG8v1Yfx1CAB2vIEO+MDhXM/EEXLnG2RJ2CKadRVC9S0yOIHa9GCiurRS
# +1zgYSQlT7LfySmoc0NR2r1j1h9bm/cuG08THfdKDXF+l7f0P4TrweOjSaH6zqe/
# Vs+6WXZhiV9+p7SOZ3j5NpjhyyjaW4emii8wggUxMIIEGaADAgECAhAKoSXW1jIb
# fkHkBdo2l8IVMA0GCSqGSIb3DQEBCwUAMGUxCzAJBgNVBAYTAlVTMRUwEwYDVQQK
# EwxEaWdpQ2VydCBJbmMxGTAXBgNVBAsTEHd3dy5kaWdpY2VydC5jb20xJDAiBgNV
# BAMTG0RpZ2lDZXJ0IEFzc3VyZWQgSUQgUm9vdCBDQTAeFw0xNjAxMDcxMjAwMDBa
# Fw0zMTAxMDcxMjAwMDBaMHIxCzAJBgNVBAYTAlVTMRUwEwYDVQQKEwxEaWdpQ2Vy
# dCBJbmMxGTAXBgNVBAsTEHd3dy5kaWdpY2VydC5jb20xMTAvBgNVBAMTKERpZ2lD
# ZXJ0IFNIQTIgQXNzdXJlZCBJRCBUaW1lc3RhbXBpbmcgQ0EwggEiMA0GCSqGSIb3
# DQEBAQUAA4IBDwAwggEKAoIBAQC90DLuS82Pf92puoKZxTlUKFe2I0rEDgdFM1EQ
# fdD5fU1ofue2oPSNs4jkl79jIZCYvxO8V9PD4X4I1moUADj3Lh477sym9jJZ/l9l
# P+Cb6+NGRwYaVX4LJ37AovWg4N4iPw7/fpX786O6Ij4YrBHk8JkDbTuFfAnT7l3I
# mgtU46gJcWvgzyIQD3XPcXJOCq3fQDpct1HhoXkUxk0kIzBdvOw8YGqsLwfM/fDq
# R9mIUF79Zm5WYScpiYRR5oLnRlD9lCosp+R1PrqYD4R/nzEU1q3V8mTLex4F0IQZ
# chfxFwbvPc3WTe8GQv2iUypPhR3EHTyvz9qsEPXdrKzpVv+TAgMBAAGjggHOMIIB
# yjAdBgNVHQ4EFgQU9LbhIB3+Ka7S5GGlsqIlssgXNW4wHwYDVR0jBBgwFoAUReui
# r/SSy4IxLVGLp6chnfNtyA8wEgYDVR0TAQH/BAgwBgEB/wIBADAOBgNVHQ8BAf8E
# BAMCAYYwEwYDVR0lBAwwCgYIKwYBBQUHAwgweQYIKwYBBQUHAQEEbTBrMCQGCCsG
# AQUFBzABhhhodHRwOi8vb2NzcC5kaWdpY2VydC5jb20wQwYIKwYBBQUHMAKGN2h0
# dHA6Ly9jYWNlcnRzLmRpZ2ljZXJ0LmNvbS9EaWdpQ2VydEFzc3VyZWRJRFJvb3RD
# QS5jcnQwgYEGA1UdHwR6MHgwOqA4oDaGNGh0dHA6Ly9jcmw0LmRpZ2ljZXJ0LmNv
# bS9EaWdpQ2VydEFzc3VyZWRJRFJvb3RDQS5jcmwwOqA4oDaGNGh0dHA6Ly9jcmwz
# LmRpZ2ljZXJ0LmNvbS9EaWdpQ2VydEFzc3VyZWRJRFJvb3RDQS5jcmwwUAYDVR0g
# BEkwRzA4BgpghkgBhv1sAAIEMCowKAYIKwYBBQUHAgEWHGh0dHBzOi8vd3d3LmRp
# Z2ljZXJ0LmNvbS9DUFMwCwYJYIZIAYb9bAcBMA0GCSqGSIb3DQEBCwUAA4IBAQBx
# lRLpUYdWac3v3dp8qmN6s3jPBjdAhO9LhL/KzwMC/cWnww4gQiyvd/MrHwwhWiq3
# BTQdaq6Z+CeiZr8JqmDfdqQ6kw/4stHYfBli6F6CJR7Euhx7LCHi1lssFDVDBGiy
# 23UC4HLHmNY8ZOUfSBAYX4k4YU1iRiSHY4yRUiyvKYnleB/WCxSlgNcSR3CzddWT
# hZN+tpJn+1Nhiaj1a5bA9FhpDXzIAbG5KHW3mWOFIoxhynmUfln8jA/jb7UBJrZs
# pe6HUSHkWGCbugwtK22ixH67xCUrRwIIfEmuE7bhfEJCKMYYVs9BNLZmXbZ0e/VW
# MyIvIjayS6JKldj1po5SMYICTTCCAkkCAQEwgYYwcjELMAkGA1UEBhMCVVMxFTAT
# BgNVBAoTDERpZ2lDZXJ0IEluYzEZMBcGA1UECxMQd3d3LmRpZ2ljZXJ0LmNvbTEx
# MC8GA1UEAxMoRGlnaUNlcnQgU0hBMiBBc3N1cmVkIElEIFRpbWVzdGFtcGluZyBD
# QQIQDUJK4L46iP9gQCHOFADw3TANBglghkgBZQMEAgEFAKCBmDAaBgkqhkiG9w0B
# CQMxDQYLKoZIhvcNAQkQAQQwHAYJKoZIhvcNAQkFMQ8XDTIxMDEyNjA4MTEyOVow
# KwYLKoZIhvcNAQkQAgwxHDAaMBgwFgQU4deCqOGRvu9ryhaRtaq0lKYkm/MwLwYJ
# KoZIhvcNAQkEMSIEIMzHCbAM0cspm3xM1hBlNDZGp6rlmk4A2CkqARuloF/cMA0G
# CSqGSIb3DQEBAQUABIIBAHhU86RRMVra+IKFBaafhgTZaPBIXpa/2DfKAz2CiIY5
# J4S2YMoDLtsIKnvMBV+g3dV9D6oAkFnIX7MfvR77q2Dx8zGqp9GEB4D7Lsdf6ZJx
# xM6pDJjq6G4FvUDsk6OFSppRicDdngziDBpjYUCw6FbrZ4Z0rNcDw193aLBgp0GE
# TDAv12qdfnewAweN6f1GEAWoY48mAVoisW0WEbYDRQukxphF1o61vOCu0YdTFlLz
# 58k6p2mhUrs52ToMK5THDS184b+0bSdwWQdjkmrAUqlHhGmc36ge67C4MuXEZR8E
# GjRxbxZn4EbyFp2grMGqVswJWynLbT441GhR8YZ5f4Q=
# SIG # End signature block

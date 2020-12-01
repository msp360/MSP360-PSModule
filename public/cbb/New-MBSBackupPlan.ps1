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
                Real-time {$ScheduleCli += " -every$prefix real-time"}
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
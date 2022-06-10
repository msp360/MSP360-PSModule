function New-MBSNBFBackupPlanCommonOption {
    <#
    .SYNOPSIS
    Returns MBS.Agent.Plan.NBFBackupPlanCommonOption type object with common backup plan options.
    
    .DESCRIPTION
    Create NBFBackupPlanCommonOption type object with common backup plan options. Used with New-MBSNBFFileBackupPlan and  New-MBSNBFIBBBackupPlan cmdlets.
    
    .PARAMETER SyncRepositoryBeforeRun
    Synchronize local repository before running backup plan
    
    .PARAMETER UseServerSideEncryption
    Use server side encryption (valid only for Amazon S3)
    
    .PARAMETER EncryptionAlgorithm
    Encryption algorithm. Possible values: AES128-256
    
    .PARAMETER EncryptionPassword
    Encryption password. Use -EncryptionPassword (ConvertTo-SecureString -string Your_Password" -AsPlainText -Force)
    
    .PARAMETER UseCompression
    Use compression for backup
    
    .PARAMETER StorageClass
    Storage Class (valid only for Amazon S3)

    .PARAMETER FullConsistencyCheck
    Use full consistency check
    
    .PARAMETER StopIfPlanRunsFor
    Specify time in HH:MM to stop the plan if it runs for HH hours MM minutes. Example -StopIfPlanRunsFor "20:30" or -StopIfPlanRunsFor "100:00 etc.
    
    .PARAMETER RunMissedPlanImmediately
    Run missed scheduled backup immediately when computer starts up.
    
    .PARAMETER PreActionCommand
    Specify command to be executed before backup completes
    
    .PARAMETER PreActionContinueAnyway
    Specify to continue backup plan if pre-backup action failed.
    
    .PARAMETER PostActionCommand
    Specify command to be executed after backup has been successfully completed.
    
    .PARAMETER PostActionRunAnyway
    Specify to execute post-backup action in any case (regardless the backup result).
    
    .PARAMETER ResultEmailNotification
    Specify to send backup plan result notification email when backup fails (errorOnly) or in all cases (on). Prior to turn on the notification settings must be configured.
    
    .PARAMETER AddEventToWindowsLog
    Specify to add entry to Windows Event Log when backup fails (errorOnly) or in all cases (on).
    
    .PARAMETER KeepVersionPeriod
    Keep versions for specified number of days. Omit to use defult retention policy, set 0 to keep all versions or specify number of days. Example: -KeepVersionPeriod 180. .
    
    .PARAMETER GFSKeepWeekly
    Enables GFS weekly storage type. Example: -KeepVersionPeriod 4.
    
    .PARAMETER GFSKeepMonthly
    Enables GFS monthly storage type. Example: -KeepVersionPeriod 12.
    
    .PARAMETER GFSKeepYearly
    Enables GFS yearly storage type. Example: -KeepVersionPeriod 5.
    
    .PARAMETER GFSMonthOfTheYear
    Specify the number of month for the first successful GFS full backup for yearly storage type. Example: -GFSMonthOfTheYear February 

    .EXAMPLE
    $CommonOptions = New-NBFBackupPlanCommonOption -SyncRepositoryBeforeRun $true -UseServerSideEncryption $true -EncryptionAlgorithm AES256 -EncryptionPassword (ConvertTo-SecureString -string "My_Password" -AsPlainText -Force) -UseCompression $true -StorageClass OneZoneIA -StopIfPlanRunsFor 10:00
    
    Create backup plan common options object.

    .INPUTS
        None.

    .OUTPUTS
        MBS.Agent.Plan.NBFBackupPlanCommonOption

    .NOTES
        Author: MSP360 Onboarding Team

    .LINK
        https://mspbackups.com/AP/Help/powershell/cmdlets/backup-agent/new-mbsnbfbackupplancommonoption
    #>

    [CmdletBinding()]
    param (
        #
        [Parameter(Mandatory=$False, HelpMessage="Sync before run.")]
        [boolean]
        $SyncRepositoryBeforeRun=$False,
        #
        [Parameter(Mandatory=$False, HelpMessage="Use server side encryption (valid only for Amazon S3)")]
        [boolean]
        $UseServerSideEncryption=$False,
        #
        [Parameter(Mandatory=$False, HelpMessage="Encryption algorithm. Possible values: AES128-256")]
        [MBS.Agent.Plan.EncryptionAlgorithm]
        $EncryptionAlgorithm='AES256',
        #
        [Parameter(Mandatory=$False, HelpMessage="Encryption password. Use -EncryptionPassword (ConvertTo-SecureString -string ""Your_Password"" -AsPlainText -Force)")]
        [SecureString]
        $EncryptionPassword,
        #
        [Parameter(Mandatory=$False, HelpMessage="Use compression for backup")]
        [boolean]
        $UseCompression=$true,
        #
        [Parameter(Mandatory=$False, HelpMessage="Storage Class (valid only for Amazon S3)")]
        [MBS.Agent.Plan.StorageClass]
        $StorageClass='Standard',
        #
        [Parameter(Mandatory=$False, HelpMessage="Use full consistency check.")]
        [boolean]
        $FullConsistencyCheck=$true,
        #
        [Parameter(Mandatory=$False, HelpMessage="Specify time in HH:MM to stop the plan if it runs for HH hours MM minutes. Example -StopIfPlanRunsFor ""20:30"" or -StopIfPlanRunsFor ""100:00"" etc.")]
        [ValidatePattern("^([01]?[0-9]|2[0-3]):[0-5][0-9]:[0][0]$")]
        [timespan]
        $StopIfPlanRunsFor='00:00',
        #
        [Parameter(Mandatory=$False, HelpMessage='Run missed scheduled backup immediately when computer starts up. Possible values: $true/$false', ParameterSetName='Common')]
        [boolean]
        $RunMissedPlanImmediately=$False,
        # ------------------ Pre / Post actions ----------------------------
        [Parameter(Mandatory=$False, HelpMessage="Specify command to be executed before backup completes.")]
        [string]
        $PreActionCommand,
        #
        [Parameter(Mandatory=$False, HelpMessage='Specify to continue backup plan if pre-backup action failed. Possible values: $true/$false')]
        [Alias("pac")]
        [Nullable[boolean]]
        $PreActionContinueAnyway,
        #
        [Parameter(Mandatory=$False, HelpMessage="Specify command to be executed after backup has been successfully completed.")]
        [string]
        $PostActionCommand,
        #
        [Parameter(Mandatory=$False, HelpMessage='Specify to execute post-backup action in any case (regardless the backup result). Possible values: $true/$false')]
        [Alias("paa")]
        [Nullable[boolean]]
        $PostActionRunAnyway,
        #
        [Parameter(Mandatory=$False, HelpMessage="Specify to send backup plan result notification email when backup fails (errorOnly) or in all cases (on). Prior to turn on the notification settings must be configured. Possible values: errorOnly, on, off")]
        [MBS.Agent.Plan.Notification]
        $ResultEmailNotification = 'off',
        #
        [Parameter(Mandatory=$False, HelpMessage="Specify to add entry to Windows Event Log when backup fails (errorOnly) or in all cases (on). Possible values: errorOnly, on, off")]
        [MBS.Agent.Plan.Notification]
        $AddEventToWindowsLog = 'off',
        # ---------------------------- Retention Policy -------------------------
        #
        [Parameter(Mandatory=$False, HelpMessage="Keep versions for specified number of days. Omit to use defult retention policy, set 0 to keep all versions or specify number of days. Example: -KeepVersionPeriod 180. ")]
        [Nullable[Timespan]]
        $KeepVersionPeriod,
        #
        [Parameter(Mandatory=$False, HelpMessage="Enables GFS weekly storage type. Example: -KeepVersionPeriod 4")]
        [ValidateRange(0,100000)]
        [int]
        $GFSKeepWeekly = 0,
        #
        [Parameter(Mandatory=$False, HelpMessage="Enables GFS monthly storage type. Example: -KeepVersionPeriod 12")]
        [ValidateRange(0,10000)]
        [int]
        $GFSKeepMonthly = 0,
        #
        [Parameter(Mandatory=$False, HelpMessage="Enables GFS yearly storage type. Example: -KeepVersionPeriod 5")]
        [ValidateRange(0,1000)]
        [int]
        $GFSKeepYearly = 0,
        #
        [Parameter(Mandatory=$False, HelpMessage="Specify the number of month for the first successful GFS full backup for yearly storage type. Example: -GFSMonthOfTheYear February ")]
        [MBS.Agent.Plan.Month]
        $GFSMonthOfTheYear = "NotSet"

    )
    
    begin {
        
    }
    
    process {
        $BackupPlanOption = New-Object -TypeName MBS.Agent.Plan.NBFBackupPlanCommonOption
        $BackupPlanOption.SyncRepositoryBeforeRun = $SyncRepositoryBeforeRun
        $BackupPlanOption.UseServerSideEncryption = $UseServerSideEncryption
        $BackupPlanOption.UseServerSideEncryption = $UseServerSideEncryption
        $BackupPlanOption.EncryptionAlgorithm = $EncryptionAlgorithm
        $BackupPlanOption.EncryptionPassword = $EncryptionPassword
        $BackupPlanOption.UseCompression = $UseCompression
        $BackupPlanOption.StorageClass = $StorageClass
        $BackupPlanOption.FullConsistencyCheck = $FullConsistencyCheck
        $BackupPlanOption.StopIfPlanRunsFor = $StopIfPlanRunsFor
        $BackupPlanOption.RunMissedPlanImmediately = $RunMissedPlanImmediately
        $BackupPlanOption.PreActionCommand = $PreActionCommand
        $BackupPlanOption.PreActionContinueAnyway = $PreActionContinueAnyway
        $BackupPlanOption.PostActionCommand = $PostActionCommand
        $BackupPlanOption.PostActionRunAnyway = $PostActionRunAnyway
        $BackupPlanOption.ResultEmailNotification = $ResultEmailNotification
        $BackupPlanOption.AddEventToWindowsLog = $AddEventToWindowsLog
        if($null -ne $KeepVersionPeriod){$BackupPlanOption.KeepVersionPeriod = $KeepVersionPeriod}
        if($null -ne $GFSKeepWeekly){$BackupPlanOption.GFSKeepWeekly = $GFSKeepWeekly}
        if($null -ne $GFSKeepMonthly){$BackupPlanOption.GFSKeepMonthly = $GFSKeepMonthly}
        if($null -ne $GFSKeepYearly){$BackupPlanOption.GFSKeepYearly = $GFSKeepYearly}
        $BackupPlanOption.GFSMonthOfTheYear = $GFSMonthOfTheYear
        return $BackupPlanOption
    }
    
    end {
        
    }
}
function New-MBSRestoreCommonOptions {
    <#
    .SYNOPSIS
        Returns MBS.Agent.Plan.RestorePlanCommonOption type object with common restore plan options.
    
    .DESCRIPTION
        Create RestorePlanCommonOption type object with common restore plan options. Used with New-MBSRestorePlan cmdlet.
    
    .PARAMETER SyncRepositoryBeforeRun
        Syncronize local repository before running backup plan
    
    .PARAMETER StopIfPlanRunsFor
        Specify time in HH:MM to stop the plan if it runs for HH hours MM minutes. Example -StopIfPlanRunsFor "20:30" or -StopIfPlanRunsFor "100:00 etc.
    
    .PARAMETER EncryptionPassword
        Encryption password. Use -EncryptionPassword (ConvertTo-SecureString -string Your_Password" -AsPlainText -Force)
    
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
    
    .EXAMPLE
        $CommonOptions = New-MBSRestorePlanCommonOption -SyncRepositoryBeforeRun $true -StopIfPlanRunsFor "10:00" -EncryptionPassword (ConvertTo-SecureString -string "Your_Password" -AsPlainText -Force) -PreActionCommand "cmd.exe" -PreActionContinueAnyway $true -PostActionCommand "ps.exe" -PostActionRunAnyway $false -ResultEmailNotification errorOnly -AddEventToWindowsLog off
    
        Create restore plan common options object.
    
    .INPUTS
        None.

    .OUTPUTS
        MBS.Agent.Plan.RestorePlanCommonOption

    .NOTES
        Author: Alex Volkov

    .LINK
        https://kb.msp360.com/managed-backup-service/powershell-module/cmdlets/backup-agent/new-mbsrestoreplancommonoption
    #>

    [CmdletBinding()]
    param (
        #
        [Parameter(Mandatory=$False, HelpMessage="Sync before run.")]
        [boolean]
        $SyncRepositoryBeforeRun=$False,
        #
        [Parameter(Mandatory=$False, HelpMessage="Specify time in HH:MM to stop the plan if it runs for HH hours MM minutes. Example -StopIfPlanRunsFor ""20:30"" or -StopIfPlanRunsFor ""100:00"" etc.")]
        [ValidatePattern("^([01]?[0-9]|2[0-3]):[0-5][0-9]:[0][0]$")]
        [timespan]
        $StopIfPlanRunsFor='00:00',
        #
        [Parameter(Mandatory=$False, HelpMessage="Encryption password. Use -EncryptionPassword (ConvertTo-SecureString -string ""Your_Password"" -AsPlainText -Force)")]
        [SecureString]
        $EncryptionPassword,
        #
        [Parameter(Mandatory=$False, HelpMessage="Specify command to be executed before backup completes.")]
        [string]
        $PreActionCommand,
        #
        [Parameter(Mandatory=$False, HelpMessage='Specify to continue backup plan if pre-backup action failed. Possible values: $true/$false')]
        [Alias("pac")]
        [boolean]
        $PreActionContinueAnyway=$False,
        #
        [Parameter(Mandatory=$False, HelpMessage="Specify command to be executed after backup has been successfully completed.")]
        [string]
        $PostActionCommand,
        #
        [Parameter(Mandatory=$False, HelpMessage='Specify to execute post-backup action in any case (regardless the backup result). Possible values: $true/$false')]
        [Alias("paa")]
        [boolean]
        $PostActionRunAnyway=$False,
        #
        [Parameter(Mandatory=$False, HelpMessage="Specify to send backup plan result notification email when backup fails (errorOnly) or in all cases (on). Prior to turn on the notification settings must be configured. Possible values: errorOnly, on, off")]
        [MBS.Agent.Plan.Notification]
        $ResultEmailNotification = 'on',
        #
        [Parameter(Mandatory=$False, HelpMessage="Specify to add entry to Windows Event Log when backup fails (errorOnly) or in all cases (on). Possible values: errorOnly, on, off")]
        [MBS.Agent.Plan.Notification]
        $AddEventToWindowsLog = 'on'
    )
    
    begin {
        
    }
    
    process {
        $BackupPlanOption = New-Object -TypeName MBS.Agent.Plan.RestorePlanCommonOption
        $BackupPlanOption.SyncRepositoryBeforeRun = $SyncRepositoryBeforeRun
        $BackupPlanOption.EncryptionPassword = $EncryptionPassword
        $BackupPlanOption.StopIfPlanRunsFor = $StopIfPlanRunsFor
        $BackupPlanOption.PreActionCommand = $PreActionCommand
        $BackupPlanOption.PreActionContinueAnyway = $PreActionContinueAnyway
        $BackupPlanOption.PostActionCommand = $PostActionCommand
        $BackupPlanOption.PostActionRunAnyway = $PostActionRunAnyway
        $BackupPlanOption.ResultEmailNotification = $ResultEmailNotification
        $BackupPlanOption.AddEventToWindowsLog = $AddEventToWindowsLog
        return $BackupPlanOption
    }
    
    end {
        
    }
}
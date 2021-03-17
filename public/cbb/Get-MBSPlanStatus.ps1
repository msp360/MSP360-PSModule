function Get-MBSPlanStatus {
    <#
    .SYNOPSIS
    Shows MBS plan status.
    
    .DESCRIPTION
    This cmdlet provides the last result of the MBS backup plan by its ID.
    
    .PARAMETER Plan
    Specify plan object. Use Get-MBSBackupPlan or Get-MBSRestorePlan cmdlet to list plans.
    
    .PARAMETER MasterPassword
    Specify Master password. Use -MasterPassword (ConvertTo-SecureString -string ""Your_Password"" -AsPlainText -Force)
    
    .EXAMPLE
    Get-MBSBackupPlan | Get-MBSPlanStatus
    
    Get statuses for all backup plans.

    .EXAMPLE
    Get-MBSPlanStatus -Plan (Get-MBSBackupPlan | Where Name -eq "Backup Image Based")

    Get status for the "Backup Image Based" plan.

    .EXAMPLE
    Get-MBSPlanStatus -Plan (Get-MBSBackupPlan | Where Name -eq "Backup Image Based") -MasterPassword (ConvertTo-SecureString -string "Your_Password" -AsPlainText -Force)

    Get status for the "Backup Image Based" plan on the protected by master password.

    .INPUTS
    System.Management.Automation.PSCustomObject

    .OUTPUTS
    System.Management.Automation.PSCustomObject

    .NOTES
    Author: Ivan Skorin / Alex Volkov

    .LINK
    https://kb.msp360.com/managed-backup-service/powershell-module/cmdlets/backup-agent/get-mbsplanstatus/

    #>
    [CmdletBinding()]
    param (
        # Parameter - Backup plan
        [Parameter(Mandatory=$true, ValueFromPipeline, HelpMessage="Specify plan object. Use Get-MBSBackupPlan or Get-MBSRestorePlan cmdlet to list plans.")]
        [PSCustomObject]
        $Plan,
        # Parameter - Master password
        [Parameter(Mandatory=$false, HelpMessage="Specify Master password. Use -MasterPassword (ConvertTo-SecureString -string ""Your_Password"" -AsPlainText -Force)")]
        [SecureString]
        $MasterPassword
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
        $Arguments = " status -id $($Plan.ID)"
        $Result = Start-MBSProcess -CMDPath $CBB.CBBCLIPath -CMDArguments $Arguments -Output json -MasterPassword $MasterPassword
        if ($Result.Result -ne "Fail") {
            Return $Result
        }
    }
    
    end {
        
    }
}
function Stop-MBSPlan {
    <#
    .SYNOPSIS
        Stop running backup and restore plans.
    .DESCRIPTION
        The Stop-MBSPlan cmdlet stops a backup or restore plan with specified ID or Name.
    .EXAMPLE
        PS C:\> Stop-MBSPlan -Name "Backup VMware"
        Stop running plan by name.
    .EXAMPLE
        PS C:\> Stop-MBSPlan -ID ed2e0d37-5ec2-49e1-a381-d2246b3108ec
        Stop running plan by the plan ID.
    .EXAMPLE
        PS C:\> Get-MBSBackupPlan -StorageType Local -PlanType VMware | Stop-MBSPlan
        Stop running VMware backup plans with local backup storages type.
    .EXAMPLE
        PS C:\> Get-MBSRestorePlan -StorageType All -PlanType VMware | Stop-MBSPlan
        Stop running VMware restore plans with all backup storages type.
    .INPUTS
        System.String[]
        System.String
    .OUTPUTS
        System.String[]
    .NOTES
        Author: Alex Volkov
        Editor: Andrew Anushin
    .LINK
        https://kb.msp360.com/managed-backup-service/powershell-module/cmdlets/stop-mbsbackupplan
    #>
    [CmdletBinding()]
    param (
        [Parameter(ValueFromPipelineByPropertyName)]
        [string]
        $ID,
        #
        [Parameter(ValueFromPipelineByPropertyName)]
        [string]
        $Name,
        #
        [Parameter(Mandatory=$False, HelpMessage="Master password. Should be specified if configuration is protected by master password. Use -MasterPassword (ConvertTo-SecureString -string ""Your_Password"" -AsPlainText -Force)")]
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
        if (Get-MBSAgent -ErrorAction SilentlyContinue) {
            if ($ID){
                $Arguments += "plan -s $ID"
            }else{
                $Arguments += "plan -s ""$Name"""
            }
            
            $Result = Start-MBSProcess -CMDPath $CBB.CBBCLIPath -CMDArguments $Arguments -Output none -MasterPassword $MasterPassword
            $Result = Start-MBSProcess -CMDPath $CBB.CBBCLIPath -CMDArguments $Arguments -Output short -MasterPassword $MasterPassword
        }
    }
    
    end {
    }
}

Set-Alias -Name Stop-MBSBackupPlan -Value Stop-MBSPlan
Set-Alias -Name Stop-MBSRestorePlan -Value Stop-MBSPlan
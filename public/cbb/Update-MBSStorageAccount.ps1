function Update-MBSStorageAccount {
    <#
    .SYNOPSIS
    Updates MBS storage accounts
    
    .DESCRIPTION
    Updates MBS storage accounts. It is required when new storage accounts are added to a backup user but changes are not propagated to the backup agent.
    
    .EXAMPLE
    Update-MBSStorageAccount
    
    Updates MBS storage accounts
    
    .INPUTS
        None

    .OUTPUTS
        String

    .NOTES
        Author: Ivan Skorin

    .LINK
        https://kb.msp360.com/managed-backup-service/powershell-module/cmdlets/backup-agent/update-mbsstorageaccount/
    #>
    
    [CmdletBinding()]
    param (
        
    )
    
    begin {
        if (-not($CBB = Get-MBSAgent)) {
            Break
        }
    }
    
    process {        
        $Arguments = "refreshmbsaccounts"
        $Result = Start-MBSProcess -CMDPath $CBB.CBBCLIPath -CMDArguments $Arguments -Output none
    }
    
    end {
        
    }
}
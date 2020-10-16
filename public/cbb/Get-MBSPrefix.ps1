function Get-MBSPrefix {
    <#
    .SYNOPSIS
    Lists existing prefixes for the specific storage account.
    
    .DESCRIPTION
    This cmdlet provides a list of existing prefixes for the storage account with specified name.
    
    .PARAMETER StorageAccount
    Specifies storage account object. Use Get-MBSStorageAccount cmdlet to list storages. Example: (Get-MBSStorageAccount -Name "Vbox")
    
    .PARAMETER MasterPassword
    Master password. Should be specified if configuration is protected by master password. Use -MasterPassword (ConvertTo-SecureString -string "Your_Password" -AsPlainText -Force)
    
    .EXAMPLE
    PS C:\> Get-MBSPrefix -StorageAccount (Get-MBSStorageAccount -Name "Vbox")

    List prefixes from the storage account with name "Vbox"

    .INPUTS
    None.

    .OUTPUTS
    System.Management.Automation.PSCustomObject

    .NOTES
    Author: Ivan Skorin

    .LINK
    https://kb.msp360.com/managed-backup-service/powershell-module/cmdlets/backup-agent/get-mbsprefix/
    #>
    [CmdletBinding()]
    param (
        # Parameter - Storage account
        [Parameter(Mandatory=$true, HelpMessage="Specify storage account object. Use Get-MBSStorageAccount cmdlet to list storages. Example: (Get-MBSStorageAccount -Name ""AWS S3"")")]
        [MBS.Agent.StorageAccount]
        $StorageAccount,
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
        $Arguments = " prefixes -aid $($StorageAccount.ID)"
        $Result = Start-MBSProcess -CMDPath $CBB.CBBCLIPath -CMDArguments $Arguments -Output json -MasterPassword $MasterPassword
        if ($result.Result -eq "Success") {
            $result.Prefixes
        }
    }
    
    end {
        
    }
}
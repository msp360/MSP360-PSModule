function New-MBSNetworkCredential {
    <#
    .SYNOPSIS
    Creates new network credentials.
    
    .DESCRIPTION
    Creates new network credentials by specifying a network path, user login and network share password.
    
    .PARAMETER Path
    Network share path
    
    .PARAMETER Login
    Network share username
    
    .PARAMETER Password
    Network share password
    
    .PARAMETER MasterPassword
    Backup agent master password. Use -MasterPassword (ConvertTo-SecureString -string "Your_Password" -AsPlainText -Force)
    
    .EXAMPLE
    New-MBSNetworkCredential -Path \\SharePath -Login username -Password (ConvertTo-SecureString -string "share_password" -AsPlainText -Force) -MasterPassword (ConvertTo-SecureString -string "master_password" -AsPlainText -Force)
    
    .INPUTS
    None.

    .OUTPUTS
    System.Management.Automation.PSCustomObject

    .NOTES
    Author: Ivan Skorin

    .LINK
    https://kb.msp360.com/managed-backup-service/powershell-module/cmdlets/backup-agent/new-mbsnetworkcredential/
    #>
    [CmdletBinding()]
    param (
        # Parameter - Network share path
        [Parameter(Mandatory=$true, HelpMessage="Specify a network share path")]
        [string]
        $Path,
        # Parameter - Login username
        [Parameter(Mandatory=$true, HelpMessage="Specify a username to log in to the network share")]
        [string]
        $Login,
        # Parameter - Share access password
        [Parameter(Mandatory=$true, HelpMessage="Specify a Password to log in to the network share. Use -Password (ConvertTo-SecureString -string ""Your_Password"" -AsPlainText -Force)")]
        [SecureString]
        $Password,
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
        $Arguments = " nwcAdd -n $Path -l $Login -p $Password"
        (Start-MBSProcess -cmdpath $CBB.CBBCLIPath -cmdarguments $Arguments -output json -MasterPassword $MasterPassword).result
    }
    
    end {
        
    }
}
function New-MBSLocalStorageAccount {
    <#
    .SYNOPSIS
    Add local storage.
    
    .DESCRIPTION
    Add local storage.
    
    .PARAMETER Name
    Storage account display name.
    
    .PARAMETER Path
    Storage account path.
    
    .PARAMETER BackupPrefix
    Backup prefix to differentiate between backups from different computers.
    
    .PARAMETER MasterPassword
    Master password. Should be specified if configuration is protected by master password. Use -MasterPassword (ConvertTo-SecureString -string "Your_Password" -AsPlainText -Force)
    
    .EXAMPLE
    New-MBSLocalStorageAccount -Name "Local Backup" -Path "C:\Backups" -BackupPrefix "Server"

    Add new local backup storage with path "C:\Backups", name "Local Backup" and backup prefix "Server".

    .EXAMPLE
    New-MBSLocalStorageAccount -Name "Local Backup" -Path "C:\Backups"

    Add new local backup storage with path "C:\Backups", name "Local Backup" and default backup prefix (server name / hostname).

    .EXAMPLE
    New-MBSLocalStorageAccount -Name "Local Backup" -Path "C:\Backups" -MasterPassword (ConvertTo-SecureString -string "Your_Password" -AsPlainText -Force)

    Add new local backup storage with path "C:\Backups" and name "Local Backup" to agent protected with a master password.
    
    .NOTES
    General notes
    #>

    [CmdletBinding()]
    param (
        [Parameter(Mandatory=$true, HelpMessage="Storage account display name.")]
        [String]
        $Name,
        [Parameter(Mandatory=$true, HelpMessage="Storage account path.")]
        [String]
        $Path,
        [Parameter(Mandatory=$False, HelpMessage="Backup prefix to differentiate between backups from different computers.")]
        [String]
        $BackupPrefix,
        [Parameter(Mandatory=$False, HelpMessage="Master password. Should be specified if configuration is protected by master password. Use -MasterPassword (ConvertTo-SecureString -string ""Your_Password"" -AsPlainText -Force)")]
        [SecureString]
        $MasterPassword
    )
    
    begin {
        if (-not($Null = Get-MBSAgent)) {
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
        $Arguments = "addaccount -d $Name -st FileSystem -c $Path"
        if ($BackupPrefix) {
            $Arguments += " -bp $BackupPrefix"
        }

        $Null = Start-MBSProcess -CMDPath (Get-MBSAgent).CBBCLIPath -CMDArguments $Arguments -Output json -MasterPassword $MasterPassword
    }
    
    end {
        
    }
}
function Remove-MBSBackup {
    <#
    .SYNOPSIS
    Removes a single file or a folder from the backup.
    
    .DESCRIPTION
    This cmdlet silently removes a specified file or a folder from the MBS backup.
    
    .PARAMETER StorageAccount
    Specify storage account object. Use Get-MBSStorageAccount cmdlet to list storages. Example: (Get-MBSStorageAccount -Name ""AWS S3"")")
    
    .PARAMETER File
    Removes specified file from the backup
    
    .PARAMETER Folder
    Removes specified folder from the backup
    
    .PARAMETER MasterPassword
    Backup agent master password. Use -MasterPassword (ConvertTo-SecureString -string "Your_Password" -AsPlainText -Force)
    
    .EXAMPLE
    Remove-MBSBackup -StorageAccount (Get-MBSStorageAccount | where DisplayName -eq "FSS") -File "C:\TestFolder\test.txt"
    
    Removes file "test.txt" from the backup on the storage account "FSS"

    .EXAMPLE
    Remove-MBSBackup -StorageAccount (Get-MBSStorageAccount | where DisplayName -eq "FSS") -Folder "C:\TestFolder\Backup"
    
    Removes folder "backup" from the backup on the storage account "FSS"

    .EXAMPLE
    Remove-MBSBackup -StorageAccount (Get-MBSStorageAccount | where DisplayName -eq "FSS") -File "C:\TestFolder\test.txt" -Folder "C:\TestFolder\Backup"
    
    Removes file "test.txt" and folder "backup" from the backup on the storage account "FSS"

    .INPUTS
    None

    .OUTPUTS
    String

    .NOTES
    Author: Ivan Skorin

    .LINK
    https://kb.msp360.com/managed-backup-service/powershell-module/cmdlets/backup-agent/remove-mbsbackup/
    #>
    [CmdletBinding()]
    param (
        # Parameter - Storage Account
        [Parameter(Mandatory=$true, HelpMessage="Specify storage account object. Use Get-MBSStorageAccount cmdlet to list storages. Example: (Get-MBSStorageAccount -Name ""AWS S3"")")]
        [MBS.Agent.StorageAccount]
        $StorageAccount,
        # Parameter - File
        [Parameter(Mandatory=$true, HelpMessage="Removes specified file from the backup", ParameterSetName='File')]
        #[Parameter(Mandatory=$true, HelpMessage="Delete network credentials by path", ParameterSetName='PathLogin')]
        [string]
        $File,
        # Parameter - Directory
        [Parameter(Mandatory=$true, HelpMessage="Removes specified folder from the backup", ParameterSetName='Folder')]
        #[Parameter(Mandatory=$true, HelpMessage="Delete network credentials by path", ParameterSetName='PathLogin')]
        [string]
        $Folder, 
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
        $Arguments = " delete"
        $Arguments += " -a ""$($StorageAccount.DisplayName)"""
        if ($File) {
            $Arguments += " -f ""$File"""
        }
        if ($Folder) {
            $Arguments += " -d ""$Folder"""
        }
        $Result = Start-MBSProcess -CMDPath $CBB.CBBCLIPath -CMDArguments $Arguments -Output json -MasterPassword $MasterPassword
    }
        
    end {
        
    }
}
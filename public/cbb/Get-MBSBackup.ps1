function Get-MBSBackup {
    <#
    .SYNOPSIS
        List files/folders or versions backed up to a cloud storage
    
    .DESCRIPTION
        List files/folders or versions backed up to a cloud storage
    
    .PARAMETER StorageAccount
        Specify storage account object. Use Get-MBSStorageAccount cmdlet to list storages. Example: (Get-MBSStorageAccount -Name "AWS S3")
    
    .PARAMETER MasterPassword
        Master password. Should be specified if configuration is protected by master password. Use -MasterPassword (ConvertTo-SecureString -string "Your_Password" -AsPlainText -Force)
    
    .PARAMETER File
        Array of file path to list
    
    .PARAMETER Folder
        Array of folder path to list
    
    .PARAMETER Prefix
        Perform listing using specified backup prefix
    
    .EXAMPLE
        PS C:\> Get-MBSBackup -StorageAccount (Get-MBSStorageAccount -Name "AWS S3") -Folder "C:\" 

        List files and folders backed up from C:\ to storage account with "AWS S3" name.

    .EXAMPLE
        PS C:\> Get-MBSBackup -StorageAccount (Get-MBSStorageAccount -Name "AWS S3") -File "C:\test\test.txt" 

        Get information about versions of "C:\test\test.txt" file which is backed up to storage account with "AWS S3" name.

    .EXAMPLE
        PS C:\> Get-MBSBackup -StorageAccount (Get-MBSStorageAccount -Name "AWS S3") -Folder "C:\" -Prefix "Server"

        List files and folders backed up from C:\ to storage account with "AWS S3" name from "Server" computer.

    .INPUTS
        None

    .OUTPUTS
        MBS.Agent.StorageAccountContent

    .NOTES
        Author: Alex Volkov

    .LINK
        https://kb.msp360.com/managed-backup-service/powershell-module/cmdlets/get-mbsbackup

    #>

    [CmdletBinding()]
    param (
        # 
        [Parameter(Mandatory=$true, HelpMessage="Specify storage account object. Use Get-MBSStorageAccount cmdlet to list storages. Example: (Get-MBSStorageAccount -Name ""AWS S3"")")]
        [MBS.Agent.StorageAccount]
        $StorageAccount,
        #
        [Parameter(Mandatory=$False, HelpMessage="Master password. Should be specified if configuration is protected by master password. Use -MasterPassword (ConvertTo-SecureString -string ""Your_Password"" -AsPlainText -Force)")]
        [SecureString]
        $MasterPassword,
        #
        [Parameter(Mandatory=$False, HelpMessage="Backup file", ParameterSetName='BackupFile')]
        [string[]]
        $File,
        #
        [Parameter(Mandatory=$False, HelpMessage="Backup directory", ParameterSetName='BackupDirectory')]
        [string[]]
        $Folder,
        #
        [Parameter(Mandatory=$False, HelpMessage="Perform listing using specified backup prefix")]
        [string]
        $Prefix
    )
    
    begin {
        if (-not($CBB = Get-MBSAgent)) {
            Break
        }
        try {
            if ((Get-MBSAgentSetting -ErrorAction SilentlyContinue).MasterPassword -ne "" -and (Get-MBSAgentSetting -ErrorAction SilentlyContinue).MasterPassword -ne $null -and -not $MasterPassword) {
                $MasterPassword = Read-Host Master Password -AsSecureString
            }
        }
        catch {
            
        }
    }
    
    process {
        $Arguments = " list"
        $Arguments += " -a ""$($StorageAccount.DisplayName)"""
        if ($MasterPassword){$Arguments += " -mp """+([System.Runtime.InteropServices.Marshal]::PtrToStringAuto([System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($MasterPassword)))+""""}
        if ($File){$Arguments += " -f "+'"{0}"' -f ($File -join '" -f "')}
        if ($Folder){$Arguments += " -d "+'"{0}"' -f ($Folder -join '" -d "')}
        $Result = (Start-MBSProcess -CMDPath (Get-MBSAgent).CBBCLIPath -CMDArguments $Arguments -Output json).stdout.replace("Content-Type: application/json; charset=UTF-8","") | ConvertFrom-Json
        
        if ($Result.Result -eq "Success") {
            $StorageAccountContent = @()
            if ($Result.Directories.Files){
                $Result.Directories.Files | ForEach-Object {
                    $StorageAccountContent += [MBS.Agent.StorageAccountContent]@{ 
                        Type = "File"
                        Name = $_.Name
                        Date = $_.Date
                        Size = $_.Size
                        IsCompressed = $_.IsCompressed
                        IsEncrypted = $_.IsEncrypted
                    }
                }
            }
            
            if ($Result.Directories.Folders){
                $Result.Directories.Folders | ForEach-Object {
                    $StorageAccountContent += [MBS.Agent.StorageAccountContent]@{ 
                        Type = "Folder"
                        Name = $_.Name
                        Date = $_.Date
                        Size = $_.Size
                        IsCompressed = $_.IsCompressed
                        IsEncrypted = $_.IsEncrypted
                    }
                }
            }

            if ($Result.FileVersions){
                $Result.FileVersions | ForEach-Object {
                    $StorageAccountContent += [MBS.Agent.StorageAccountContent]@{ #
                    Type = "File"
                    Name = $_.Path
                    Date = $_.Date
                    Size = $_.Size
                    IsCompressed = $_.IsCompressed
                    IsEncrypted = $_.IsEncrypted
                    Versions = $($array = @(); $_.Versions | ForEach-Object {$ht= @{}; $array +=New-Object -TypeName MBS.Agent.FileVersions -property $($_.psobject.properties | ForEach-Object {$ht[$_.Name] = $_.Value}; $ht)};$array)
                    }
                }
            }

            return $StorageAccountContent

        } else {
            if ('' -ne $Result.Warnings) {
                Write-Warning -Message $Result.Warnings[0]
            } 
            if ('' -ne $Result.Errors) {
                Write-Error -Message $Result.Errors[0] 
            }
        }
    }
    
    end {
        
    }
}
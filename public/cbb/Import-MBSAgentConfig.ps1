function Import-MBSAgentConfig {
    <#
    .SYNOPSIS
    Import backup agent coniguration
    
    .DESCRIPTION
    NOTE: Your settings and backup plans will be overwritten from selected configuration archive
    
    .PARAMETER Path
    Specify path to configuration archive file
    
    .PARAMETER ReplaceBackupPrefix
    Specify to replace backup prefix in the imported accounts with current machine name
    
    .PARAMETER MasterPassword
    Master password. Should be specified if configuration is protected by master password. Use -MasterPassword (ConvertTo-SecureString -string "Your_Password" -AsPlainText -Force)
    
    .EXAMPLE
    Import-MBSAgentConfig -Path "C:\Temp\Configuration_20201218132026.cbbconfiguration"

    Import configuration archive from the path "C:\Temp\Configuration_20201218132026.cbbconfiguration".
    
    .EXAMPLE
    Import-MBSAgentConfig -Path "C:\Temp\Configuration_20201218132026.cbbconfiguration" -ReplaceBackupPrefix

    Import configuration archive from the path "C:\Temp\Configuration_20201218132026.cbbconfiguration" and replace backup prefix in the imported accounts with the current machine name.

    .EXAMPLE
    Import-MBSAgentConfig -Path "C:\Temp\Configuration_20201218132026.cbbconfiguration" -MasterPassword (ConvertTo-SecureString -string "Your_Password" -AsPlainText -Force)

    Import configuration archive from the path "C:\Temp\Configuration_20201218132026.cbbconfiguration" to the backup agent protected with the master password.

    .INPUTS
        None
    .OUTPUTS
        String
        String[]
    .NOTES
        Author: Alex Volkov
    .LINK
        https://kb.msp360.com/managed-backup-service/powershell-module/cmdlets/import-mbsagentconfig
    #>
    [CmdletBinding()]
    param (
        [Parameter(Mandatory=$true, HelpMessage="Specify path to configuration archive file")]
        [String]
        $Path,
        [Parameter(Mandatory=$false, HelpMessage="Specify to replace backup prefix in the imported accounts with the current machine name")]
        [switch]
        $ReplaceBackupPrefix,
        [Parameter(Mandatory=$false, HelpMessage="Master password. Should be specified if configuration is protected by master password. Use -MasterPassword (ConvertTo-SecureString -string ""Your_Password"" -AsPlainText -Force)")]
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
        $Arguments = "importConfig -f ""$($Path)"""
        if ($ReplaceBackupPrefix) {
            $Arguments += " -m"
        }

        $Null = Start-MBSProcess -CMDPath $CBB.CBBCLIPath -CMDArguments $Arguments -Output Full -MasterPassword $MasterPassword
    }
    
    end {
        
    }
}
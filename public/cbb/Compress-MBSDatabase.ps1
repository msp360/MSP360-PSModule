function Compress-MBSDatabase {
    <#
    .SYNOPSIS
        Compress backup agent database
    
    .DESCRIPTION
        Compress backup agent database
    
    .PARAMETER MasterPassword
        Master password. Should be specified if configuration is protected by master password. Use -MasterPassword (ConvertTo-SecureString -string "Your_Password" -AsPlainText -Force)
    
    .EXAMPLE
        PS C:\> Compress-MBSDatabase

        Compress backup agent database
    
    .INPUTS
        None.

    .OUTPUTS
        System.String[]

    .NOTES
        Author: Alex Volkov

    .LINK
        https://kb.msp360.com/managed-backup-service/powershell-module/cmdlets/backup-agent/compress-mbsdatabase
    #>
    [CmdletBinding()]
    param (
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
        $Arguments = "database -shrink"
        $Result = (Start-MBSProcess -CMDPath $CBB.CBBCLIPath -CMDArguments $Arguments -Output full -MasterPassword $MasterPassword).result
        ($Result.replace("Shrink","Compression")).replace("shrink","compression")
    }
    
    end {
        
    }
}
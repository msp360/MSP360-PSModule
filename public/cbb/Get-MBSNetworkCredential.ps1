function Get-MBSNetworkCredential {
    <#
    .SYNOPSIS
    Lists existing network credentials.
    
    .DESCRIPTION
    Lists existing network credentials and performs availability test if -TestCredentials parameter is specified.
    
    .PARAMETER TestCredentials
    Lists network credentials and performs availability test
    
    .PARAMETER MasterPassword
    Master password. Should be specified if configuration is protected by master password. Use -MasterPassword (ConvertTo-SecureString -string "Your_Password" -AsPlainText -Force)
    
    .EXAMPLE
    Get-MBSNetworkCredential

    List network credentials

    .EXAMPLE
    Get-MBSNetworkCredential -TestCredentials

    List network credentials and performs availability test

    .EXAMPLE
    Get-MBSNetworkCredential -MasterPassword (ConvertTo-SecureString -string "Your_Password" -AsPlainText -Force)

    List network credentials from backup agent protected with master password
    
    .INPUTS
    None.

    .OUTPUTS
    System.Management.Automation.PSCustomObject

    .NOTES
    Author: Ivan Skorin

    .LINK
    https://kb.msp360.com/managed-backup-service/powershell-module/cmdlets/backup-agent/get-mbsnetworkcredential/
    #>
    [CmdletBinding()]
    param (
        # Parameter - Lists network credentials and performs availability test
        [Parameter(Mandatory=$false, HelpMessage="Lists network credentials and performs availability test")]
        [switch]
        $TestCredentials,
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
            if ((Get-MBSAgentSetting -ErrorAction SilentlyContinue).MasterPassword -ne "" -and (Get-MBSAgentSetting -ErrorAction SilentlyContinue).MasterPassword -ne $null -and -not $MasterPassword) {
                $MasterPassword = Read-Host Master Password -AsSecureString
            }
        }
        catch {
        }
    }
    
    process {
        if ($TestCredentials) {
            $Arguments = "nwcList -t"
        } else {
            $Arguments = "nwcList -s"
        }
        if ($MasterPassword) {
            $Arguments += " -mp """+([System.Runtime.InteropServices.Marshal]::PtrToStringAuto([System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($MasterPassword)))+""""
        }
        $Arguments += " -json"
        Write-Verbose -Message "Arguments: $($Arguments -replace  '-mp "\w*"','-mp "****"')"
        $result = (Start-MBSProcess -cmdpath $CBB.CBBCLIPath -cmdarguments $Arguments -output json).stdout.replace("Content-Type: application/json; charset=UTF-8","") |ConvertFrom-Json
        if ($result.Result -eq "Success") {
            $result.Shares
        } else {
            if ('' -ne $result.Warnings) {
                Write-Warning -Message $result.Warnings[0]
            } 
            if ('' -ne $result.Errors) {
                Write-Error -Message $result.Errors[0] 
            }
        }
    }
    
    end {
        
    }
}
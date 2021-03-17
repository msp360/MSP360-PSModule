function Save-MBSLog {
    <#
    .SYNOPSIS
    Save the log files to specific path.
    
    .DESCRIPTION
    Save the log files to specific path.
    
    .PARAMETER Path
    Specifies the directory to which to save the application logs. Ommit to save to the default folder (C:\Users\USER_NAME\Documents\)
    
    .EXAMPLE
    Save-MBSLog

    Save logs to the default directory.

    .EXAMPLE
    Save-MBSLog -Path C:\Temp

    Save logs to the "C:\Temp" directory.
    
    .INPUTS
    None.

    .OUTPUTS
    System.String[]

    .NOTES
    Author: Alex Volkov

    .LINK
    https://kb.msp360.com/managed-backup-service/powershell-module/cmdlets/backup-agent/save-mbslog
    #>

    [CmdletBinding()]
    param (
        [Parameter(Mandatory=$False, HelpMessage="Specifies the directory to which to save the application logs. Ommit to save to the default folder (C:\Users\USER_NAME\Documents\)")]
        [string]
        $Path
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
        $Arguments = " savelog"
        if ($Path){$Arguments += " -p ""$Path"""}

        $Result = Start-MBSProcess -CMDPath $CBB.CBBCLIPath -CMDArguments $Arguments -Output none
        $Result.stdout.split([Environment]::NewLine)| ForEach-Object -Process {
            if ($_ -match 'WARNING: \w*') {
                Write-Warning -Message $_.replace("WARNING: ","")
            } elseif ($_ -match 'ERROR: \w*') {
                Write-Error -Message $_.replace("ERROR: ","")
            } elseif ($_) {
                if ($_ -notmatch ".*Command Line Interface started.*") {
                    $ReturnResult += $_
                }
            }
        }
        return $ReturnResult
    }
    
    end {
        
    }
}
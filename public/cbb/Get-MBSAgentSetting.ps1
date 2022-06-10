function Get-MBSAgentSetting {
    <#
    .SYNOPSIS
        Get MBS agent settings.
    .DESCRIPTION
        The Get-MBSAgentSetting cmdlet returns PS custom object with MBS agent settings.
    .EXAMPLE
        PS C\:> Get-MBSAgentSetting
        Get MBS agent settings.
    .INPUTS
        None
    .OUTPUTS
        System.Management.Automation.PSCustomObject
    .NOTES
        Author: MSP360 Onboarding Team
    .LINK
        https://mspbackups.com/AP/Help/powershell/cmdlets/backup-agent/get-mbsagentsetting
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
        if ($CBBProgramData = $CBB.CBBProgramData) {
            $StorageAccountsArray = @()
            $enginesettings = [xml](Get-Content ("$CBBProgramData\enginesettings.list"))
            $MBSAgentSettings = Convert-XMLtoPSObject $enginesettings.EngineSettings
            return $MBSAgentSettings | Select -Property * -ExcludeProperty xsd, xsi, Accounts, CBLPassword, MBSPassword, TestMode
        }
    }
    
    end {
        
    }
}

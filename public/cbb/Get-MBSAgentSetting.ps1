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
        Author: Alex Volkov
    .LINK
        https://kb.msp360.com/managed-backup-service/powershell-module/cmdlets/get-mbsagentsettings
    #>
    [CmdletBinding()]
    param (
        
    )
    
    begin {
        
    }
    
    process {
        if (Get-MBSAgent -ErrorAction SilentlyContinue) {
            $CBBProgramData = (Get-MBSAgent).CBBProgramData
            $StorageAccountsArray = @()
            $enginesettings = [xml](Get-Content ("$CBBProgramData\enginesettings.list"))
            $MBSAgentSettings = Convert-XMLtoPSObject $enginesettings.EngineSettings
            return $MBSAgentSettings | Select -Property * -ExcludeProperty xsd, xsi, Accounts, CBLPassword, MBSPassword, TestMode
        }
    }
    
    end {
        
    }
}

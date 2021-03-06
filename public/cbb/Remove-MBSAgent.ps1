function Remove-MBSAgent {
    <#
    .SYNOPSIS
        Removes MBS backup agent from a local machine.

    .DESCRIPTION
        Cmdlet silently removes MBS backup agent on a local machine.

    .EXAMPLE
        C:\PS> Remove-MBSAgent
                
        C:\PS> Are you sure you want to perform this action?
        C:\PS> Performing the operation "Remove-MBSAgent" on target "the backup agent"
        C:\PS> [Y] Yes  [N] No (default is "N"):Y
        C:\PS> The backup agent has been uninstalled.
    .EXAMPLE
        PS C:> Remove-MBSAgent -Force          

        The backup agent has been uninstalled.

    .EXAMPLE
        PS C:> Remove-MBSAgent -RemoveSettings -Force          

        Uninstall the agent and remove the settings.

    .INPUTS
        None

    .OUTPUTS
        String

    .NOTES
        Author: Alex Volkov

    .LINK
        https://kb.msp360.com/managed-backup-service/powershell-module/cmdlets/remove-mbsagent
    #>

    [CmdletBinding()]
    param (
        #
       [Parameter(Mandatory=$false, HelpMessage="Removes backup agent settings.")]
       [switch]$RemoveSettings,
       #
       [Parameter(Mandatory=$false, HelpMessage="Force to uninstall MBS agent. Confirmation message will be skipped.")]
       [switch]$Force 
    )
    
    begin {
        
    }
    
    process {
        if ($CBB = Get-MBSAgent -ErrorAction SilentlyContinue)
        {   
            $Arguments = "/S "
            if ($RemoveSettings){
                $Arguments += "/removesettings"
            }
            if ($Force){
                (Start-MBSProcess -CMDPath $CBB.UninstallString -CMDArguments $Arguments).stdout
                Write-Host "The backup agent has been uninstalled."            
            }else{
                if (Confirm-MBSAction -Operation "Remove-MBSAgent" -Target "the backup agent"){
                    (Start-MBSProcess -CMDPath $CBB.UninstallString -CMDArguments $Arguments).stdout
                    Write-Host "The backup agent has been uninstalled."
                }
            }
        }else{
            Write-Host "Cannot find the backup agent."
        }
    }
    
    end {
        
    }
}

Set-Alias Uninstall-MBSAgent Remove-MBSAgent
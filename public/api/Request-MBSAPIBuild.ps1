function Request-MBSAPIBuild {
    <#
    .SYNOPSIS
    Requests a new backup agent build
    
    .DESCRIPTION
    Calls the POST api/Builds/RequestCustomBuilds API to request a new build according to specifications
    
    .PARAMETER BuildType
    Build type Custom / Sandbox. Sandbox is recommended for new releases. 0 is for custom, 1 is for sandbox.
    
    .PARAMETER BuildEditions
    Type of endpoint to backup -- refer to full relevant mapping here: https://api.mspbackups.com/Help/ResourceModel?modelName=BuildEdition
    
    .PARAMETER ProfileName
	Profile name used with MSP360 PowerShell for MBS API (set via Set-MBSApiCredential)
    
    .EXAMPLE
    Request-MBSAPIBuild -ProfileName ao -BuildType 0 -BuildEditions (0,1,2,3,4)
    
    .INPUTS
    None

    .OUTPUTS
    String

    .NOTES
        Author: Andrey Oshukov
    .LINK

    #>
    
    [CmdletBinding()]
    param (
        [Parameter(Mandatory=$true, HelpMessage="BuildType")]
        [int]$BuildType,
        [Parameter(Mandatory=$true, HelpMessage="BuildEditions")]
        [int[]]$BuildEditions,
        [Parameter(Mandatory=$false, HelpMessage="The profile name")]
        [string]$ProfileName
    )
    begin {
        
    }
    process {
        $headers = Get-MBSAPIHeader -ProfileName $ProfileName
        $CustomBuildPOST = [pscustomobject][ordered]@{
            Type = $BuildType
            Editions = $BuildEditions 
        }
        Write-Verbose -Message ("$($PSCmdlet.MyInvocation.MyCommand.Name): URL: " + ((Get-MBSApiUrl).Builds+'/RequestCustomBuilds'))
        Write-Verbose -Message ("$($PSCmdlet.MyInvocation.MyCommand.Name): POST Request: " + ($CustomBuildPOST|ConvertTo-Json))
        $CustomBuildInvocation=Invoke-RestMethod -Uri ((Get-MBSApiUrl).Builds+'/RequestCustomBuilds') -Method Post -Headers $headers -Body ($CustomBuildPOST | ConvertTo-Json) -ContentType 'application/json'        
        return $CustomBuildInvocation
    }
    end {
    }
}

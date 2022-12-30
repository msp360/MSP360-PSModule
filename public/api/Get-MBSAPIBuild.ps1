function Get-MBSAPIBuild {
    <#
    .SYNOPSIS
    Get a list of available agent downloads.
    
    .DESCRIPTION
    Calls the GET api/Builds API to get a list of all available agent downloads.
    
    .PARAMETER Type
    Build type
    
    .PARAMETER ProfileName
    Profile name used with MSP360 PowerShell for MBS API (set via Set-MBSApiCredential)
    
    .EXAMPLE
    Get-MBSAPIBuild -ProfileName profile

    List all available agent builds.

    .EXAMPLE
    Get-MBSAPIBuild -Type Windows -ProfileName profile

    Get available build version and link for Windows backup agent.

    .EXAMPLE
    Get-MBSAPIBuild -Type RMM -ProfileName profile

    Get available build version and link for RMM agent.
    
    .INPUTS
    None

    .OUTPUTS
    System.Management.Automation.PSCustomObject
    
    .NOTES
        Author: MSP360 Onboarding Team

    .LINK
        https://mspbackups.com/AP/Help/powershell/cmdlets/api/get-mbsapibuild
    #>
    
    [CmdletBinding()]
    param (
        #
        [Parameter(Mandatory=$False, HelpMessage="Build type.")]
        [ValidateSet("Windows","VMEdition","LinuxDEB","LinuxRPM","macOS","RMM")]
        [string]
        $Type,
        #
        [Parameter(Mandatory=$false, HelpMessage="The profile name, which must be unique.")]
        [string]
        $ProfileName
    )
    
    begin {
       
    }
    
    process {
        Write-Verbose -Message ("$($PSCmdlet.MyInvocation.MyCommand.Name): URL: " + (Get-MBSApiUrl).Builds)
        Write-Verbose -Message "$($PSCmdlet.MyInvocation.MyCommand.Name): GET Request"
        [MBS.API.BuildModels[]]$Builds = Invoke-RestMethod -Uri (Get-MBSApiUrl).Builds -Method Get -Headers (Get-MBSAPIHeader -ProfileName $ProfileName) | Convert-PSObjectToHash
        switch ($Type) {
            {$_ -in "Windows","macOS"} {return $Builds|Where-Object {$_.Type -eq $Type}}
            "VMEdition" {return $Builds|Where-Object {$_.Type -eq "Virtual Machine Edition"}}
            "LinuxDEB" {return $Builds|Where-Object {$_.Type -eq "Linux (deb)"}}
            "LinuxRPM" {return $Builds|Where-Object {$_.Type -eq "Linux (rpm)"}}
            "RMM" {return $Builds|Where-Object {$_.Type -eq "RMM Agent"}}
            Default {return $Builds}
        }
    }
    
    end {
        
    }
}

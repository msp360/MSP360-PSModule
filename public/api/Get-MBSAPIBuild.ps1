function Get-MBSAPIBuild {
    <#
    .SYNOPSIS
    Get a list of available backup agent downloads.
    
    .DESCRIPTION
    Calls the GET api/Builds API to get a list of all available agent downloads.
    
    .PARAMETER Type
    Build operating system type
    
    .PARAMETER ProfileName
    Profile name used with MSP360 PowerShell for MBS API (set via Set-MBSApiCredential)
    
    .EXAMPLE
    Get-MBSAPIBuild -ProfileName profile

    List all available backup agents.

    .EXAMPLE
    Get-MBSAPIBuild -Type Ubuntu -ProfileName profile

    Get available build for Ubuntu operating system only    
    
    .INPUTS
    None

    .OUTPUTS
    System.Management.Automation.PSCustomObject
    
    .NOTES
        Author: Alex Volkov
    .LINK

    #>
    
    [CmdletBinding()]
    param (
        #
        [Parameter(Mandatory=$False, HelpMessage="Build Operation System type.")]
        [ValidateSet("Ubuntu", "Windows","VM_Edition","RedHat","macOS")]
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
        [MBS.API.Build[]]$Builds = Invoke-RestMethod -Uri (Get-MBSApiUrl).Builds -Method Get -Headers (Get-MBSAPIHeader -ProfileName $ProfileName) | Convert-PSObjectToHash
        switch ($Type) {
            {$_ -in "Ubuntu","Windows","macOS"} {return $Builds|Where-Object {$_.Type -eq $Type}}
            "VM_Edition" {return $Builds|Where-Object {$_.Type -eq "Virtual Machine Edition"}}
            "RedHat" {return $Builds|Where-Object {$_.Type -eq "Red Hat, Fedora, CentOS, SUSE, Oracle Linux"}}
            Default {return $Builds}
        }
    }
    
    end {
        
    }
}

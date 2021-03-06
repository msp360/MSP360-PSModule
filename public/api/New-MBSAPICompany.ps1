function New-MBSAPICompany {
    <#
    .SYNOPSIS
    Create MBS company.
    
    .DESCRIPTION
    Calls POST request to api/Companies.
    
    .PARAMETER Name
    Company name
    
    .PARAMETER StorageLimit
    Company backup limit. A negative value indicates the resource is unconstrained by a quota.
    
    .PARAMETER LicenseSettings
    Company license settings: 0 - Custom (Users have custom license settings) 1 - Global Pool(Users activate paid licenses from the global pool automatically) 2 - Company Pool(Users can activate only limited number of paid licenses from the company pool)
    
    .PARAMETER ProfileName
    Profile name used with MSP360 PowerShell for MBS API (set via Set-MBSApiCredential)
    
    .EXAMPLE
    New-MBSAPICompany -Name Contoso -StorageLimit -1 -LicenseSettings 1 -ProfileName profile

    Create company named Contoso with unlimited storage and Global licensing pool.
    
    .INPUTS
    System.Management.Automation.PSCustomObject
    String

    .OUTPUTS
    String

    .NOTES
        Author: Alex Volkov
    .LINK

    #>
    
    [CmdletBinding()]
    param (
        [Parameter(Mandatory=$true, HelpMessage="Company name",ValueFromPipelineByPropertyName, ValueFromPipeline=$true)]
        [string]$Name,
        [Parameter(Mandatory=$false, HelpMessage="Company backup limit. A negative value indicates the resource is unconstrained by a quota.")]
        [string]$StorageLimit,
        [Parameter(Mandatory=$false, HelpMessage="Company license settings: 0 - Custom (Users have custom license settings) 1 - Global Pool(Users activate paid licenses from the global pool automatically) 2 - Company Pool(Users can activate only limited number of paid licenses from the company pool)")]
        [string]$LicenseSettings,
        #
        [Parameter(Mandatory=$false, HelpMessage="The profile name, which must be unique.")]
        [string]
        $ProfileName
    )
    
    begin {
        $headers = Get-MBSAPIHeader -ProfileName $ProfileName
    }
    
    process {
        $CompaniesPost = @{
            Name = $Name
            StorageLimit = $StorageLimit
            LicenseSettings = $LicenseSettings
        }
        Write-Verbose -Message ("$($PSCmdlet.MyInvocation.MyCommand.Name): URL: " + ((Get-MBSApiUrl).Companies))
        Write-Verbose -Message ("$($PSCmdlet.MyInvocation.MyCommand.Name): POST Request: " + ($CompaniesPost | ConvertTo-Json))
        $Companies = Invoke-RestMethod -Uri (Get-MBSApiUrl).Companies -Method POST -Headers $headers -Body ($CompaniesPost|ConvertTo-Json) -ContentType 'application/json'
        return $Companies
    }
    
    end {
        
    }
}

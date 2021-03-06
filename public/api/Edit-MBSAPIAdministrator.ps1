function Edit-MBSAPIAdministrator {
    <#
    .SYNOPSIS
    Changes properties of an existing MBS admin
    
    .DESCRIPTION
    Calls the PUT api/Administrators API to edit properties of an existing MBS administrator
    
    .PARAMETER AdminID
    ID of the admin that you are editing. Use Get-MBSAPIAdministrator to determine
    
    .PARAMETER FirstName
    First Name
    
    .PARAMETER LastName
    Last name
    
    .PARAMETER Companies
    List of companies the admin should have access to
    
    .PARAMETER Enabled
    Whether the admin is to be enabled.
    
    .PARAMETER Password
    The administrator's password.
    
    .PARAMETER ProfileName
	Profile name used with MSP360 PowerShell for MBS API (set via Set-MBSApiCredential)
    
    .PARAMETER PermissionsModels
    JSON permissions for the administrator.  Valid fields can be found here: https://api.mspbackups.com/Help/ResourceModel?modelName=PermissionsModels Example can be found here: https://api.mspbackups.com/Help/Api/POST-api-Administrators
    
    .EXAMPLE
    Edit-MBSAPIAdministrator -ProfileName ao -AdminID 0b7e0a79-78e9-493e-af72-764f21960b05 -password (ConvertTo-SecureString -force -asplaintext 'Changed') -FirstName admin -LastName adminson -Enabled $true -PermissionsModels $perm
    
    .INPUTS
    System.Management.Automation.PSCustomObject

    .OUTPUTS
    System.Management.Automation.PSCustomObject

    .NOTES
        Author: Andrey Oshukov
    .LINK

    #>
    
    [CmdletBinding()]
    param (
        [Parameter(Mandatory=$true, HelpMessage="Admin ID", ValueFromPipelineByPropertyName)]
        [string]$AdminID,
        [Parameter(Mandatory=$false, HelpMessage="FirstName", ValueFromPipelineByPropertyName)]
        [string]$FirstName,
        [Parameter(Mandatory=$false, HelpMessage="LastName", ValueFromPipelineByPropertyName)]
        [string]$LastName,
        [Parameter(Mandatory=$false, HelpMessage="Company", ValueFromPipelineByPropertyName)]
        [string[]]$Companies,
        [Parameter(Mandatory=$false, HelpMessage="Enabled", ValueFromPipelineByPropertyName)]
        [bool]$Enabled = $true,
        [Parameter(Mandatory=$false, HelpMessage="Password", ValueFromPipelineByPropertyName)]
        [SecureString]$Password,
        [Parameter(Mandatory=$false, HelpMessage="The profile name, which must be unique.")]
        [string]$ProfileName,
        [Parameter(Mandatory=$true, HelpMessage="The Permission set for this administrator", ValueFromPipelineByPropertyName)]
        [string]
        $PermissionsModels
    )
    begin {
        
    }
    
    process {
        $AdminPut = New-Object -TypeName PSCustomObject -Property ([ordered]@{
            adminID = $AdminID
            FirstName = $FirstName
            LastName = $LastName
            PermissionsModels = $PermissionsModels | ConvertFrom-Json
            Companies = $Companies
            Enabled = $Enabled
            })

        if ($Password) {
            $UsersPut.Add("Password", [System.Runtime.InteropServices.Marshal]::PtrToStringAuto([System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($Password)))
        }
        if (-not $AdminPut.Companies) {
            $AdminPut.PSObject.Properties.remove('Companies')
        }
        Write-Verbose -Message ("$($PSCmdlet.MyInvocation.MyCommand.Name): URL: " + (Get-MBSApiUrl).Administrators)
        Write-Verbose -Message ("$($PSCmdlet.MyInvocation.MyCommand.Name): PUT Request: " + ($AdminPut|ConvertTo-Json))
        $AdministratorID = Invoke-RestMethod -Uri (Get-MBSApiUrl).Administrators -Method Put -Headers (Get-MBSAPIHeader -ProfileName $ProfileName) -Body ($AdminPut|ConvertTo-Json) -ContentType 'application/json'
        return $AdministratorID
    }
    
    end {
        
    }
}

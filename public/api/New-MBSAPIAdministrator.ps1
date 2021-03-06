function New-MBSAPIAdministrator {
    <#
    .SYNOPSIS
    Creates an Administrator for MBS
    
    .DESCRIPTION
    Calls the POST api/Administrators API to create a new administrator according to the specified parameters.

    .PARAMETER Email
    Email address of the administrator
    
    .PARAMETER FirstName
    First name of the administrator
    
    .PARAMETER LastName
    Last name of the administrator
    
    .PARAMETER Companies
    List of companies the adminstrator will have access to.
    
    .PARAMETER Enabled
    Whether the administrator should be enabled after creation
    
    .PARAMETER Password
    Password
    
    .PARAMETER SendEmailInstruction
    Whether or not to send instructions to the new administrator
    
    .PARAMETER ProfileName
	Profile name used with MSP360 PowerShell for MBS API (set via Set-MBSApiCredential)
    
    .PARAMETER PermissionsModels
    JSON for administrator permissions. Valid fields can be found here: https://api.mspbackups.com/Help/ResourceModel?modelName=PermissionsModels Example can be found here: https://api.mspbackups.com/Help/Api/POST-api-Administrators
    
    .EXAMPLE
    PS C:\>$PermissionModels = '{
    "Users": 1,
    "StorageLimit": 0,
    "Notification": 0,
    "OnlineAccess": 0,
    "Licenses": 0,
    "Billing": 0,
    "Monitiring": 0,
    "RemoteDeploy": 1,
    "RemoteManagment": 0,
    "HelpMarketing": 0,
    "AuditLog": 0,
    "PSA": 0,
    "Administrators": 0,
    "Rebranding": 0,
    "Storage": 0,
    "ADS": 0,
    "LicenseBuy": 0,
    "LicenseActivate": 0,
    "StorageUsage": 1,
    "CapacityReport": 0,
    "GoogleApps": 0,
    "Dashboard": 0
    }'
    PS C:\>New-MBSAPIAdministrator -Email 'QQQ@test.com' -password (ConvertTo-SecureString -Force -asplaintext 'test') -SendEmailInstruction $false -FirstName admin -LastName adminson -Enabled $true -PermissionsModels $PermissionModels -ProfileName profile
    
    .INPUTS
    System.Management.Automation.PSCustomObject

    .OUTPUTS
    String

    .NOTES
        Author: Andrey Oshukov
    .LINK

    #>
    
    [CmdletBinding()]
    param (
        [Parameter(Mandatory=$true, HelpMessage="Email", ValueFromPipelineByPropertyName)]
        [string]$Email,
        [Parameter(Mandatory=$false, HelpMessage="FirstName", ValueFromPipelineByPropertyName)]
        [string]$FirstName,
        [Parameter(Mandatory=$false, HelpMessage="LastName", ValueFromPipelineByPropertyName)]
        [string]$LastName,
        [Parameter(Mandatory=$false, HelpMessage="Company", ValueFromPipelineByPropertyName)]
        [string[]]$Companies,
        [Parameter(Mandatory=$false, HelpMessage="Enabled", ValueFromPipelineByPropertyName)]
        [bool]$Enabled = $true,
        [Parameter(Mandatory=$true, HelpMessage="Password", ValueFromPipelineByPropertyName)]
        [SecureString]$Password,
        [Parameter(Mandatory=$false, HelpMessage="Send Email Instruction", ValueFromPipelineByPropertyName)]
        [bool]$SendEmailInstruction,
        [Parameter(Mandatory=$false, HelpMessage="The profile name, which must be unique.")]
        [string]$ProfileName,
        [Parameter(Mandatory=$true, HelpMessage="The Permission set for this administrator", ValueFromPipelineByPropertyName)]
        [string]
        $PermissionsModels
    )
    begin {
        
    }
    process {
        $AdminPost = New-Object -TypeName PSCustomObject -Property ([ordered]@{
            Email = $Email.trim()
            InitialPassword = [System.Runtime.InteropServices.Marshal]::PtrToStringAuto([System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($Password))
            SendInstruction = $SendEmailInstruction
            FirstName = $FirstName
            LastName = $LastName
            PermissionsModels = $PermissionsModels | ConvertFrom-Json
            Companies = $Companies
            Enabled = $Enabled
            })
        if ($null -eq $AdminPost.Companies) {
            $AdminPost.PSObject.Properties.remove('Companies')
        }
        Write-Verbose -Message ("$($PSCmdlet.MyInvocation.MyCommand.Name): URL: " + ((Get-MBSApiUrl).Administrators))
        Write-Verbose -Message ("$($PSCmdlet.MyInvocation.MyCommand.Name): POST Request: " + ($AdminPost | ConvertTo-Json))
        $AdministratorID = Invoke-RestMethod -Uri (Get-MBSApiUrl).Administrators -Method Post -Headers (Get-MBSAPIHeader -ProfileName $ProfileName) -Body ($AdminPost|ConvertTo-Json) -ContentType 'application/json'
        return $AdministratorID
    }
    end {
    }
}

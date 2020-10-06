function Edit-MBSUserAccount {
   <#
    .SYNOPSIS
    Edit MBS user account.
    
    .DESCRIPTION
    The cmdlet edits MBS user account by specifying MBS user credentials or with simple Windows authentication mode.
    
    .PARAMETER User
    MBS User account name
    
    .PARAMETER Password
    MBS User account password

    .PARAMETER SSL
    Use SSL for user backup storages. 
    
    .PARAMETER WindowsAuth
    Use Windows authorization

    .PARAMETER DomainOnly
    Don't use Windows Auth if user is not in the domain
    
    .PARAMETER WindowsAuthDirectMode
    Use Windows authorization (direct mode)
    
    .PARAMETER ADBridgeEndpoint
    Active Directory Bridge endpoint
    
    .PARAMETER MasterPassword
    Master password. Should be specified if configuration is protected by master password. Use -MasterPassword (ConvertTo-SecureString -string "Your_Password" -AsPlainText -Force)
    
    .EXAMPLE
    PS C:\> Edit-MBSUserAccount -User backupuser -Password (ConvertTo-SecureString -string 'My_Password' -AsPlainText -Force)

    Edit MBS backup user credentials.
    
    .EXAMPLE
    PS C:\> Edit-MBSUserAccount -User backupuser -Password (ConvertTo-SecureString -string 'My_Password' -AsPlainText -Force) -SSL $false

    Edit MBS backup user account and disable using SSL for backup storages.

    .EXAMPLE
    PS C:\> Edit-MBSUserAccount -WindowsAuth -ADBridgeEndpoint http://ADBRIDGE-PC:8900/ADGateway/Service/

    Login using Windows authentication.

    .EXAMPLE
    PS C:\> Edit-MBSUserAccount -WindowsAuthD

    Login using Windows authentication in direct mode.

    .INPUTS
        None

    .OUTPUTS
        String

    .NOTES
        Author: Ivan Skorin

    .LINK
        https://kb.msp360.com/managed-backup-service/powershell-module/cmdlets/backup-agent/edit-mbsuseraccount
    #>
    [CmdletBinding()]
    param (
        [Parameter(Mandatory=$true, HelpMessage="MBS User account name", ParameterSetName='MBSUser')]
        [String]
        $User,
        [Parameter(Mandatory=$true, HelpMessage="MBS User account password. Use -Password (ConvertTo-SecureString -string ""Your_Password"" -AsPlainText -Force)", ParameterSetName='MBSUser')]
        [SecureString]
        $Password,
        [Parameter(Mandatory=$false, HelpMessage="Use SSL.", ParameterSetName='MBSUser')]
        [Nullable[boolean]]
        $SSL,
        [Parameter(Mandatory=$true, HelpMessage="Use Windows authorization", ParameterSetName='WindowsAuth')]
        [Switch]
        $WindowsAuth,
        [Parameter(Mandatory=$false, HelpMessage="Don't use Windows Auth if user is not in the domain", ParameterSetName='WindowsAuth')]
        [Switch]
        $DomainOnly,
        [Parameter(Mandatory=$false, HelpMessage="Use Windows authorization (direct mode)", ParameterSetName='WindowsAuthDirectMode')]
        [Switch]
        $WindowsAuthDirectMode,
        [Parameter(Mandatory=$true, HelpMessage="Active Directory Bridge endpoint", ParameterSetName='WindowsAuth')]
        [String]
        $ADBridgeEndpoint,
        # Parameter - Master password
        [Parameter(Mandatory=$false, HelpMessage="Specify Master password. Use -MasterPassword (ConvertTo-SecureString -string ""Your_Password"" -AsPlainText -Force)")]
        [SecureString]
        $MasterPassword
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
        function Set-Argument {
            if ($User){$Argument += " -e $User"}
            if ($Password){$Argument += " -p """+([System.Runtime.InteropServices.Marshal]::PtrToStringAuto([System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($Password)))+""""}
            if ($WindowsAuth){$Argument += " -winauth"}
            if ($DomainOnly){$Argument += " -domainOnly"}
            if ($null -ne $SSL){
                if ($SLL) {
                    $Argument += " -ssl yes"
                }else{
                    $Argument += " -ssl no"
                }
            }
            if ($WindowsAuthDirectMode){$Argument += " -winauthD"}
            if ($ADBridgeEndpoint){$Argument += " -adep $ADBridgeEndpoint"}
                
            return $Argument
        }

        $Arguments = 'editaccount'
        $Arguments += Set-Argument

        $Result = Start-MBSProcess -CMDPath CBB.CBBCLIPath -CMDArguments $Arguments -Output short -MasterPassword $MasterPassword
    }
    
    end {
        
    }
}
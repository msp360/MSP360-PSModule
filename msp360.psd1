@{
    # If authoring a script module, the RootModule is the name of your .psm1 file
    RootModule = 'msp360.psm1'

    Author = 'Andrew Anushin <services@msp360.com>'

    CompanyName = 'MSP360'

    ModuleVersion = '2.40.0'

    # Use the New-Guid command to generate a GUID, and copy/paste into the next line
    GUID = '69079da4-a0de-426d-bece-ae139c8b5f1a'

    Copyright = '(c) 2022 Andrew Anushin. All rights reserved.'

    Description = 'The module includes cmdlets to manage MSP360 (CloudBerry) Backup agent, MBS API and tools.'

    # Minimum PowerShell version supported by this module (optional, recommended)
    PowerShellVersion = '3.0'

    # Which PowerShell Editions does this module work with? (Core, Desktop)
    #CompatiblePSEditions = @('Desktop', 'Core')

    # Which PowerShell functions are exported from your module? (eg. Get-CoolObject)
    FunctionsToExport = '*'

    # Which PowerShell aliases are exported from your module? (eg. gco)
    AliasesToExport = '*'

    # Which PowerShell variables are exported from your module? (eg. Fruits, Vegetables)
    VariablesToExport = '*'

    # PowerShell Gallery: Define your module's metadata
    PrivateData = @{
        PSData = @{
            #Prerelease = 
            # What keywords represent your PowerShell module? (eg. cloud, tools, framework, vendor)
            Tags = @('MBS', 'MSP360', 'CloudBerry', 'API', 'OnlineBackup', 'Backup', 'MSP', 'mspbackups')

            # What software license is your code being released under? (see https://opensource.org/licenses)
            LicenseUri = 'https://opensource.org/licenses/Apache-2.0'

            # What is the URL to your project's website?
            ProjectUri = 'https://mspbackups.com/AP/Help/powershell'

            # What is the URI to a custom icon file for your project? (optional)
            IconUri = 'https://www.msp360.com/img/pages/company/downloads/msp360-logo.png?v=2'

            # What new features, bug fixes, or deprecated features, are part of this release?
            ReleaseNotes = @"
- New cmdlets:
    - Start-MBSAgentService (https://mspbackups.com/AP/Help/powershell/cmdlets/tools/start-mbsagentservice)
    - Restart-MBSAgentService (https://mspbackups.com/AP/Help/powershell/cmdlets/tools/restart-mbsagentservice)
    - Stop-MBSAgentService (https://mspbackups.com/AP/Help/powershell/cmdlets/tools/stop-mbsagentservice)
- Enhancement:
    - New-MBSAPICompany, Get-MBSAPICompany, Edit-MBSAPICompany: added company backup destination ID parameter and output
    - New-MBSAPIAdministrator, Get-MBSAPIAdministrator, Edit-MBSAPIAdministrator: added AccountType parameter and output (this value is intended for future RBAC)
    - New-MBSAPIAdministratorPermission: added -ManageImmutability parameter
    - New-MBSNBFPlanSchedule: removed -Once switch (once frequency not supported in NBF)
    - New-MBSNBFPlanSchedule: added -RepeatInterval and -RepeatStartDate parameters (MBS Backup Agent 7.5 release)
    - Test-MBSConnection: suppress warning messages if TCP test succeeded, but ICMP ping failed
"@
        }
    }
}

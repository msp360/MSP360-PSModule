@{
    # If authoring a script module, the RootModule is the name of your .psm1 file
    RootModule = 'msp360.psm1'

    Author = 'Andrew Anushin <services@msp360.com>'

    CompanyName = 'MSP360'

    ModuleVersion = '2.53.0'

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
- Bugfix:
    - Get-MBSBackupPlan: NBF plans - incorrect frequency is set if 'DayOfWeek' includes all days and the initial frequency is not 'Weekly'
    - Get-MBSBackupPlan: NBF plans - 'DayOfWeek' for monthly incremental schedule is not set
    - Get-MBSBackupPlan: NBF plans - 'DayOfMonth' value is not set if frequency is 'DayOfMonth'
    - Get-MBSBackupPlan: NBF plans - 'RepeatInterval' and 'RepeatStartDate' are not set
- Enhancement:
    - Get-MBSBackupPlan: RAW output type now returns NBF backup plans in their source (not converted) format in the same form as CBF backup plans
    - Edit-MBSBackupPlan: adding and disabling file/folder exclusions for Image-Based backup plans improvements (MBS Backup Agent release 7.8.2)
    - Stop-MBSPlan: force stop improvements (MBS Backup Agent release 7.8.2)
    - Get-MBSAgentSetting, Get-MBSStorageAccount: added checks for cases when 'enginesettings.list' is empty, corrupt or incorrect format
    - Get-MBSAPIBuild: added RMM build type
    - Get-MBSAPIBuild: renamed build type values for convenience. Possible values - 'Windows','VMEdition','LinuxDEB','LinuxRPM','macOS','RMM'
    - Request-MBSAPIBuild: introduced enums for -BuildType and -BuildEditions parameters
    - Remove-MBSAgent, Remove-CONAgent, Remove-RMMAgent: output message improvements
    - Set-MSP360ModuleSettings: added -SkipEngineSettingsListCheck parameter for cases when some cmdlets do not work properly if 'enginesettings.list' is not present (e.g. after MBS Backup Agent clean install, before assigning a backup user)
"@
        }
    }
}

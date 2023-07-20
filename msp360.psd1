@{
    # If authoring a script module, the RootModule is the name of your .psm1 file
    RootModule = 'msp360.psm1'

    Author = 'MSP360 Onboarding Team <services@msp360.com>'

    CompanyName = 'MSP360'

    ModuleVersion = '3.29.0'

    # Use the New-Guid command to generate a GUID, and copy/paste into the next line
    GUID = '69079da4-a0de-426d-bece-ae139c8b5f1a'

    Copyright = '(c) 2023 MSP360. All rights reserved.'

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
    - Edit-MBSNBFBackupPlan: cannot switch to FFI schedule when GFS settings are enabled and vice versa
    - Get-MBSBackupPlan: 'Cannot bind argument to parameter 'ReferenceObject' because it is null.' error when parsing full shcedule values in some cases
    - New-MBSNBFFileBackupPlan, New-MBSNBFIBBBackupPlan, Edit-MBSNBFBackupPlan: 'Incorrect value for -gfsYMonth. The value '...' must be integer' error if -GFSMonthOfTheYear parameter is specified
    - New-MBSNBFFileBackupPlan, New-MBSBackupPlan, Edit-MBSNBFBackupPlan, Edit-MBSBackupPlan: incorrect separators used when parsing array values for -SkipFolder, -IncludeFilesMask, -ExcludeFilesMask parameters
    - New-MBSNBFFileBackupPlan: -SkipFolder parameter does not work
    - Edit-MBSBackupPlan: cannot combine backup chain parameters with other parameters in one command
- Enhancement:
    - Install-MBSAgent, Install-RMMAgent, Install-CONAgent: URL request and error handling improvements
    - Get-MBSAPIBuild: added 'RMMLinuxDEB','RMMLinuxRPM','RMMmacOS' values and renamed 'RMM' to 'RMMWindows' for the -Type parameter
"@
        }
    }
}

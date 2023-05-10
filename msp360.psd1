@{
    # If authoring a script module, the RootModule is the name of your .psm1 file
    RootModule = 'msp360.psm1'

    Author = 'Andrew Anushin <services@msp360.com>'

    CompanyName = 'MSP360'

    ModuleVersion = '3.19.0'

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
    - Edit-MBSNBFBackupPlan (https://mspbackups.com/AP/Help/powershell/cmdlets/backup-agent/edit-mbsnbfbackupplan)
    - Convert-MBSBackupPlanToNBF (https://mspbackups.com/AP/Help/powershell/cmdlets/backup-agent/convert-mbsbackupplantonbf)
- Bugfix:
    - New-MBSNBFFileBackupPlan: -KeepVersionPeriod parameter does not work if backup agent version is from 7.8.0 to 7.8.2
    - New-MBSBackupPlan: schedule set incorrectly when incremental and full schedules are specified
    - Edit-MBSBackupPlan: all backup chain parameters should be specified even if only one parameter change is needed
    - Edit-MBSBackupPlan: backup chain is disabled if next backup plan ID in chain not specified in command for backup agent version 7.2.1 and higher
- Enhancement:
    - New-MBSNBFBackupPlanCommonOption, Get-MBSBackupPlan: added support for -ForeverForwardIncremental and -IntelligentRetention parameters
    - New-MBSNBFBackupPlanCommonOption: changed value type of parameter -KeepVersionPeriod from Timespan to Integer
    - New-MBSBackupPlanCommonOption: changed value type of parameters -KeepVersionPeriod and -DelayPurgePeriod from Timespan to Integer
    - New-MBSBackupPlanCommonOption, New-MBSNBFBackupPlanCommonOption: added backup chain parameters
    - New-MBSNBFFileBackupPlan: added -KeepEFSEncryption parameter to back up EFS files as encrypted (MBS Backup Agent release 7.6.0)
    - Edit-MBSBackupPlan: changed names for backup chain parameters (check help: https://mspbackups.com/AP/Help/powershell/cmdlets/backup-agent/edit-mbsbackupplan)
    - Edit-MBSBackupPlan: added -SyntheticFull parameter for Image-Based backup plans
    - Edit-MBSBackupPlan: added GlacierInstantRetrieval AWS S3 storage class support
    - Edit-MBSBackupPlan: code optimization and minor bugfixes
    - Updated help for Edit-MBSBackupPlan
"@
        }
    }
}

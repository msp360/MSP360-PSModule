@{
    # If authoring a script module, the RootModule is the name of your .psm1 file
    RootModule = 'msp360.psm1'

    Author = 'Aleksey Volkov <services@msp360.com>'

    CompanyName = 'MSP360'

    ModuleVersion = '0.10.1'

    # Use the New-Guid command to generate a GUID, and copy/paste into the next line
    GUID = '69079da4-a0de-426d-bece-ae139c8b5f1a'

    Copyright = '(c) 2020 Aleksey Volkov. All rights reserved.'

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
            ProjectUri = 'https://kb.cloudberrylab.com/managed-backup-service/powershell-module/get-started/'

            # What is the URI to a custom icon file for your project? (optional)
            IconUri = 'https://www.cloudberrylab.com/img/logos/cbl/CloudBerry-Lab-is-now-MSP360-light-bg.svg'

            # What new features, bug fixes, or deprecated features, are part of this release?
            ReleaseNotes = @"
- New cmdlets:
    - Get-MBSLicense cmdlet (https://kb.msp360.com/managed-backup-service/powershell-module/cmdlets/backup-agent/get-mbslicense)

- Features
    - Rename New-MBSApiStorageAccountDestination to New-MBSAPIStorageAccountDestination
    
- Bug fix:
    - Bug: PackageManagement and PowerShellGet not updated upon install

- Tests:
    - Tests: Get-MBSPlanHistory
    - Tests bug: Get-MBSDiskVolume.Specific diskId (Guid)

- Article:
    - Article: Update get-mbsbackupplan article in the KB
"@
        }
    }
}

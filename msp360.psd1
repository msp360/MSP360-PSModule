@{
    # If authoring a script module, the RootModule is the name of your .psm1 file
    RootModule = 'msp360.psm1'

    Author = 'Andrew Anushin <services@msp360.com>'

    CompanyName = 'MSP360'

    ModuleVersion = '2.24.0'

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
- Critical bugfix:
    - Cannot update MSP360 PowerShell Module to version 2.x from older versions (Error: Authenticode issuer ... of the new module 'msp360' with version '2.21.143' ... is not matching with the authenticode issuer ... of the previously-installed module 'msp360' with version '1.x')
- New cmdlets:
    - Install-CONAgent (https://mspbackups.com/AP/Help/powershell/cmdlets/connect-agent/install-conagent)
    - Get-CONAgent (https://mspbackups.com/AP/Help/powershell/cmdlets/connect-agent/get-conagent)
    - Remove-CONAgent (https://mspbackups.com/AP/Help/powershell/cmdlets/connect-agent/remove-conagent)
    - Install-RMMAgent (https://mspbackups.com/AP/Help/powershell/cmdlets/rmm-agent/install-rmmagent)
    - Get-RMMAgent (https://mspbackups.com/AP/Help/powershell/cmdlets/rmm-agent/get-rmmagent)
    - Remove-RMMAgent (https://mspbackups.com/AP/Help/powershell/cmdlets/rmm-agent/remove-rmmagent)
- Enhancement:
    - Install-MSP360Module: -CleanInstall switch to remove all previous versions of the module before install or update to the latest or requested version
    - New-MBSBackupPlan, New-MBSNBFIBBBackupPlan: added -KeepBitLocker, -KeepBitLockerEnableForVolume, and -KeepBitLockerDisableForVolume parameters
    - Edit-MBSBackupPlan: added -KeepBitLockerEnableForVolume and -KeepBitLockerDisableForVolume parameters
    - New-MBSNBFIBBBackupPlan: added 'FixedVolumes' value for -BackupVolumes parameter
    - Get-MBSBackupPlan: added output of 'BackupOptions' for volumes in NBF Image-Based backup plans
    - New-MBSBackupPlan, New-MBSNBFIBBBackupPlan: added -ExcludeItem parameter for Image-Based backup plans
    - New-MBSBackupPlan: added -ExcludeFile and -ExcludeDirectory parameters for File-Level backup plans
    - Edit-MBSBackupPlan: added -DisableExcludeFilesFolders switch to remove and disable exclusions for Image-Based backup plans
"@
        }
    }
}

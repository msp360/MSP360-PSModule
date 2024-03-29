---
Title: Set-MSP360ModuleSettings
HeadTitle: Set-MSP360ModuleSettings
Meta: 'Set-MSP360ModuleSettings'
RedirectUrl: ''
---
# Set-MSP360ModuleSettings
***

Set global settings for MSP360 PS module custom parameters.

```

Set-MSP360ModuleSettings
		[[-CBBPath] <String>]
		[[-CBBProgramData] <String>]
		[[-SkipEngineSettingsListCheck] <Boolean>]
		[[-SkipCompression] <Boolean>]
		[[-SkipEncryption] <Boolean>]
		[[-SkipStorageClass] <Boolean>]
		[[-SkipSSE] <Boolean>]
		[[-SkipVSS] <Boolean>]
		[<CommonParameters>]





```

***

## Description

Saves provided settings to a global object of type MBS.PSModule.Settings for use in the MSP360 PS module to alter different options.

***

## Examples


### Example 1:     

```
PS C:\> Set-MSP360ModuleSettings -CBBPath "C:\Program Files\MSP360\Online Backup" -CBBProgramData "C:\ProgramData\Online Backup" -SkipSSE $true
```


***

## Parameters

>**-CBBPath** 

Path to the Online Backup application folder. Used by Get-MBSAgent cmdlet to skip registry checks. Takes effect only if CBBProgramData is also specified.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 1 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-CBBProgramData** 

Path to Online Backup's configuration folder. Used by Get-MBSAgent cmdlet to skip registry checks. Takes effect only if CBBPath is also specified.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 2 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-SkipEngineSettingsListCheck** 

Skip check for "enginesettings.list" file and set the program data folder path with the default value or specified in the CBBProgramData parameter
        
|       |     |
|-------|-----|
| Type | Boolean |
| Required: | false | 
| Position: | 3 |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-SkipCompression** 

Ignore compression option in New-MBSBackupPlan, Edit-MBSBackupPlan, New-MBSNBFFileBackupPlan, New-MBSNBFIBBBackupPlan cmdlets
        
|       |     |
|-------|-----|
| Type | Boolean |
| Required: | false | 
| Position: | 4 |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-SkipEncryption** 

Ignore encryption options in New-MBSBackupPlan, Edit-MBSBackupPlan, New-MBSNBFFileBackupPlan, New-MBSNBFIBBBackupPlan cmdlets
        
|       |     |
|-------|-----|
| Type | Boolean |
| Required: | false | 
| Position: | 5 |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-SkipStorageClass** 

Ignore storage class option in New-MBSBackupPlan, Edit-MBSBackupPlan, New-MBSNBFFileBackupPlan, New-MBSNBFIBBBackupPlan cmdlets. Relevant for storage accounts with several storage tiers (e.g. AWS S3, Azure)
        
|       |     |
|-------|-----|
| Type | Boolean |
| Required: | false | 
| Position: | 6 |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-SkipSSE** 

Ignore SSE option in New-MBSBackupPlan, Edit-MBSBackupPlan, New-MBSNBFFileBackupPlan, New-MBSNBFIBBBackupPlan cmdlets. Relevant for AWS S3 storage only
        
|       |     |
|-------|-----|
| Type | Boolean |
| Required: | false | 
| Position: | 7 |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-SkipVSS** 

Ignore VSS options in New-MBSBackupPlan, Edit-MBSBackupPlan, New-MBSNBFFileBackupPlan, New-MBSNBFIBBBackupPlan cmdlets
        
|       |     |
|-------|-----|
| Type | Boolean |
| Required: | false | 
| Position: | 8 |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |



>**CommonParameters**

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see [about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216). 


## Inputs



None



## Outputs



None


## Notes

Author: MSP360 Onboarding Team




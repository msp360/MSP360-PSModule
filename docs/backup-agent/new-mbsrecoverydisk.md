---
Title: New-MBSRecoveryDisk
HeadTitle: New-MBSRecoveryDisk
Meta: 'New-MBSRecoveryDisk'
RedirectUrl: ''
---
# New-MBSRecoveryDisk
***

Create recovery USB or iso image

```

New-MBSRecoveryDisk
		-DestinationUSBDrive <String>
		[-Password <SecureString>]
		[-AddSystemDrivers]
		[-AdditionalDriversPath <String>]
		[-ScratchSpace <String>]
		[-RADirectory <String>]
		[-NoPrompt]
		[-MasterPassword <SecureString>]
		[<CommonParameters>]

New-MBSRecoveryDisk
		-DestinationISOPath <String>
		[-Password <SecureString>]
		[-AddSystemDrivers]
		[-AdditionalDriversPath <String>]
		[-ScratchSpace <String>]
		[-RADirectory <String>]
		[-NoPrompt]
		[-MasterPassword <SecureString>]
		[<CommonParameters>]





```

***

## Description

Create recovery USB drive ot ISO image for bare-metal image-based restore.

***

## Examples


### Example 1: Create recovery ISO file with default settings.    

```
PS C:\> New-MBSRecoveryDisk -DestinationISOPath D:\iso\MSP360Restore.iso
```
 
### Example 2: Create recovery USB drive with default settings.    

```
PS C:\> New-MBSRecoveryDisk -DestinationUSBDrive D
```
 
### Example 3: Create recovery USB drive with password, system and additional drivers.    

```
PS C:\> New-MBSRecoveryDisk -DestinationUSBDrive D -Password (ConvertTo-SecureString -string "Your_Password" -AsPlainText -Force) -AddSystemDrivers -AdditionalDriversPath "c:\drivers" -NoPrompt
```


***

## Parameters

>**-DestinationUSBDrive** 

Specify destination USB drive
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-DestinationISOPath** 

Specify destination iso-image path
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Password** 

Settings password. Use -Password (ConvertTo-SecureString -string "Your_Password" -AsPlainText -Force)
        
|       |     |
|-------|-----|
| Type | SecureString |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-AddSystemDrivers** 

Add drivers installed in system
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-AdditionalDriversPath** 

Add drivers from specified folder
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ScratchSpace** 

Sets the available scratch space, in megabytes
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Accepted values: |  0, 256, 512  |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-RADirectory** 

Remote access installation directory
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-NoPrompt** 

Skip 'press any key to boot from cd/dvd' at startup
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-MasterPassword** 

Master password. Should be specified if configuration is protected by master password. Use -MasterPassword (ConvertTo-SecureString -string "Your_Password" -AsPlainText -Force)
        
|       |     |
|-------|-----|
| Type | SecureString |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |



>**CommonParameters**

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see [about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216). 


## Inputs



None.



## Outputs



None.


## Notes

Author: MSP360 Onboarding Team




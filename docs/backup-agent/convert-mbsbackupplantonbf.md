---
Title: Convert-MBSBackupPlanToNBF
HeadTitle: Convert-MBSBackupPlanToNBF
Meta: 'Convert-MBSBackupPlanToNBF'
RedirectUrl: ''
---
# Convert-MBSBackupPlanToNBF
***

Converts the Legacy plan to the New Backup Format (NBF).

```

Convert-MBSBackupPlanToNBF
		[[-ID] <String>]
		[[-Name] <String>]
		[[-MasterPassword] <SecureString>]
		[[-PurgeLegacy] <Boolean>]
		[-Whatif]
		[-Force]
		[-PassThru]
		[<CommonParameters>]





```

***

## Description

Converts the Legacy backup format plan to the New Backup Format (NBF). The minimum supported version of the MBS backup agent is 7.8.3.

***

## Examples


### Example 1: Convert all Legacy file backup plans to New Backup Format.    

```
PS C:\> Get-MBSBackupPlan -StorageType All -PlanFormat CBF -PlanType File-Level | Convert-MBSBackupPlanToNBF -PurgeLegacy
```
 
### Example 2: Test conversion to New Backup Format of a backup plan named "test". If the command outputs warnings, the convertion should be performed with the -Force switch to ignore them.    

```
PS C:\> Convert-MBSBackupPlanToNBF -Name test -Whatif
```


***

## Parameters

>**-ID** 

Specify Plan ID.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 1 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-Name** 

Specify Plan Name.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 2 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-MasterPassword** 

Master password. Should be specified if configuration is protected by master password. Use -MasterPassword (ConvertTo-SecureString -string "Your_Password" -AsPlainText -Force)
        
|       |     |
|-------|-----|
| Type | SecureString |
| Required: | false | 
| Position: | 3 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-PurgeLegacy** 

Allows to enable/disable purging of legacy data for converted plan. Possible values: $true/$false
        
|       |     |
|-------|-----|
| Type | Boolean |
| Required: | false | 
| Position: | 4 |
| Default value: | True |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Whatif** 


        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Force** 

Convert forcefully, ignoring warnings.
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-PassThru** 


        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |



>**CommonParameters**

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see [about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216). 













## Notes

Author: MSP360 Onboarding Team




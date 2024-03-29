---
Title: New-MBSConsistencyCheckPlan
HeadTitle: New-MBSConsistencyCheckPlan
Meta: 'New-MBSConsistencyCheckPlan'
RedirectUrl: ''
---
# New-MBSConsistencyCheckPlan
***

Creates new consistency check plan.

```

New-MBSConsistencyCheckPlan
		[-StorageAccount] <StorageAccount>
		[[-MasterPassword] <SecureString>]
		[[-EncryptionPassword] <SecureString>]
		[[-Schedule] <Schedule>]
		[-SkipLegacyBackupFormat]
		[<CommonParameters>]





```

***

## Description

Creates consistency check plan for specified storage. The minimum supported version of the MBS backup agent is 7.2.1.

***

## Examples


### Example 1: Create consistency check plan for storage destination with name "AWS S3"    

```
PS C:\> New-MBSConsistencyCheckPlan -StorageAccount (Get-MBSStorageAccount | where {$_.DisplayName -eq "AWS S3"})
```
 
### Example 2: Create consistency check plan for storage destination with name "AWS S3" that contains encrypted data    

```
PS C:\> New-MBSConsistencyCheckPlan -StorageAccount (Get-MBSStorageAccount | where {$_.DisplayName -eq "AWS S3"}) -EncryptionPassword (ConvertTo-SecureString -string "Your_Password" -AsPlainText -Force)
```
 
### Example 3: Create consistency check plan for storage destination with name "AWS S3" and skip constistency check for legacy backup format    

```
PS C:\> New-MBSConsistencyCheckPlan -StorageAccount (Get-MBSStorageAccount | where {$_.DisplayName -eq "AWS S3"}) -SkipLegacyBackupFormat
```


***

## Parameters

>**-StorageAccount** 

Specify storage account object. Use Get-MBSStorageAccount cmdlet to list storages. Example: (Get-MBSStorageAccount -Name "AWS S3")
        
|       |     |
|-------|-----|
| Type | StorageAccount |
| Required: | true | 
| Position: | 1 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-MasterPassword** 

Master password. Should be specified if configuration is protected by master password. Use -MasterPassword (ConvertTo-SecureString -string "Your_Password" -AsPlainText -Force)
        
|       |     |
|-------|-----|
| Type | SecureString |
| Required: | false | 
| Position: | 2 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-EncryptionPassword** 

Encryption password. Use -EncryptionPassword (ConvertTo-SecureString -string "Your_Password" -AsPlainText -Force)
        
|       |     |
|-------|-----|
| Type | SecureString |
| Required: | false | 
| Position: | 3 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Schedule** 

Specify schedule. Use New-MBSPlanSchedule to create an object.
        
|       |     |
|-------|-----|
| Type | Schedule |
| Required: | false | 
| Position: | 4 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-SkipLegacyBackupFormat** 

Skip constistency check for legacy backup format
        
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


## Inputs



None.



## Outputs



None.


## Notes

Author: MSP360 Onboarding Team




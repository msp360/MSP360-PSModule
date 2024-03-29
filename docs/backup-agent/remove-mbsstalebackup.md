---
Title: Remove-MBSStaleBackup
HeadTitle: Remove-MBSStaleBackup
Meta: 'Remove-MBSStaleBackup'
RedirectUrl: ''
---
# Remove-MBSStaleBackup
***

Removes backed up folders and files which are excluded from the backup plan.

```

Remove-MBSStaleBackup
		[-StorageAccount] <StorageAccount>
		[[-MasterPassword] <SecureString>]
		[-WhatIf]
		[<CommonParameters>]





```

***

## Description

Compares already backed up folder and files with backup items in the backup plan. The cmdlet processes data uploaded with CBF (Legacy) file-level backup plans only.

***

## Examples


### Example 1: Remove stale backups for storage account with the name "AWS".    

```
PS C:\> Remove-MBSStaleBackup -StorageAccount (Get-MBSStorageAccount -Name "AWS")
```
 
### Example 2: Emulate removing stale backups for storage account with the name "AWS".    

```
PS C:\> Remove-MBSStaleBackup -StorageAccount (Get-MBSStorageAccount -Name "AWS") -WhatIf
```
 
### Example 3: Remove stale backups for all storage account.    

```
PS C:\> Get-MBSStorageAccount | Remove-MBSStaleBackup
```
 
### Example 4: Remove stale backups for all storage account if the backup agent is protected with the master password.    

```
PS C:\> Get-MBSStorageAccount | Remove-MBSStaleBackup -MasterPassword (ConvertTo-SecureString -string "Your_Password" -AsPlainText -Force)
```


***

## Parameters

>**-StorageAccount** 

Specify the storage account object. Use Get-MBSStorageAccount cmdlet to list storages. Example: (Get-MBSStorageAccount -Name "AWS S3")
        
|       |     |
|-------|-----|
| Type | StorageAccount |
| Required: | true | 
| Position: | 1 |
| Default value: |  |
| Accept pipeline input: | true (ByValue) |
| Accept wildcard characters: | false |

 >**-MasterPassword** 

Master password. Should be specified if the configuration is protected by a master password. Use -MasterPassword (ConvertTo-SecureString -string "Your_Password" -AsPlainText -Force)
        
|       |     |
|-------|-----|
| Type | SecureString |
| Required: | false | 
| Position: | 2 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-WhatIf** 

Shows what would happen if the cmdlet runs. The changes are not applied.
        
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



MBS.Agent.StorageAccount



## Outputs



String
String[]


## Notes

Author: MSP360 Onboarding Team




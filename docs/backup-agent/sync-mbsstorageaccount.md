---
Title: Sync-MBSStorageAccount
HeadTitle: Sync-MBSStorageAccount
Meta: 'Sync-MBSStorageAccount'
RedirectUrl: ''
---
# Sync-MBSStorageAccount
***

Runs synchronization of the local repository with the specified storage account.

```

Sync-MBSStorageAccount
		[-StorageAccount] <StorageAccount>
		[[-Password] <SecureString>]
		[[-MasterPassword] <SecureString>]
		[<CommonParameters>]





```

***

## Description

This cmdlet allows you to synchronize the local repository with the specified storage account. The software sends a request to the storage to list all objects on it and writes down the info about them to the local repository.

***

## Examples


### Example 1: Start synchronization process for the storage account with name FSS1    

```
PS C:\> Sync-MBSStorageAccount -StorageAccount (Get-MBSStorageAccount -Name "FSS1")
```


***

## Parameters

>**-StorageAccount** 

Parameter - Storage account
        
|       |     |
|-------|-----|
| Type | StorageAccount |
| Required: | true | 
| Position: | 1 |
| Default value: |  |
| Accept pipeline input: | true (ByValue) |
| Accept wildcard characters: | false |

 >**-Password** 

The encryption password to synchronize encrypted filenames. Use -Password (ConvertTo-SecureString -string ""Your_Password"" -AsPlainText -Force)
        
|       |     |
|-------|-----|
| Type | SecureString |
| Required: | false | 
| Position: | 2 |
| Default value: |  |
| Accept pipeline input: | false |
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



>**CommonParameters**

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see [about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216). 


## Inputs



MBS.Agent.StorageAccount



## Outputs



String


## Notes

Author: MSP360 Onboarding Team




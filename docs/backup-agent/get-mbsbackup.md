---
Title: Get-MBSBackup
HeadTitle: Get-MBSBackup
Meta: 'Get-MBSBackup'
RedirectUrl: ''
---
# Get-MBSBackup
***

List files/folders or versions backed up to a cloud storage

```

Get-MBSBackup
		-StorageAccount <StorageAccount>
		[-Root]
		[-Prefix <String>]
		[-MasterPassword <SecureString>]
		[<CommonParameters>]

Get-MBSBackup
		-StorageAccount <StorageAccount>
		[-File <String>]
		[-Prefix <String>]
		[-MasterPassword <SecureString>]
		[<CommonParameters>]

Get-MBSBackup
		-StorageAccount <StorageAccount>
		[-Folder <String>]
		[-Prefix <String>]
		[-MasterPassword <SecureString>]
		[<CommonParameters>]





```

***

## Description

List files/folders or versions backed up to a cloud storage

***

## Examples


### Example 1: List files and folders backed up from C:\ to storage account with "AWS S3" name.    

```
PS C:\> Get-MBSBackup -StorageAccount (Get-MBSStorageAccount -Name "AWS S3") -Folder "C:\"
```
 
### Example 2: Get information about versions of "C:\test\test.txt" file which is backed up to storage account with "AWS S3" name.    

```
PS C:\> Get-MBSBackup -StorageAccount (Get-MBSStorageAccount -Name "AWS S3") -File "C:\test\test.txt"
```
 
### Example 3: List files and folders backed up from C:\ to storage account with "AWS S3" name from "Server" computer.    

```
PS C:\> Get-MBSBackup -StorageAccount (Get-MBSStorageAccount -Name "AWS S3") -Folder "C:\" -Prefix "Server"
```


***

## Parameters

>**-StorageAccount** 

Specify storage account object. Use Get-MBSStorageAccount cmdlet to list storages. Example: (Get-MBSStorageAccount -Name "AWS S3")
        
|       |     |
|-------|-----|
| Type | StorageAccount |
| Required: | true | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-File** 

Array of file path to list
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Folder** 

Array of folder path to list
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Root** 


        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Prefix** 

Perform listing using specified backup prefix
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
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



None



## Outputs



MBS.Agent.StorageAccountContent


## Notes

Author: MSP360 Onboarding Team




---
Title: Remove-MBSBackup
HeadTitle: Remove-MBSBackup
Meta: 'Remove-MBSBackup'
RedirectUrl: ''
---
# Remove-MBSBackup
***

Removes a single file or a folder from the backup.

```

Remove-MBSBackup
		-StorageAccount <StorageAccount>
		-File <String>
		[-MasterPassword <SecureString>]
		[<CommonParameters>]

Remove-MBSBackup
		-StorageAccount <StorageAccount>
		-Folder <String>
		[-MasterPassword <SecureString>]
		[<CommonParameters>]

Remove-MBSBackup
		-StorageAccount <StorageAccount>
		[-BackupPrefix <String>]
		[-Login <String>]
		[-Password <SecureString>]
		-BackupDate <DateTime>
		[-MasterPassword <SecureString>]
		[<CommonParameters>]





```

***

## Description

This cmdlet silently removes a specified file or a folder from the MBS backup.

***

## Examples


### Example 1: Removes file "test.txt" from the backup on the storage account "FSS"    

```
PS C:\> Remove-MBSBackup -StorageAccount (Get-MBSStorageAccount | where DisplayName -eq "FSS") -File "C:\TestFolder\test.txt"
```
 
### Example 2: Removes folder "backup" from the backup on the storage account "FSS"    

```
PS C:\> Remove-MBSBackup -StorageAccount (Get-MBSStorageAccount | where DisplayName -eq "FSS") -Folder "C:\TestFolder\Backup"
```
 
### Example 3: Removes file "test.txt" and folder "backup" from the backup on the storage account "FSS"    

```
PS C:\> Remove-MBSBackup -StorageAccount (Get-MBSStorageAccount | where DisplayName -eq "FSS") -File "C:\TestFolder\test.txt" -Folder "C:\TestFolder\Backup"
```


***

## Parameters

>**-StorageAccount** 

Specify storage account object. Use Get-MBSStorageAccount cmdlet to list storages. Example: (Get-MBSStorageAccount -Name ""AWS S3"")")
        
|       |     |
|-------|-----|
| Type | StorageAccount |
| Required: | true | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-File** 

Removes specified file from the backup
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Folder** 

Removes specified folder from the backup
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-BackupPrefix** 

Parameter - BackupPrefix
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Login** 

Parameter - Login
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Password** 

Parameter - Password
        
|       |     |
|-------|-----|
| Type | SecureString |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-BackupDate** 

Parameter - BackupDate
        
|       |     |
|-------|-----|
| Type | DateTime |
| Required: | true | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-MasterPassword** 

Backup agent master password. Use -MasterPassword (ConvertTo-SecureString -string "Your_Password" -AsPlainText -Force)
        
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



String


## Notes

Author: MSP360 Onboarding Team




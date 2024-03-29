---
Title: Restore-MBSFile
HeadTitle: Restore-MBSFile
Meta: 'Restore-MBSFile'
RedirectUrl: ''
---
# Restore-MBSFile
***

Restore files/folders from cloud storage.

```

Restore-MBSFile
		[-StorageAccount] <StorageAccount>
		[[-RestorePoint] <DateTime>]
		[[-BackupPrefix] <String>]
		[[-RestorePath] <String>]
		[[-RestoreFile] <String[]>]
		[[-RestoreDirectory] <String[]>]
		[-RestoreDeletedFiles]
		[-Overwrite]
		[-RestoreNewFile]
		[-RestoreNTFSPermissions]
		[[-RestoreFromGlacier] {Expedited | Standard | Bulk}]
		[[-EncryptionPassword] <SecureString>]
		[[-MasterPassword] <SecureString>]
		[<CommonParameters>]





```

***

## Description

Restore files/folders from cloud storage. The action does not allow schedule, pre/post actions or notifications.

***

## Examples


### Example 1: Restore specified folders and files with default settings.    

```
PS C:\> Restore-MBSFile -StorageAccount (Get-MBSStorageAccount -ID 7ce9c81a-b305-49cf-814e-8d9c6c7333ab) -RestoreDirectory 'C:\MyFolder' -RestoreFile 'C:\MyFolder2\Document1.txt','C:\MyFolder2\Document2.txt'
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

 >**-RestorePoint** 

Restore type. Specify DateTime value or omit to restore the latest version.
        
|       |     |
|-------|-----|
| Type | DateTime |
| Required: | false | 
| Position: | 2 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-BackupPrefix** 

Backup prefix
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 3 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-RestorePath** 

Restore to specific location. Omit for restore to the original location.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 4 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-RestoreFile** 

Restore file path. Example: "c:\temp\test.txt","c:\temp\test.ps1"
        
|       |     |
|-------|-----|
| Type | String[] |
| Required: | false | 
| Position: | 5 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-RestoreDirectory** 

Restore directory path. Example: "c:\Work","c:\Users"
        
|       |     |
|-------|-----|
| Type | String[] |
| Required: | false | 
| Position: | 6 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-RestoreDeletedFiles** 

Restore deleted files
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Overwrite** 

Overwrite existing files/directories
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-RestoreNewFile** 

Restore only new files. Existing files will be overwritten only if the modification date of backed up file is newer than existing
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-RestoreNTFSPermissions** 

Restore NTFS permissions
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-RestoreFromGlacier** 

Restore files located in Glacier (expedited or standard or bulk)
        
|       |     |
|-------|-----|
| Type | GlacierRestoreType |
| Required: | false | 
| Position: | 7 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-EncryptionPassword** 

Encryption password. Use -EncryptionPassword (ConvertTo-SecureString -string "Your_Password" -AsPlainText -Force)
        
|       |     |
|-------|-----|
| Type | SecureString |
| Required: | false | 
| Position: | 8 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-MasterPassword** 

Master password. Should be specified if configuration is protected by master password. Use -MasterPassword (ConvertTo-SecureString -string "Your_Password" -AsPlainText -Force)
        
|       |     |
|-------|-----|
| Type | SecureString |
| Required: | false | 
| Position: | 9 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |



>**CommonParameters**

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see [about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216). 


## Inputs



None.



## Outputs



System.String[]


## Notes

Author: MSP360 Onboarding Team




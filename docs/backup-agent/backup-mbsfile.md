---
Title: Backup-MBSFile
HeadTitle: Backup-MBSFile
Meta: 'Backup-MBSFile'
RedirectUrl: ''
---
# Backup-MBSFile
***

Backup files/folders to cloud storage.

```

Backup-MBSFile
		[-StorageAccount] <StorageAccount>
		[[-MasterPassword] <SecureString>]
		[-UseFastNTFSScan]
		[-ForceUsingVSS]
		[-UseShareReadWriteModeOnError]
		[-BackupEmptyFolders]
		[[-BackupOnlyAfter] <DateTime>]
		[[-ExcludeSystemHiddenFiles] <Boolean>]
		[[-SkipFolder] <String[]>]
		[[-IncludeFilesMask] <String[]>]
		[[-ExcludeFilesMask] <String[]>]
		[[-BackupFile] <String[]>]
		[[-BackupDirectory] <String[]>]
		[[-UseServerSideEncryption] <Boolean>]
		[[-EncryptionAlgorithm] {AES128 | AES192 | AES256}]
		[[-EncryptionPassword] <SecureString>]
		[[-UseCompression] <Boolean>]
		[[-StorageClass] {Standard | IntelligentTiering | StandardIA | OneZoneIA | Glacier | GlacierInstantRetrieval | GlacierDeepArchive}]
		[<CommonParameters>]





```

***

## Description

Backup files/folders to cloud storage. The action does not allow schedule, pre/post actions or notifications.

***

## Examples


### Example 1: Backup specified folders and files with default settings.    

```
PS C:\> Backup-MBSFile -StorageAccount (Get-MBSStorageAccount -ID 7ce9c81a-b305-49cf-814e-8d9c6c7333ab) -BackupDirectory C:\MyFolder -BackupFile 'C:\MyFolder2\Document1.txt', 'C:\MyFolder2\Document2.txt'
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

Master password. Should be specified if configuration is protected by master password. Use -MasterPassword (ConvertTo-SecureString -string "Your_Password -AsPlainText -Force)
        
|       |     |
|-------|-----|
| Type | SecureString |
| Required: | false | 
| Position: | 2 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-UseFastNTFSScan** 

Use fast scan on NTFS file systems when possible
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ForceUsingVSS** 

Force using VSS (Volume Shadow Copy Service).
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-UseShareReadWriteModeOnError** 

Use share read/write mode on errors. Can help if file is open in share read/write mode.
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-BackupEmptyFolders** 

Backup empty folders
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-BackupOnlyAfter** 

Backup files only after specific date. Example: "06/09/19 7:43 AM"
        
|       |     |
|-------|-----|
| Type | DateTime |
| Required: | false | 
| Position: | 3 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ExcludeSystemHiddenFiles** 

Exclude system and hidden files from backup plan.
        
|       |     |
|-------|-----|
| Type | Boolean |
| Required: | false | 
| Position: | 4 |
| Default value: | True |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-SkipFolder** 

Skip folders. Example: -skipfolder ""bin,*temp*,My*""
        
|       |     |
|-------|-----|
| Type | String[] |
| Required: | false | 
| Position: | 5 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-IncludeFilesMask** 

Include files mask. Example: -IncludeFilesMask ""*.doc,*.xls""
        
|       |     |
|-------|-----|
| Type | String[] |
| Required: | false | 
| Position: | 6 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ExcludeFilesMask** 

Exclude files mask. Example: -ExcludeFilesMask ""*.bak,*.tmp""
        
|       |     |
|-------|-----|
| Type | String[] |
| Required: | false | 
| Position: | 7 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-BackupFile** 

Backup file path. Example: "c:\temp\test.txt","c:\temp\test.ps1"
        
|       |     |
|-------|-----|
| Type | String[] |
| Required: | false | 
| Position: | 8 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-BackupDirectory** 

Backup directory path. Example: "c:\Work","c:\Users"
        
|       |     |
|-------|-----|
| Type | String[] |
| Required: | false | 
| Position: | 9 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-UseServerSideEncryption** 

Use server side encryption (valid only for Amazon S3).
        
|       |     |
|-------|-----|
| Type | Boolean |
| Required: | false | 
| Position: | 10 |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-EncryptionAlgorithm** 

Encryption algorithm. Possible values: AES128-256
        
|       |     |
|-------|-----|
| Type | EncryptionAlgorithm |
| Required: | false | 
| Position: | 11 |
| Default value: | AES256 |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-EncryptionPassword** 

Encryption password. Use -EncryptionPassword (ConvertTo-SecureString -string "Your_Password" -AsPlainText -Force)
        
|       |     |
|-------|-----|
| Type | SecureString |
| Required: | false | 
| Position: | 12 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-UseCompression** 

Use compression for backup
        
|       |     |
|-------|-----|
| Type | Boolean |
| Required: | false | 
| Position: | 13 |
| Default value: | True |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-StorageClass** 

Storage Class (valid only for Amazon S3)
        
|       |     |
|-------|-----|
| Type | StorageClass |
| Required: | false | 
| Position: | 14 |
| Default value: | Standard |
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




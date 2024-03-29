---
Title: New-MBSNBFFileBackupPlan
HeadTitle: New-MBSNBFFileBackupPlan
Meta: 'New-MBSNBFFileBackupPlan'
RedirectUrl: ''
---
# New-MBSNBFFileBackupPlan
***

Creates new file-level backup plan.

```

New-MBSNBFFileBackupPlan
		-Name <String>
		-StorageAccount <StorageAccount>
		[-MasterPassword <SecureString>]
		[-Schedule <NBFIncrementalSchedule>]
		[-FullSchedule <NBFFullSchedule>]
		-BackupPlanCommonOption <NBFBackupPlanCommonOption>
		[-FastNTFSScan]
		[-BackupNTFSPermissions]
		[-ForceUsingVSS]
		[-KeepEFSEncryption]
		[-UseShareReadWriteModeOnError]
		[-BackupEmptyFolders]
		[-BackupOnlyAfter <DateTime>]
		[-ExcludeSystemHiddenFiles <Boolean>]
		[-SkipFolder <String[]>]
		[-IncludeFilesMask <String[]>]
		[-ExcludeFilesMask <String[]>]
		[-IgnoreErrorPathNotFound]
		[-BackupItem <List`1>]
		[-ExcludeItem <List`1>]
		[-GenerateDetailedReport]
		[<CommonParameters>]





```

***

## Description

Creates File-Level backup plan.

***

## Examples


### Example 1: Create File-Level backup plan.    

```
PS C:\> New-MBSNBFFileBackupPlan -Name "File-level Plan" -StorageAccount (Get-MBSStorageAccount -ID aa3230dc-c20f-4ff3-83be-1cf6820de46b) -BackupItem "c:\temp\test.txt","c:\Work" -Schedule $schedule -BackupPlanCommonOption $commonOptions
```


***

## Parameters

>**-Name** 

Backup plan name.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

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

 >**-Schedule** 

Specify schedule. Use New-MBSNBFPlanSchedule to create an object.
        
|       |     |
|-------|-----|
| Type | NBFIncrementalSchedule |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-FullSchedule** 

Specify force full schedule. Use New-MBSNBFPlanSchedule to create an object.
        
|       |     |
|-------|-----|
| Type | NBFFullSchedule |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-BackupPlanCommonOption** 

Specify plan common options. Use New-MBSNBFBackupPlanCommonOption to create an object.
        
|       |     |
|-------|-----|
| Type | NBFBackupPlanCommonOption |
| Required: | true | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-FastNTFSScan** 

Enables you to speed up backup processing by using a low-level API to access NTFS structures when you need to back up a considerably large number of files that are stored on an NTFS-formatted device. Using this option automatically enables ForceUsingVSS option
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-BackupNTFSPermissions** 

Backup NTFS permissions
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ForceUsingVSS** 

Force using VSS (Volume Shadow Copy Service)
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-KeepEFSEncryption** 


        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-UseShareReadWriteModeOnError** 

Use share read/write mode on errors. Can help if file is open in share read/write mode
        
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
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ExcludeSystemHiddenFiles** 

Exclude system and hidden files from backup plan.
        
|       |     |
|-------|-----|
| Type | Boolean |
| Required: | false | 
| Position: | named |
| Default value: | True |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-SkipFolder** 

Skip folders. Example: -skipfolder ""bin,*temp*,My*""
        
|       |     |
|-------|-----|
| Type | String[] |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-IncludeFilesMask** 

Include files mask. Example: -IncludeFilesMask ""*.doc,*.xls""
        
|       |     |
|-------|-----|
| Type | String[] |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ExcludeFilesMask** 

Exclude files mask. Example: -ExcludeFilesMask ""*.bak,*.tmp""
        
|       |     |
|-------|-----|
| Type | String[] |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-IgnoreErrorPathNotFound** 

Ignore errors path not found
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-BackupItem** 

Backup file or directory. Example: "c:\temp\test.txt","c:\Work"
        
|       |     |
|-------|-----|
| Type | List`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ExcludeItem** 

Exclude file or directory. Example: "c:\temp\test.ps1","c:\Users"
        
|       |     |
|-------|-----|
| Type | List`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-GenerateDetailedReport** 

Specify to generate detailed report
        
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




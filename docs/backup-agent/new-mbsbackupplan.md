---
Title: New-MBSBackupPlan
HeadTitle: New-MBSBackupPlan
Meta: 'New-MBSBackupPlan'
RedirectUrl: ''
---
# New-MBSBackupPlan
***

Creates new backup plan.

```

New-MBSBackupPlan
		-Name <String>
		-StorageAccount <StorageAccount>
		[-MasterPassword <SecureString>]
		[-Schedule <Schedule>]
		[-MSSQLDiffSchedule <Schedule>]
		[-MSSQLTlogSchedule <Schedule>]
		-BackupPlanCommonOption <BackupPlanCommonOption>
		[-GenerateDetailedReport]
		-InstanceName <String>
		[-useSSL]
		[-useWinauth]
		[-UserName <String>]
		[-Password <SecureString>]
		[-BackupDB {All | User | SelectedDB}]
		[-Databases <String[]>]
		[-CopyOnly]
		[-Verify]
		[<CommonParameters>]

New-MBSBackupPlan
		-Name <String>
		-StorageAccount <StorageAccount>
		[-MasterPassword <SecureString>]
		[-Schedule <Schedule>]
		[-FullSchedule <Schedule>]
		-BackupPlanCommonOption <BackupPlanCommonOption>
		-BackupVM {All | OnlyRunning | SelectedVM}
		[-VirtualMachine <String[]>]
		[<CommonParameters>]

New-MBSBackupPlan
		-Name <String>
		-StorageAccount <StorageAccount>
		[-MasterPassword <SecureString>]
		[-Schedule <Schedule>]
		[-FullSchedule <Schedule>]
		-BackupPlanCommonOption <BackupPlanCommonOption>
		[-UseBlockLevelBackup]
		-BackupVolumes <String>
		[-Volumes <String[]>]
		[-DisableVSS]
		[-IgnoreBadSectors <Boolean>]
		[-UseSystemVSS]
		[-DisableSyntheticFull]
		[-PrefetchBlockCount <Int32>]
		[-BlockSize <String>]
		[-ExcludeItem <String[]>]
		[-KeepBitLocker]
		[-KeepBitLockerEnableForVolume <String[]>]
		[-KeepBitLockerDisableForVolume <String[]>]
		[<CommonParameters>]

New-MBSBackupPlan
		-Name <String>
		-StorageAccount <StorageAccount>
		[-MasterPassword <SecureString>]
		[-Schedule <Schedule>]
		[-FullSchedule <Schedule>]
		-BackupPlanCommonOption <BackupPlanCommonOption>
		[-UseBlockLevelBackup]
		[-UseFastNTFSScan]
		[-BackupNTFSPermissions]
		[-ForceUsingVSS]
		[-UseShareReadWriteModeOnError]
		[-DeleteLocallyDeletedFilesAfter <TimeSpan>]
		[-BackupEmptyFolders]
		[-BackupOnlyAfter <DateTime>]
		[-ExcludeSystemHiddenFiles <Boolean>]
		[-SkipFolder <String[]>]
		[-IncludeFilesMask <String[]>]
		[-ExcludeFilesMask <String[]>]
		[-IgnoreErrorPathNotFound]
		[-TrackDeletedFiles]
		[-BackupFile <String[]>]
		[-BackupDirectory <String[]>]
		[-ExcludeFile <String[]>]
		[-ExcludeDirectory <String[]>]
		[-GenerateDetailedReport]
		[<CommonParameters>]





```

***

## Description

Creates File-Level, Image-Based, Hyper-V, or MS SQL backup plan.

***

## Examples


### Example 1: Create Image-Based backup plan.    

```
PS C:\> New-MBSBackupPlan -Name "IBB Plan" -StorageAccount (Get-MBSStorageAccount -ID aa3230dc-c20f-4ff3-83be-1cf6820de46b) -BackupVolumes AllVolumes -Schedule $schedule -BackupPlanCommonOption $commonOptions
```
 
### Example 2: Create File-Level backup plan.    

```
PS C:\> New-MBSBackupPlan -Name "File-level Plan" -StorageAccount (Get-MBSStorageAccount -ID aa3230dc-c20f-4ff3-83be-1cf6820de46b) -BackupFile "c:\temp\test.txt","c:\temp\test.ps1" -BackupDirectory "c:\Work","c:\Users" -Schedule $schedule -BackupPlanCommonOption $commonOptions
```
 
### Example 3: Create Hyper-V backup plan to backup all virtual machines.    

```
PS C:\> New-MBSBackupPlan -Name "HyperV plan" -StorageAccount (Get-MBSStorageAccount -ID aa3230dc-c20f-4ff3-83be-1cf6820de46b) -Schedule $DailySchedule -BackupVM All
```
 
### Example 4: Create MS SQL backup plan to backup all databases.    

```
PS C:\> New-MBSBackupPlan -Name "MS SQL plan" -StorageAccount (Get-MBSStorageAccount -ID aa3230dc-c20f-4ff3-83be-1cf6820de46b) -Schedule $DailySchedule -InstanceName "host\sqlexpress" -MSSQLTlogSchedule $DiffSchedule -BackupPlanCommonOption $commonOptions -useSSL -useWinauth -BackupDB All
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

Specify schedule. Use New-MBSPlanSchedule to create an object.
        
|       |     |
|-------|-----|
| Type | Schedule |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-FullSchedule** 

Specify force full schedule. Use New-MBSPlanSchedule to create an object.
        
|       |     |
|-------|-----|
| Type | Schedule |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-MSSQLDiffSchedule** 

Specify MS SQL Differential schedule. Use New-MBSPlanSchedule to create an object.
        
|       |     |
|-------|-----|
| Type | Schedule |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-MSSQLTlogSchedule** 

Specify MS SQL T-Log schedule. Use New-MBSPlanSchedule to create an object.
        
|       |     |
|-------|-----|
| Type | Schedule |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-BackupPlanCommonOption** 

Specify plan common options. Use New-MBSBackupPlanCommonOption to create an object.
        
|       |     |
|-------|-----|
| Type | BackupPlanCommonOption |
| Required: | true | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-UseBlockLevelBackup** 

Use block level backup.
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-UseFastNTFSScan** 

The Fast NTFS scan speeds up backup processing by using a low-level API for accessing NTFS structures. This option is useful for NTFS volumes with a large number of files. Enabling this option automatically enables ForceUsingVSS option
        
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

 >**-DeleteLocallyDeletedFilesAfter** 

Delete files that have been deleted locally after specified number of days. Example: -DeleteLocallyDeletedFilesAfter 30. .
        
|       |     |
|-------|-----|
| Type | TimeSpan |
| Required: | false | 
| Position: | named |
| Default value: |  |
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

 >**-TrackDeletedFiles** 

Track deleted files data
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-BackupFile** 

Backup file path. Example: "c:\temp\test.txt","c:\temp\test.ps1"
        
|       |     |
|-------|-----|
| Type | String[] |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-BackupDirectory** 

Backup directory path. Example: "c:\Work","c:\Users"
        
|       |     |
|-------|-----|
| Type | String[] |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ExcludeFile** 

Exclude a file from backup plan. Example: "c:\temp\test2.txt","c:\temp\test2.ps1"
        
|       |     |
|-------|-----|
| Type | String[] |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ExcludeDirectory** 

Exclude a directory from backup plan. Example: "c:\Program Files","c:\Windows"
        
|       |     |
|-------|-----|
| Type | String[] |
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

 >**-BackupVolumes** 

Backup Volumes type.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | named |
| Accepted values: |  AllVolumes, SystemRequired, SelectedVolumes  |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Volumes** 

Backup selected volumes with the specified ids
        
|       |     |
|-------|-----|
| Type | String[] |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-DisableVSS** 

Disable VSS, use direct access to NTFS volume
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-IgnoreBadSectors** 

Ignore bad sectors
        
|       |     |
|-------|-----|
| Type | Boolean |
| Required: | false | 
| Position: | named |
| Default value: | True |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-UseSystemVSS** 

Use system VSS provider
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-DisableSyntheticFull** 

Disable Synthetic Full backup.
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-PrefetchBlockCount** 

Prefetch block count (0 - 100, 0 without prefetch)
        
|       |     |
|-------|-----|
| Type | Int32 |
| Required: | false | 
| Position: | named |
| Default value: | 0 |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-BlockSize** 

Block size. Possible values: 128, 256, 512, 1024
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Accepted values: |  128, 256, 512, 1024  |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ExcludeItem** 

Exclude files/folders from Image-Based backup plan. Example: "C:\bin","C:\Users","\\?\\Volume{2b7ea38e-0854-44a9-90f8-259fe8d52d20}\Recovery"
        
|       |     |
|-------|-----|
| Type | String[] |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-KeepBitLocker** 

Enable KeepBitLocker option for all partitions
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-KeepBitLockerEnableForVolume** 

Enable KeepBitLocker option for volumes with specified ids. Example: "cc9eb5c7-f956-415c-b23e-e6a563f9a20e","c4f8f0d6-7a2a-4627-9c89-cc84dbe3bf79"
        
|       |     |
|-------|-----|
| Type | String[] |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-KeepBitLockerDisableForVolume** 

Disable KeepBitLocker option for volumes with specified ids. Example: "01bc714b-b611-448e-8fff-2e0e4a0d9004","a44e3efd-17ef-4f2c-bd66-5cbda5f23939"
        
|       |     |
|-------|-----|
| Type | String[] |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-BackupVM** 

Backup Virtual Machine type
        
|       |     |
|-------|-----|
| Type | BackupVMType |
| Required: | true | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-VirtualMachine** 

Backup selected virtual machines only the specified names
        
|       |     |
|-------|-----|
| Type | String[] |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-InstanceName** 

MS SQL server instance name
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-useSSL** 

Use secure connection (SSL/TLS)
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-useWinauth** 

Use Windows authentication
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-UserName** 

MS SQL server user name
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Password** 

MS SQL server password
        
|       |     |
|-------|-----|
| Type | SecureString |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-BackupDB** 

Database selection type
        
|       |     |
|-------|-----|
| Type | DatabaseSelectionType |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Databases** 

Select backup database
        
|       |     |
|-------|-----|
| Type | String[] |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-CopyOnly** 

Use copy only
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Verify** 

Verify
        
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




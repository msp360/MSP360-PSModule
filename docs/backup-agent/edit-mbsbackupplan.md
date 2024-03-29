---
Title: Edit-MBSBackupPlan
HeadTitle: Edit-MBSBackupPlan
Meta: 'Edit-MBSBackupPlan'
RedirectUrl: ''
---
# Edit-MBSBackupPlan
***

Edit CBF (legacy) backup plan.

```

Edit-MBSBackupPlan
		-CommonParameterSet
		[-ID <String>]
		[-Name <String>]
		[-StorageAccountID <String>]
		[-NewName <String>]
		[-DisableEncryption]
		[-DisableSchedule]
		[-SyncBeforeRun <Nullable`1>]
		[-ServerSideEncryption <Nullable`1>]
		[-EncryptionAlgorithm <String>]
		[-EncryptionPassword <SecureString>]
		[-Compression <Nullable`1>]
		[-StorageClass <String>]
		[-SaveBPConfiguration <Nullable`1>]
		[-MasterPassword <SecureString>]
		[-runMissed <Nullable`1>]
		[-RecurringType <String>]
		[-At <String>]
		[-DayOfMonth <Int32>]
		[-WeekDay <String[]>]
		[-WeekNumber <String>]
		[-DailyFrom <String>]
		[-DailyTill <String>]
		[-Occurs <String>]
		[-OccurValue <String>]
		[-RepeatEvery <Int32>]
		[-repeatStartDate <String>]
		[-stopAfter <String>]
		[-preActionEnabled <Nullable`1>]
		[-preActionCommand <String>]
		[-preActionContinueAnyway <Nullable`1>]
		[-postActionEnabled <Nullable`1>]
		[-postActionCommand <String>]
		[-postActionRunAnyway <Nullable`1>]
		[-notification <String>]
		[-winLog <String>]
		[-DisableBackupChain]
		[-BackupChainPlanID <String>]
		[-BackupChainExecuteOnlyAfterSuccess <Nullable`1>]
		[-BackupChainExecuteForceFull <Nullable`1>]
		[-KeepVersionPeriod <String>]
		[-KeepNumberOfVersions <String>]
		[-keepLastVersion <Nullable`1>]
		[-delayPurge <String>]
		[-RecurringTypeForceFull <String>]
		[-atForceFull <String>]
		[-DayOfMonthForceFull <Int32>]
		[-weekdayForceFull <String[]>]
		[-weeknumberForceFull <String>]
		[-dailyFromForceFull <String>]
		[-dailyTillForceFull <String>]
		[-occursForceFull <String>]
		[-occurValueForceFull <String>]
		[-repeatEveryForceFull <Int32>]
		[-repeatStartDateForceFull <String>]
		[-DisableForceFullSchedule]
		[-useBlockLevelBackup <Nullable`1>]
		[<CommonParameters>]

Edit-MBSBackupPlan
		-FileLevelParameterSet
		[-ID <String>]
		[-Name <String>]
		[-SpecialFunction <String>]
		[-StorageAccountID <String>]
		[-NewName <String>]
		[-DisableEncryption]
		[-DisableSchedule]
		[-SyncBeforeRun <Nullable`1>]
		[-ServerSideEncryption <Nullable`1>]
		[-EncryptionAlgorithm <String>]
		[-EncryptionPassword <SecureString>]
		[-Compression <Nullable`1>]
		[-StorageClass <String>]
		[-SaveBPConfiguration <Nullable`1>]
		[-MasterPassword <SecureString>]
		[-runMissed <Nullable`1>]
		[-RecurringType <String>]
		[-At <String>]
		[-DayOfMonth <Int32>]
		[-WeekDay <String[]>]
		[-WeekNumber <String>]
		[-DailyFrom <String>]
		[-DailyTill <String>]
		[-Occurs <String>]
		[-OccurValue <String>]
		[-RepeatEvery <Int32>]
		[-repeatStartDate <String>]
		[-stopAfter <String>]
		[-preActionEnabled <Nullable`1>]
		[-preActionCommand <String>]
		[-preActionContinueAnyway <Nullable`1>]
		[-postActionEnabled <Nullable`1>]
		[-postActionCommand <String>]
		[-postActionRunAnyway <Nullable`1>]
		[-notification <String>]
		[-winLog <String>]
		[-DisableBackupChain]
		[-BackupChainPlanID <String>]
		[-BackupChainExecuteOnlyAfterSuccess <Nullable`1>]
		[-BackupChainExecuteForceFull <Nullable`1>]
		[-KeepVersionPeriod <String>]
		[-KeepNumberOfVersions <String>]
		[-keepLastVersion <Nullable`1>]
		[-delayPurge <String>]
		[-RecurringTypeForceFull <String>]
		[-atForceFull <String>]
		[-DayOfMonthForceFull <Int32>]
		[-weekdayForceFull <String[]>]
		[-weeknumberForceFull <String>]
		[-dailyFromForceFull <String>]
		[-dailyTillForceFull <String>]
		[-occursForceFull <String>]
		[-occurValueForceFull <String>]
		[-repeatEveryForceFull <Int32>]
		[-repeatStartDateForceFull <String>]
		[-rebackupDate <String>]
		[-DisableForceFullSchedule]
		[-useBlockLevelBackup <Nullable`1>]
		[-UseFastNTFSScan <Nullable`1>]
		[-BackupNTFSPermissions <Nullable`1>]
		[-ForceUsingVSS <Nullable`1>]
		[-UseShareReadWriteModeOnError <Nullable`1>]
		[-DeleteLocallyDeletedFilesAfter <String>]
		[-BackupEmptyFolders <Nullable`1>]
		[-BackupOnlyAfter <String>]
		[-ExcludeSystemHiddenFiles <Nullable`1>]
		[-SkipFolders <String[]>]
		[-IncludeFilesMask <String[]>]
		[-ExcludeFilesMask <String[]>]
		[-IgnoreErrorPathNotFound <Nullable`1>]
		[-TrackDeletedFiles <Nullable`1>]
		[-AddNewFile <String[]>]
		[-AddNewDirectory <String[]>]
		[-ExcludeFile <String[]>]
		[-ExcludeDirectory <String[]>]
		[-BackupFile <String[]>]
		[-BackupDirectory <String[]>]
		[-GenerateDetailedReport <Nullable`1>]
		[<CommonParameters>]

Edit-MBSBackupPlan
		-ImageBasedParameterSet
		[-ID <String>]
		[-Name <String>]
		[-SpecialFunction <String>]
		[-StorageAccountID <String>]
		[-NewName <String>]
		[-DisableEncryption]
		[-DisableSchedule]
		[-SyncBeforeRun <Nullable`1>]
		[-ServerSideEncryption <Nullable`1>]
		[-EncryptionAlgorithm <String>]
		[-EncryptionPassword <SecureString>]
		[-Compression <Nullable`1>]
		[-StorageClass <String>]
		[-SaveBPConfiguration <Nullable`1>]
		[-MasterPassword <SecureString>]
		[-runMissed <Nullable`1>]
		[-RecurringType <String>]
		[-At <String>]
		[-DayOfMonth <Int32>]
		[-WeekDay <String[]>]
		[-WeekNumber <String>]
		[-DailyFrom <String>]
		[-DailyTill <String>]
		[-Occurs <String>]
		[-OccurValue <String>]
		[-RepeatEvery <Int32>]
		[-repeatStartDate <String>]
		[-stopAfter <String>]
		[-preActionEnabled <Nullable`1>]
		[-preActionCommand <String>]
		[-preActionContinueAnyway <Nullable`1>]
		[-postActionEnabled <Nullable`1>]
		[-postActionCommand <String>]
		[-postActionRunAnyway <Nullable`1>]
		[-notification <String>]
		[-winLog <String>]
		[-DisableBackupChain]
		[-BackupChainPlanID <String>]
		[-BackupChainExecuteOnlyAfterSuccess <Nullable`1>]
		[-BackupChainExecuteForceFull <Nullable`1>]
		[-KeepVersionPeriod <String>]
		[-KeepNumberOfVersions <String>]
		[-keepLastVersion <Nullable`1>]
		[-delayPurge <String>]
		[-RecurringTypeForceFull <String>]
		[-atForceFull <String>]
		[-DayOfMonthForceFull <Int32>]
		[-weekdayForceFull <String[]>]
		[-weeknumberForceFull <String>]
		[-dailyFromForceFull <String>]
		[-dailyTillForceFull <String>]
		[-occursForceFull <String>]
		[-occurValueForceFull <String>]
		[-repeatEveryForceFull <Int32>]
		[-repeatStartDateForceFull <String>]
		[-DisableForceFullSchedule]
		[-SyntheticFull <Nullable`1>]
		[-useBlockLevelBackup <Nullable`1>]
		[-BackupVolumes <String>]
		[-Volumes <String[]>]
		[-disableVSS <Nullable`1>]
		[-KeepBitLocker <Nullable`1>]
		[-ignoreBadSectors <Nullable`1>]
		[-useSystemVSS <Nullable`1>]
		[-prefetchBlockCount <Int32>]
		[-blockSize <String>]
		[-ExcludeItem <String[]>]
		[-DisableExcludeFilesFolders]
		[-KeepBitLockerEnableForVolume <String[]>]
		[-KeepBitLockerDisableForVolume <String[]>]
		[<CommonParameters>]





```

***

## Description

Edit legacy backup format (CBF) backup plan. File-Level and Image-Based backup plan type are supported.

***

## Examples


### Example 1: Enable compression option for all supported backup plans.    

```
PS C:\> Get-MBSBackupPlan | Edit-MBSBackupPlan -CommonParameterSet -Compression $true
```
 
### Example 2: Enable backup NTFS permissions option for all file-level backup plans.    

```
PS C:\> Get-MBSBackupPlan -PlanType File-Level | Edit-MBSBackupPlan -FileLevelParameterSet -ntfs $true
```
 
### Example 3: Add only system required volumes to all image-based backup plans.    

```
PS C:\> Get-MBSBackupPlan -PlanType Image-Based | Edit-MBSBackupPlan -ImageBasedParameterSet -BackupVolumes SystemRequired
```
 
### Example 4: Add only system required volumes to cloud image-based backup plans.    

```
PS C:\> Get-MBSBackupPlan -StorageType Cloud -PlanType Image-Based | Edit-MBSBackupPlan -ImageBasedParameterSet -BackupVolumes SystemRequired
```
 
### Example 5: Enable KeepBitLocker option for all cloud backup plans.    

```
PS C:\> Get-MBSBackupPlan -StorageType Cloud | Edit-MBSBackupPlan -ImageBasedParameterSet -KeepBitLocker $true
```


***

## Parameters

>**-FileLevelParameterSet** 

Backup plan settings related to File-Level backup plan type
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | true | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ImageBasedParameterSet** 

Backup plan settings related to Image-Based backup plan type
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | true | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-CommonParameterSet** 

Backup plan settings related to any backup plan type. Such as Encryption, Compression, Retention policy, Schedule, etc.
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | true | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ID** 

Backup plan ID
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-Name** 

Backup plan name
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-SpecialFunction** 

Specific procedure which covers a particular use case related to changes for a plan. Possible values: ExcludeEncryptedFiles, ExcludeTempWindowsAppsFolders, ExcludeOneDriveFolders, AddFixedDrivesToIBB, AddFixedDrivesToFileLevel, DisablePreAction
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Accepted values: |  ExcludeEncryptedFiles, ExcludeTempWindowsAppsFolders, ExcludeOneDriveFolders, AddFixedDrivesToIBB, AddFixedDrivesToFileLevel, DisablePreAction  |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-StorageAccountID** 

Specify to change storage account. Use Get-MBSStorageAccount to list storages
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-NewName** 

Specify to rename plan
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-DisableEncryption** 

Specify to disable encryption
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-DisableSchedule** 

Specify to disable schedule
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-SyncBeforeRun** 

Run consistency check before the plan
        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ServerSideEncryption** 

Use server side encryption (valid only for Amazon S3)
        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-EncryptionAlgorithm** 

Enable AES encryption algorithm. Possible values: AES128, AES192, AES256
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Accepted values: |  AES128, AES192, AES256  |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-EncryptionPassword** 

Encryption password. Use -EncryptionPassword (ConvertTo-SecureString -string ""Your_Password"" -AsPlainText -Force)
        
|       |     |
|-------|-----|
| Type | SecureString |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Compression** 

Enable compression
        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-StorageClass** 

Storage Class (valid only for Amazon S3). Possible values: Standard, IntelligentTiering, StandardIA, OneZoneIA, Glacier, GlacierInstantRetrieval, GlacierDeepArchive
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Accepted values: |  Standard, IntelligentTiering, StandardIA, OneZoneIA, Glacier, GlacierInstantRetrieval, GlacierDeepArchive  |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-SaveBPConfiguration** 

Save backup plan configuration to the backup storage
        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-MasterPassword** 

Master password. Should be specified if configuration is protected by master password. Use -MasterPassword (ConvertTo-SecureString -string ""Your_Password"" -AsPlainText -Force)
        
|       |     |
|-------|-----|
| Type | SecureString |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-runMissed** 

Run missed scheduled backup immediately when computer starts up
        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-RecurringType** 

Specify schedule recurring type. Possible values: day, week, month, dayofmonth, real-time
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Accepted values: |  day, week, month, dayofmonth, real-time  |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-At** 

Specify datetime or time of schedule. Example -at ""06/09/19 7:43 AM"" , or -at ""7:43 AM""
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-DayOfMonth** 

Specify day for 'dayofmonth' schedule (1..31)
        
|       |     |
|-------|-----|
| Type | Int32 |
| Required: | false | 
| Position: | named |
| Default value: | 0 |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-WeekDay** 

Specify day(s) of week for weekly schedule. Example: ""su, mo, tu, we, th, fr, sa"". Or specify day of week for monthly schedule
        
|       |     |
|-------|-----|
| Type | String[] |
| Required: | false | 
| Position: | named |
| Accepted values: |  su, mo, tu, we, th, fr, sa  |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-WeekNumber** 

Specify number of week. Possible values: First, Second, Third, Fourth, Penultimate, Last
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Accepted values: |  First, Second, Third, Fourth, Penultimate, Last  |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-DailyFrom** 

Specify daily recurring from value
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-DailyTill** 

Specify daily recurring till value
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Occurs** 

Specify recurring period type. Possible values: hour, min
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Accepted values: |  hour, min  |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-OccurValue** 

Specify recurring period value
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-RepeatEvery** 

Specify repeat period value. Possible values: 1..31
        
|       |     |
|-------|-----|
| Type | Int32 |
| Required: | false | 
| Position: | named |
| Default value: | 0 |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-repeatStartDate** 

Specify start date of repetitions
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-stopAfter** 

Specify time in HH:MM to stop the plan if it runs for HH hours MM minutes. Example -stopAfter ""20:30"" or -stopAfter ""100:00"" etc.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-preActionEnabled** 

Enables the pre-action
        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-preActionCommand** 

Specify command to be executed before the backup plan runs
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-preActionContinueAnyway** 

Specify to continue backup plan if pre-backup action failed. Possible values: $true/$false
        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-postActionEnabled** 

Enables the post-action
        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-postActionCommand** 

Specify command to be executed after backup is completed
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-postActionRunAnyway** 

Specify to execute post-backup action in any case (regardless of the backup result). Possible values: $true/$false
        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-notification** 

Specify to receive notification email when backup fails (errorOnly) or in all cases (on). Prior to turn on the notification settings must be configured. Possible values: errorOnly, on, off
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Accepted values: |  errorOnly, on, off  |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-winLog** 

Specify to add entry to Windows Event Log when backup fails (errorOnly) or in all cases (on). Possible values: errorOnly, on, off
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Accepted values: |  errorOnly, on, off  |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-DisableBackupChain** 

Specify to disable next/chained plan execution
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-BackupChainPlanID** 

Specify chained plan ID. Use (Get-MBSBackupPlan | Where-Object Name -eq 'Backup plans name').ID or (Get-MBSRestorePlan | Where-Object Name -eq 'Backup plans name').ID
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-BackupChainExecuteOnlyAfterSuccess** 

Specify to execute the chained plan only if the current plan is completed successfully ($true) or always ($false)
        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-BackupChainExecuteForceFull** 

Specify to force full backup for the chained plan. Possible values: $true/$false
        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-KeepVersionPeriod** 

Purge versions that are older than period (except lastest version). Possible values: no, 1d(day), 1w(week), 1m(month)
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-KeepNumberOfVersions** 

Keep limited number of versions. Possible values: all, number
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-keepLastVersion** 

Always keep the last version. Possible values: $true/$false
        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-delayPurge** 

Specify purge delay. Possible values: no, 1d(day), 1w(week), 1m(month)
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-RecurringTypeForceFull** 

Specify force full schedule recurring type. Possible values: day, week, month, dayofmonth
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Accepted values: |  day, week, month, dayofmonth  |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-atForceFull** 

Specify datetime or time of force full schedule. Example -atForceFull ""06/09/19 7:43 AM"" , or -atForceFull ""7:43 AM""
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-DayOfMonthForceFull** 

Specify day for 'dayofmonth' force full schedule (1..31)
        
|       |     |
|-------|-----|
| Type | Int32 |
| Required: | false | 
| Position: | named |
| Default value: | 0 |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-weekdayForceFull** 

Specify day(s) of week for weekly force full schedule. Example: ""su, mo, tu, we, th, fr, sa"". Or specify day of week for monthly force full schedule
        
|       |     |
|-------|-----|
| Type | String[] |
| Required: | false | 
| Position: | named |
| Accepted values: |  su, mo, tu, we, th, fr, sa  |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-weeknumberForceFull** 

Specify number of week. Possible values: First, Second, Third, Fourth, Penultimate, Last
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Accepted values: |  First, Second, Third, Fourth, Penultimate, Last  |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-dailyFromForceFull** 

Specify daily force full recurring from value
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-dailyTillForceFull** 

Specify daily force full recurring till value
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-occursForceFull** 

Specify force full recurring period type. Possible values: hour, min
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Accepted values: |  hour, min  |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-occurValueForceFull** 

Specify force full recurring period value
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-repeatEveryForceFull** 

Specify force full repeat period value. Possible values: 1..31
        
|       |     |
|-------|-----|
| Type | Int32 |
| Required: | false | 
| Position: | named |
| Default value: | 0 |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-repeatStartDateForceFull** 

Specify force full start date of repetitions
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-rebackupDate** 

Specify rebackup datetime. Example: ""06/09/19 7:43 AM""
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-DisableForceFullSchedule** 

Specify to disable schedule of forced full backup
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-SyntheticFull** 

Use Synthetic Full backup (this parameter is NOT supported for all storage providers). Possible values: $true/$false
        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-useBlockLevelBackup** 

Use block level backup. Possible values: $true/$false
        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-UseFastNTFSScan** 

The Fast NTFS scan speeds up backup processing by using a low-level API for accessing NTFS structures. This option is useful for NTFS volumes with a large number of files. Enabling this option automatically enables ForceUsingVSS option. Possible values: $true/$false
        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-BackupNTFSPermissions** 

Backup NTFS permissions. Possible values: $true/$false
        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ForceUsingVSS** 

Force using VSS (Volume Shadow Copy Service). Cannot be disabled if UseFastNTFSScan is enabled. Possible values: $true/$false
        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-UseShareReadWriteModeOnError** 

Use share read/write mode on errors. Can help if file is open in share read/write mode. Possible values: $true/$false
        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-DeleteLocallyDeletedFilesAfter** 

Delete files that have been deleted locally after specified number of days. Example: ""-df 30""
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-BackupEmptyFolders** 

Backup empty folders. Possible values: $true/$false
        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-BackupOnlyAfter** 

Backup files only after specific date. Example: ""06/09/19 7:43 AM""
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ExcludeSystemHiddenFiles** 

Exclude system and hidden files and folders. Possible values: $true/$false
        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-SkipFolders** 

Skip folders with specified names (recursively). Example: -SkipFolders ""bin"",""*temp*"",""My*""
        
|       |     |
|-------|-----|
| Type | String[] |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-IncludeFilesMask** 

Select files by mask to include in the backup plan. Example: -ifm ""*.doc"",""*.xls""
        
|       |     |
|-------|-----|
| Type | String[] |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ExcludeFilesMask** 

Select files by mask to exclude from the backup plan. Example: -efm ""*.bak"",""*.tmp""
        
|       |     |
|-------|-----|
| Type | String[] |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-IgnoreErrorPathNotFound** 

Ignore path not found errors. Possible values: $true/$false
        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-TrackDeletedFiles** 

Track deleted files. Possible values: $true/$false
        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-AddNewFile** 

Add a new file to backup plan
        
|       |     |
|-------|-----|
| Type | String[] |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-AddNewDirectory** 

Add a new directory to backup plan
        
|       |     |
|-------|-----|
| Type | String[] |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ExcludeFile** 

Exclude a file from backup plan
        
|       |     |
|-------|-----|
| Type | String[] |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ExcludeDirectory** 

Exclude a directory from backup plan
        
|       |     |
|-------|-----|
| Type | String[] |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-BackupFile** 

Specify files to backup
        
|       |     |
|-------|-----|
| Type | String[] |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-BackupDirectory** 

Specify directories to backup
        
|       |     |
|-------|-----|
| Type | String[] |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-GenerateDetailedReport** 

Specify to generate detailed report. Possible values: $true/$false
        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-BackupVolumes** 

Type of volumes to backup. Possible values: AllVolumes, SystemRequired, SelectedVolumes
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Accepted values: |  AllVolumes, SystemRequired, SelectedVolumes  |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Volumes** 

Backup selected volumes with the specified IDs. Example: -Volumes ((Get-MBSDiskVolume).Volumes | Where {`$_.RequiredBySystem -eq `$true}).WindowsVolumeIdentity
        
|       |     |
|-------|-----|
| Type | String[] |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-disableVSS** 

Disable VSS, use direct access to NTFS volume. Possible values: $true/$false
        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-KeepBitLocker** 

Enable or disable KeepBitLocker option for all partitions. Possible values: $true/$false
        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ignoreBadSectors** 

Ignore bad sectors. Possible values: $true/$false
        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-useSystemVSS** 

Use system VSS provider. Possible values: $true/$false
        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-prefetchBlockCount** 

Prefetch block count (0 - 100, 0 without prefetch)
        
|       |     |
|-------|-----|
| Type | Int32 |
| Required: | false | 
| Position: | named |
| Default value: | 0 |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-blockSize** 

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

Exclude files/folders from Image-Based backup plan
        
|       |     |
|-------|-----|
| Type | String[] |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-DisableExcludeFilesFolders** 

Disable the 'Exclude files/folders' option in Image-Based backup plan
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-KeepBitLockerEnableForVolume** 

Enable KeepBitLocker option for volumes with specified ids
        
|       |     |
|-------|-----|
| Type | String[] |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-KeepBitLockerDisableForVolume** 

Disable KeepBitLocker option for volumes with specified ids
        
|       |     |
|-------|-----|
| Type | String[] |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |



>**CommonParameters**

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see [about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216). 


## Inputs



System.Management.Automation.PSCustomObject



## Outputs



System.Management.Automation.PSCustomObject


## Notes

Author: MSP360 Onboarding Team




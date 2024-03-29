---
Title: Edit-MBSNBFBackupPlan
HeadTitle: Edit-MBSNBFBackupPlan
Meta: 'Edit-MBSNBFBackupPlan'
RedirectUrl: ''
---
# Edit-MBSNBFBackupPlan
***

Edit NBF backup plans.

```

Edit-MBSNBFBackupPlan
		-All
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
		[-FullConsistencyCheck <Nullable`1>]
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
		[-RepeatStartDate <String>]
		[-stopAfter <String>]
		[-ForeverForwardIncremental <Nullable`1>]
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
		[-KeepVersionPeriod <Nullable`1>]
		[-GFSKeepWeekly <Nullable`1>]
		[-GFSKeepMonthly <Nullable`1>]
		[-GFSKeepYearly <Nullable`1>]
		[-GFSMonthOfTheYear {NotSet | January | February | March | April | May | June | July | August | September | October | November | December}]
		[-IntelligentRetention <Nullable`1>]
		[-RecurringTypeForceFull <String>]
		[-DayOfMonthForceFull <Int32>]
		[-weekdayForceFull <String[]>]
		[-repeatEveryForceFull <Int32>]
		[-repeatStartDateForceFull <String>]
		[-DisableForceFullSchedule]
		[<CommonParameters>]

Edit-MBSNBFBackupPlan
		-FileLevel
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
		[-FullConsistencyCheck <Nullable`1>]
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
		[-RepeatStartDate <String>]
		[-stopAfter <String>]
		[-ForeverForwardIncremental <Nullable`1>]
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
		[-KeepVersionPeriod <Nullable`1>]
		[-GFSKeepWeekly <Nullable`1>]
		[-GFSKeepMonthly <Nullable`1>]
		[-GFSKeepYearly <Nullable`1>]
		[-GFSMonthOfTheYear {NotSet | January | February | March | April | May | June | July | August | September | October | November | December}]
		[-IntelligentRetention <Nullable`1>]
		[-RecurringTypeForceFull <String>]
		[-DayOfMonthForceFull <Int32>]
		[-weekdayForceFull <String[]>]
		[-repeatEveryForceFull <Int32>]
		[-repeatStartDateForceFull <String>]
		[-DisableForceFullSchedule]
		[-UseFastNTFSScan <Nullable`1>]
		[-BackupNTFSPermissions <Nullable`1>]
		[-ForceUsingVSS <Nullable`1>]
		[-KeepEFSEncryption <Nullable`1>]
		[-UseShareReadWriteModeOnError <Nullable`1>]
		[-BackupEmptyFolders <Nullable`1>]
		[-BackupOnlyAfter <String>]
		[-ExcludeSystemHiddenFiles <Nullable`1>]
		[-SkipFolders <String[]>]
		[-IncludeFilesMask <String[]>]
		[-ExcludeFilesMask <String[]>]
		[-IgnoreErrorPathNotFound <Nullable`1>]
		[-AddNewFile <String[]>]
		[-AddNewDirectory <String[]>]
		[-ExcludeFile <String[]>]
		[-ExcludeDirectory <String[]>]
		[-BackupFile <String[]>]
		[-BackupDirectory <String[]>]
		[-GenerateDetailedReport <Nullable`1>]
		[<CommonParameters>]

Edit-MBSNBFBackupPlan
		-ImageBased
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
		[-FullConsistencyCheck <Nullable`1>]
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
		[-RepeatStartDate <String>]
		[-stopAfter <String>]
		[-ForeverForwardIncremental <Nullable`1>]
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
		[-KeepVersionPeriod <Nullable`1>]
		[-GFSKeepWeekly <Nullable`1>]
		[-GFSKeepMonthly <Nullable`1>]
		[-GFSKeepYearly <Nullable`1>]
		[-GFSMonthOfTheYear {NotSet | January | February | March | April | May | June | July | August | September | October | November | December}]
		[-IntelligentRetention <Nullable`1>]
		[-RecurringTypeForceFull <String>]
		[-DayOfMonthForceFull <Int32>]
		[-weekdayForceFull <String[]>]
		[-repeatEveryForceFull <Int32>]
		[-repeatStartDateForceFull <String>]
		[-DisableForceFullSchedule]
		[-SyntheticFull <Nullable`1>]
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
		[-RestoreVerificationMode <Nullable`1>]
		[<CommonParameters>]





```

***

## Description

Edit new backup format (NBF) backup plans. File-Level and Image-Based backup plan types are supported.

***

## Examples


### Example 1: Enable compression option for all new format backup plans.    

```
PS C:\> Get-MBSBackupPlan -PlanFormat NBF | Edit-MBSNBFBackupPlan -All -Compression $true
```
 
### Example 2: Enable forever forward incremental backup for plan with name 'Files' and set it to run every day at 10:00 PM and keep all backups for 3 months.    

```
PS C:\> Edit-MBSNBFBackupPlan -FileLevel -Name 'Files' -ForeverForwardIncremental $true -KeepVersionPeriod 90 -RecurringType day -At 22:00
```
 
### Example 3: Exclude all OneDrive folders in 'C:\Users' (recursively) in all new format image-based backup plans.    

```
PS C:\> Get-MBSBackupPlan -PlanType Image-Based -PlanFormat NBF | Edit-MBSNBFBackupPlan -ImageBased -ExcludeItem (Get-ChildItem -Path 'C:\Users' -Recurse | Where-Object {$_.PSIsContainer -eq $true -and $_.Name -match 'OneDrive'}).FullName
```
 
### Example 4: Add only system required volumes to cloud image-based backup plans.    

```
PS C:\> Get-MBSBackupPlan -StorageType Cloud -PlanType Image-Based -PlanFormat NBF | Edit-MBSNBFBackupPlan -ImageBased -BackupVolumes SystemRequired
```
 
### Example 5: Change storage account to Wasabi in all NBF backup plans which names start with 'Share'    

```
PS C:\> Get-MBSBackupPlan -PlanFormat NBF | Where {$_.Name -like 'Share*'} | Edit-MBSNBFBackupPlan -All -StorageAccountID (Get-MBSStorageAccount | Where {$_.DisplayName -like 'Wasabi'}).ID
```


***

## Parameters

>**-FileLevel** 

Switch parameter for modifying settings of file-level backup plans only
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | true | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ImageBased** 

Switch parameter for modifying settings of image-based backup plans only
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | true | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-All** 

Switch parameter for modifying settings present in any backup plan type (e.g. encryption, compression, retention policy, schedule)
        
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

 >**-StorageAccountID** 

Account Name or Account ID. Use Get-MBSStorageAccount to list storages
        
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

 >**-FullConsistencyCheck** 

Use full consistency check
        
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

Specify schedule recurring type. Possible values: day, week, month, dayofmonth
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Accepted values: |  day, week, month, dayofmonth  |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-At** 

Specify datetime or time of schedule. Example -at ""06/09/19 7:43 AM"" , or -at ""7:43 AM"" for every day schedule
        
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

 >**-RepeatStartDate** 

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

 >**-ForeverForwardIncremental** 

Enable Forever Forward Incremental backup. Possible values: $true/$false
        
|       |     |
|-------|-----|
| Type | Nullable`1 |
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

Specify to continue backup plan if pre-backup action fails. Possible values: $true/$false
        
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

Specify chained plan ID. Use (Get-MBSBackupPlan | Where-Object Name -eq 'Backup plans name').ID or (Get-MBSRestorePlan | Where-Object Name -eq 'Backup plan name').ID
        
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

Keep backups for specified number of days. Set 0 to keep all versions or specify number of days. Example: -KeepVersionPeriod 90
        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-GFSKeepWeekly** 

Keep weekly full backups using GFS retention policy. Set 0 to disable or specify number of weeks. Example: -GFSKeepWeekly 4
        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-GFSKeepMonthly** 

Keep monthly full backups using GFS retention policy. Set 0 to disable or specify number of months. Example: -GFSKeepMonthly 12
        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-GFSKeepYearly** 

Keep yearly full backups using GFS retention policy. Set 0 to disable or specify number of years. Example: -GFSKeepYearly 5
        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-GFSMonthOfTheYear** 

Specify the month for the first successful full backup to be marked for GFS yearly retention. Example: -GFSMonthOfTheYear January
        
|       |     |
|-------|-----|
| Type | Month |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-IntelligentRetention** 

Enable Intelligent Retention for Forever Forward Incremental. Possible values: $true/$false. By default set to $true if Forever Forward Incremental is enabled
        
|       |     |
|-------|-----|
| Type | Nullable`1 |
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

 >**-KeepEFSEncryption** 

Back up EFS files as encrypted. Possible values: $true/$false
        
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

Type of volumes to backup. Possible values: AllVolumes, FixedVolumes, SystemRequired, SelectedVolumes
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Accepted values: |  AllVolumes, FixedVolumes, SystemRequired, SelectedVolumes  |
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

Enable KeepBitLocker option for volumes with specified IDs
        
|       |     |
|-------|-----|
| Type | String[] |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-KeepBitLockerDisableForVolume** 

Disable KeepBitLocker option for volumes with specified IDs
        
|       |     |
|-------|-----|
| Type | String[] |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-RestoreVerificationMode** 

Run restore verification mode. Possible values: DoNotRun, RunForFull, RunForIncremental, RunForFullAndIncremental
        
|       |     |
|-------|-----|
| Type | Nullable`1 |
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




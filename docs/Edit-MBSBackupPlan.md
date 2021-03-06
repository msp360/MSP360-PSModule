# Edit-MBSBackupPlan
***

Edit MBS backup plan.

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
		[-output <String>]
		[-MasterPassword <SecureString>]
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
		[-preActionCommand <String>]
		[-preActionContinueAnyway <Nullable`1>]
		[-postActionCommand <String>]
		[-postActionRunAnyway <Nullable`1>]
		[-notification <String>]
		[-winLog <String>]
		[-purge <String>]
		[-keep <String>]
		[-keepLastVersion <Nullable`1>]
		[-delayPurge <String>]
		[-runMissed <Nullable`1>]
		[-RecurringTypeForceFull <String>]
		[-atForceFull <String>]
		[-DayOfMonthForceFull <Int32>]
		[-weekdayForceFull <String>]
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
		[-ExecuteChainedPlan <Nullable`1>]
		[-ChainedPlanID <String>]
		[-ExecuteChainedPlanAnyway <Nullable`1>]
		[-ForceFullChainedPlan <Nullable`1>]
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
		[-output <String>]
		[-MasterPassword <SecureString>]
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
		[-preActionCommand <String>]
		[-preActionContinueAnyway <Nullable`1>]
		[-postActionCommand <String>]
		[-postActionRunAnyway <Nullable`1>]
		[-notification <String>]
		[-winLog <String>]
		[-purge <String>]
		[-keep <String>]
		[-keepLastVersion <Nullable`1>]
		[-delayPurge <String>]
		[-runMissed <Nullable`1>]
		[-RecurringTypeForceFull <String>]
		[-atForceFull <String>]
		[-DayOfMonthForceFull <Int32>]
		[-weekdayForceFull <String>]
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
		[-ntfs <Nullable`1>]
		[-ForceUsingVSS <Nullable`1>]
		[-sharerw <Nullable`1>]
		[-DeleteLocallyDeletedFilesAfter <String>]
		[-BackupEmptyFolders <Nullable`1>]
		[-BackupOnlyAfter <String>]
		[-ExcludeSystemHiddenFiles <Nullable`1>]
		[-SkipFolders <String>]
		[-IncludeFilesMask <String>]
		[-ExcludeFilesMask <String>]
		[-IgnoreErrorPathNotFound <Nullable`1>]
		[-TrackDeletedFiles <Nullable`1>]
		[-AddNewFile <String>]
		[-AddNewFolder <String>]
		[-ExcludeFile <String[]>]
		[-ExcludeDirectory <String[]>]
		[-BackupFile <String>]
		[-BackupDirectory <String>]
		[-GenerateDetailedReport <Nullable`1>]
		[<CommonParameters>]

Edit-MBSBackupPlan
		-ImageBasedParameterSet
		[-ID <String>]
		[-Name <String>]
		[-ExecuteChainedPlan <Nullable`1>]
		[-ChainedPlanID <String>]
		[-ExecuteChainedPlanAnyway <Nullable`1>]
		[-ForceFullChainedPlan <Nullable`1>]
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
		[-output <String>]
		[-MasterPassword <SecureString>]
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
		[-preActionCommand <String>]
		[-preActionContinueAnyway <Nullable`1>]
		[-postActionCommand <String>]
		[-postActionRunAnyway <Nullable`1>]
		[-notification <String>]
		[-winLog <String>]
		[-purge <String>]
		[-keep <String>]
		[-keepLastVersion <Nullable`1>]
		[-delayPurge <String>]
		[-runMissed <Nullable`1>]
		[-RecurringTypeForceFull <String>]
		[-atForceFull <String>]
		[-DayOfMonthForceFull <Int32>]
		[-weekdayForceFull <String>]
		[-weeknumberForceFull <String>]
		[-dailyFromForceFull <String>]
		[-dailyTillForceFull <String>]
		[-occursForceFull <String>]
		[-occurValueForceFull <String>]
		[-repeatEveryForceFull <Int32>]
		[-repeatStartDateForceFull <String>]
		[-DisableForceFullSchedule]
		[-useBlockLevelBackup <Nullable`1>]
		[-ExcludeFile <String[]>]
		[-ExcludeDirectory <String[]>]
		[-BackupVolumes <String>]
		[-Volumes <String[]>]
		[-disableVSS <Nullable`1>]
		[-KeepBitLocker <Nullable`1>]
		[-ignoreBadSectors <Nullable`1>]
		[-useSystemVSS <Nullable`1>]
		[-prefetchBlockCount <Int32>]
		[-blockSize <String>]
		[<CommonParameters>]

Edit-MBSBackupPlan
		-CommonParameterSet
		[-ID <String>]
		[-Name <String>]
		[-ExecuteChainedPlan <Nullable`1>]
		[-ChainedPlanID <String>]
		[-ExecuteChainedPlanAnyway <Nullable`1>]
		[-ForceFullChainedPlan <Nullable`1>]
		[<CommonParameters>]





```

***

## Description

Edit MBS supported backup plan. File-Level and Image-Based backup plan type are supported.

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


        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | true | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ImageBasedParameterSet** 


        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | true | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-CommonParameterSet** 


        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | true | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ID** 


        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-Name** 


        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-SpecialFunction** 


        
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


        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-NewName** 


        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-DisableEncryption** 


        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-DisableSchedule** 


        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-SyncBeforeRun** 


        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ServerSideEncryption** 


        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-EncryptionAlgorithm** 


        
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


        
|       |     |
|-------|-----|
| Type | SecureString |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Compression** 


        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-StorageClass** 


        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Accepted values: |  Standard, IntelligentTiering, StandardIA, OneZoneIA, Glacier, GlacierDeepArchive  |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-SaveBPConfiguration** 


        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-output** 


        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Accepted values: |  short, full  |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-MasterPassword** 


        
|       |     |
|-------|-----|
| Type | SecureString |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-RecurringType** 

------------------------- Schedule -----------------------------
        
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


        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-DayOfMonth** 


        
|       |     |
|-------|-----|
| Type | Int32 |
| Required: | false | 
| Position: | named |
| Default value: | 0 |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-WeekDay** 


        
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


        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-DailyTill** 


        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Occurs** 


        
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


        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-RepeatEvery** 


        
|       |     |
|-------|-----|
| Type | Int32 |
| Required: | false | 
| Position: | named |
| Default value: | 0 |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-repeatStartDate** 


        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-stopAfter** 


        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-preActionCommand** 

------------------ Pre / Post actions ----------------------------
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-preActionContinueAnyway** 


        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-postActionCommand** 


        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-postActionRunAnyway** 


        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-notification** 


        
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


        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Accepted values: |  errorOnly, on, off  |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ExecuteChainedPlan** 


        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ChainedPlanID** 


        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ExecuteChainedPlanAnyway** 


        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ForceFullChainedPlan** 


        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-purge** 

---------------------------- Retention Policy -------------------------
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-keep** 


        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-keepLastVersion** 


        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-delayPurge** 


        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-runMissed** 

-------------------------Full schedule -----------------------------------
        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-RecurringTypeForceFull** 


        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Accepted values: |  day, week, month, dayofmonth, real-time  |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-atForceFull** 


        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-DayOfMonthForceFull** 


        
|       |     |
|-------|-----|
| Type | Int32 |
| Required: | false | 
| Position: | named |
| Default value: | 0 |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-weekdayForceFull** 


        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-weeknumberForceFull** 


        
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


        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-dailyTillForceFull** 


        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-occursForceFull** 


        
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


        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-repeatEveryForceFull** 


        
|       |     |
|-------|-----|
| Type | Int32 |
| Required: | false | 
| Position: | named |
| Default value: | 0 |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-repeatStartDateForceFull** 


        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-rebackupDate** 


        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-DisableForceFullSchedule** 


        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-useBlockLevelBackup** 

---------------------------- Block Level ------------------
        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ntfs** 

--------------------------- File Backup settings ------------
        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ForceUsingVSS** 


        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-sharerw** 


        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-DeleteLocallyDeletedFilesAfter** 


        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-BackupEmptyFolders** 


        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-BackupOnlyAfter** 


        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ExcludeSystemHiddenFiles** 


        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-SkipFolders** 


        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-IncludeFilesMask** 


        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ExcludeFilesMask** 


        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-IgnoreErrorPathNotFound** 


        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-TrackDeletedFiles** 


        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-AddNewFile** 


        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-AddNewFolder** 


        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ExcludeFile** 


        
|       |     |
|-------|-----|
| Type | String[] |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ExcludeDirectory** 


        
|       |     |
|-------|-----|
| Type | String[] |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-BackupFile** 


        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-BackupDirectory** 


        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-GenerateDetailedReport** 


        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-BackupVolumes** 

------------------------- Image-Based --------------------------------------
        
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


        
|       |     |
|-------|-----|
| Type | String[] |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-disableVSS** 


        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-KeepBitLocker** 


        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ignoreBadSectors** 


        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-useSystemVSS** 


        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-prefetchBlockCount** 


        
|       |     |
|-------|-----|
| Type | Int32 |
| Required: | false | 
| Position: | named |
| Default value: | 0 |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-blockSize** 


        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Accepted values: |  128, 256, 512, 1024  |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |



>**CommonParameters**

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see        [about_CommonParameters] (https://go.microsoft.com/fwlink/?LinkID=113216). 


## Inputs



System.Management.Automation.PSCustomObject



## Outputs



System.Management.Automation.PSCustomObject


## Notes

Author: Alex Volkov




---
Title: New-MBSNBFBackupPlanCommonOption
HeadTitle: New-MBSNBFBackupPlanCommonOption
Meta: 'New-MBSNBFBackupPlanCommonOption'
RedirectUrl: ''
---
# New-MBSNBFBackupPlanCommonOption
***

Returns MBS.Agent.Plan.NBFBackupPlanCommonOption type object with common backup plan options.

```

New-MBSNBFBackupPlanCommonOption
		[-SyncRepositoryBeforeRun <Boolean>]
		[-UseServerSideEncryption <Boolean>]
		[-EncryptionAlgorithm {AES128 | AES192 | AES256}]
		[-EncryptionPassword <SecureString>]
		[-UseCompression <Boolean>]
		[-StorageClass {Standard | IntelligentTiering | StandardIA | OneZoneIA | Glacier | GlacierInstantRetrieval | GlacierDeepArchive}]
		[-FullConsistencyCheck <Boolean>]
		[-StopIfPlanRunsFor <TimeSpan>]
		[-RunMissedPlanImmediately <Boolean>]
		-ForeverForwardIncremental <Boolean>
		[-PreActionCommand <String>]
		[-PreActionContinueAnyway <Nullable`1>]
		[-PostActionCommand <String>]
		[-PostActionRunAnyway <Nullable`1>]
		[-BackupChainPlanID <String>]
		[-BackupChainExecuteOnlyAfterSuccess <Nullable`1>]
		[-BackupChainExecuteForceFull <Nullable`1>]
		[-ResultEmailNotification {off | errorOnly | on}]
		[-AddEventToWindowsLog {off | errorOnly | on}]
		-KeepVersionPeriod <Int32>
		[-IntelligentRetention <Boolean>]
		[<CommonParameters>]

New-MBSNBFBackupPlanCommonOption
		[-SyncRepositoryBeforeRun <Boolean>]
		[-UseServerSideEncryption <Boolean>]
		[-EncryptionAlgorithm {AES128 | AES192 | AES256}]
		[-EncryptionPassword <SecureString>]
		[-UseCompression <Boolean>]
		[-StorageClass {Standard | IntelligentTiering | StandardIA | OneZoneIA | Glacier | GlacierInstantRetrieval | GlacierDeepArchive}]
		[-FullConsistencyCheck <Boolean>]
		[-StopIfPlanRunsFor <TimeSpan>]
		[-RunMissedPlanImmediately <Boolean>]
		[-PreActionCommand <String>]
		[-PreActionContinueAnyway <Nullable`1>]
		[-PostActionCommand <String>]
		[-PostActionRunAnyway <Nullable`1>]
		[-BackupChainPlanID <String>]
		[-BackupChainExecuteOnlyAfterSuccess <Nullable`1>]
		[-BackupChainExecuteForceFull <Nullable`1>]
		[-ResultEmailNotification {off | errorOnly | on}]
		[-AddEventToWindowsLog {off | errorOnly | on}]
		[-KeepVersionPeriod <Int32>]
		[-GFSKeepWeekly <Int32>]
		[-GFSKeepMonthly <Int32>]
		[-GFSKeepYearly <Int32>]
		[-GFSMonthOfTheYear {NotSet | January | February | March | April | May | June | July | August | September | October | November | December}]
		[<CommonParameters>]





```

***

## Description

Create NBFBackupPlanCommonOption type object with common backup plan options. Used with New-MBSNBFFileBackupPlan and  New-MBSNBFIBBBackupPlan cmdlets.

***

## Examples


### Example 1: Create backup plan common options object.    

```
PS C:\> $CommonOptions = New-MBSNBFBackupPlanCommonOption -SyncRepositoryBeforeRun $true -UseServerSideEncryption $true -EncryptionAlgorithm AES256 -EncryptionPassword (ConvertTo-SecureString -string "My_Password" -AsPlainText -Force) -UseCompression $true -StorageClass OneZoneIA -StopIfPlanRunsFor 10:00
```


***

## Parameters

>**-SyncRepositoryBeforeRun** 

Synchronize local repository before running backup plan
        
|       |     |
|-------|-----|
| Type | Boolean |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-UseServerSideEncryption** 

Use server side encryption (valid only for Amazon S3)
        
|       |     |
|-------|-----|
| Type | Boolean |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-EncryptionAlgorithm** 

Encryption algorithm. Possible values: AES128-256
        
|       |     |
|-------|-----|
| Type | EncryptionAlgorithm |
| Required: | false | 
| Position: | named |
| Default value: | AES256 |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-EncryptionPassword** 

Encryption password. Use -EncryptionPassword (ConvertTo-SecureString -string Your_Password" -AsPlainText -Force)
        
|       |     |
|-------|-----|
| Type | SecureString |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-UseCompression** 

Use compression for backup
        
|       |     |
|-------|-----|
| Type | Boolean |
| Required: | false | 
| Position: | named |
| Default value: | True |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-StorageClass** 

Storage Class (valid only for Amazon S3)
        
|       |     |
|-------|-----|
| Type | StorageClass |
| Required: | false | 
| Position: | named |
| Default value: | Standard |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-FullConsistencyCheck** 

Use full consistency check
        
|       |     |
|-------|-----|
| Type | Boolean |
| Required: | false | 
| Position: | named |
| Default value: | True |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-StopIfPlanRunsFor** 

Specify time in HH:MM to stop the plan if it runs for HH hours MM minutes. Example -StopIfPlanRunsFor "20:30" or -StopIfPlanRunsFor "100:00 etc.
        
|       |     |
|-------|-----|
| Type | TimeSpan |
| Required: | false | 
| Position: | named |
| Default value: | 00:00 |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-RunMissedPlanImmediately** 

Run missed scheduled backup immediately when computer starts up.
        
|       |     |
|-------|-----|
| Type | Boolean |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ForeverForwardIncremental** 

Enables Forever Forward Incremental backup
        
|       |     |
|-------|-----|
| Type | Boolean |
| Required: | true | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-PreActionCommand** 

Specify command to be executed before backup completes
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-PreActionContinueAnyway** 

Specify to continue backup plan if pre-backup action failed.
        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-PostActionCommand** 

Specify command to be executed after backup has been successfully completed.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-PostActionRunAnyway** 

Specify to execute post-backup action in any case (regardless the backup result).
        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
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

Specify to force full backup for the chained plan
        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ResultEmailNotification** 

Specify to send backup plan result notification email when backup fails (errorOnly) or in all cases (on). Prior to turn on the notification settings must be configured.
        
|       |     |
|-------|-----|
| Type | Notification |
| Required: | false | 
| Position: | named |
| Default value: | off |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-AddEventToWindowsLog** 

Specify to add entry to Windows Event Log when backup fails (errorOnly) or in all cases (on).
        
|       |     |
|-------|-----|
| Type | Notification |
| Required: | false | 
| Position: | named |
| Default value: | off |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-KeepVersionPeriod** 

Keep versions for specified number of days. Omit to use defult retention policy, set 0 to keep all versions or specify number of days. Example: -KeepVersionPeriod 180
        
|       |     |
|-------|-----|
| Type | Int32 |
| Required: | true | 
| Position: | named |
| Default value: | 0 |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-GFSKeepWeekly** 

Enables GFS weekly storage type. Example: -KeepVersionPeriod 4
        
|       |     |
|-------|-----|
| Type | Int32 |
| Required: | false | 
| Position: | named |
| Default value: | 0 |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-GFSKeepMonthly** 

Enables GFS monthly storage type. Example: -KeepVersionPeriod 12
        
|       |     |
|-------|-----|
| Type | Int32 |
| Required: | false | 
| Position: | named |
| Default value: | 0 |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-GFSKeepYearly** 

Enables GFS yearly storage type. Example: -KeepVersionPeriod 5
        
|       |     |
|-------|-----|
| Type | Int32 |
| Required: | false | 
| Position: | named |
| Default value: | 0 |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-GFSMonthOfTheYear** 

Specify the number of month for the first successful GFS full backup for yearly storage type. Example: -GFSMonthOfTheYear February
        
|       |     |
|-------|-----|
| Type | Month |
| Required: | false | 
| Position: | named |
| Default value: | NotSet |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-IntelligentRetention** 

Enables Intelligent Retention for Forever Forward Incremental
        
|       |     |
|-------|-----|
| Type | Boolean |
| Required: | false | 
| Position: | named |
| Default value: | True |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |



>**CommonParameters**

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see [about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216). 


## Inputs



None.



## Outputs



MBS.Agent.Plan.NBFBackupPlanCommonOption


## Notes

Author: MSP360 Onboarding Team




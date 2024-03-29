---
Title: New-MBSBackupPlanCommonOption
HeadTitle: New-MBSBackupPlanCommonOption
Meta: 'New-MBSBackupPlanCommonOption'
RedirectUrl: ''
---
# New-MBSBackupPlanCommonOption
***

Returns MBS.Agent.Plan.BackupPlanCommonOption type object with common backup plan options.

```

New-MBSBackupPlanCommonOption
		[-SyncRepositoryBeforeRun <Boolean>]
		[-UseServerSideEncryption <Boolean>]
		[-EncryptionAlgorithm {AES128 | AES192 | AES256}]
		[-EncryptionPassword <SecureString>]
		[-UseCompression <Boolean>]
		[-StorageClass {Standard | IntelligentTiering | StandardIA | OneZoneIA | Glacier | GlacierInstantRetrieval | GlacierDeepArchive}]
		[-SaveBackupPlanConfiguration <Boolean>]
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
		[-KeepVersionPeriod <Nullable`1>]
		[-KeepNumberOfVersion <Nullable`1>]
		[-KeepLastVersion <Boolean>]
		[-DelayPurgePeriod <Nullable`1>]
		[<CommonParameters>]





```

***

## Description

Create BackupPlanCommonOption type object with common backup plan options. Used with New-MBSBackupPlan cmdlet.

***

## Examples


### Example 1: Create backup plan common options object.    

```
PS C:\> $CommonOptions = New-MBSBackupPlanCommonOption -SyncRepositoryBeforeRun $true -UseServerSideEncryption $true -EncryptionAlgorithm AES256 -EncryptionPassword (ConvertTo-SecureString -string "My_Password" -AsPlainText -Force) -UseCompression $true -StorageClass OneZoneIA -SaveBackupPlanConfiguration $true -StopIfPlanRunsFor 10:00
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

 >**-SaveBackupPlanConfiguration** 

Save backup plan configuration to the backup storage
        
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
| Type | Nullable`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-KeepNumberOfVersion** 

Keep limited number of versions. Possible values: 0 to keep all version or specific number of versions
        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-KeepLastVersion** 

Always keep the last version.
        
|       |     |
|-------|-----|
| Type | Boolean |
| Required: | false | 
| Position: | named |
| Default value: | True |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-DelayPurgePeriod** 

Specify purge delay. Omit to use defult retention policy, set 0 to purge version withour delay or specify number of days. Example: -DelayPurgePeriod 180
        
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



None.



## Outputs



MBS.Agent.Plan.BackupPlanCommonOption


## Notes

Author: MSP360 Onboarding Team




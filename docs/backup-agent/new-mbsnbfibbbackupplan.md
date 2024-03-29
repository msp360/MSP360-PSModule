---
Title: New-MBSNBFIBBBackupPlan
HeadTitle: New-MBSNBFIBBBackupPlan
Meta: 'New-MBSNBFIBBBackupPlan'
RedirectUrl: ''
---
# New-MBSNBFIBBBackupPlan
***

Creates new Image-Based backup plan.

```

New-MBSNBFIBBBackupPlan
		-Name <String>
		-StorageAccount <StorageAccount>
		[-MasterPassword <SecureString>]
		[-Schedule <NBFIncrementalSchedule>]
		[-FullSchedule <NBFFullSchedule>]
		-BackupPlanCommonOption <NBFBackupPlanCommonOption>
		-BackupVolumes {AllVolumes | FixedVolumes | SystemRequired | SelectedVolumes}
		[-Volumes <IBBVolume[]>]
		[-RestoreVerificationMode {DoNotRun | RunForFull | RunForIncremental | RunForFullAndIncremental}]
		[-DisableVSS]
		[-IgnoreBadSectors <Boolean>]
		[-UseSystemVSS]
		[-PrefetchBlockCount <Int32>]
		[-BlockSize <String>]
		[-ExcludeItem <List`1>]
		[-KeepBitLocker]
		[-KeepBitLockerEnableForVolume <List`1>]
		[-KeepBitLockerDisableForVolume <List`1>]
		[<CommonParameters>]





```

***

## Description

Creates new Image-Based backup plan.

***

## Examples


### Example 1: Create Image-Based backup plan for all volumes.    

```
PS C:\> New-MBSNBFIBBBackupPlan -Name "IBB Plan all volumes" -StorageAccount (Get-MBSStorageAccount -ID aa3230dc-c20f-4ff3-83be-1cf6820de46b) -BackupVolumes AllVolumes -Schedule $schedule -BackupPlanCommonOption $commonOptions
```
 
### Example 2: Create Image-Based backup plan for system required volumes only.    

```
PS C:\> New-MBSNBFIBBBackupPlan -Name "IBB Plan system required volumes" -StorageAccount (Get-MBSStorageAccount -ID aa3230dc-c20f-4ff3-83be-1cf6820de46b) -BackupVolumes SystemRequired -Schedule $schedule -BackupPlanCommonOption $commonOptions
```
 
### Example 3: Create Image-Based backup plan for C:\ and D:\ volumes only.    

```
PS C:\> New-MBSNBFIBBBackupPlan -Name "IBB Plan C and D volumes" -StorageAccount (Get-MBSStorageAccount -ID aa3230dc-c20f-4ff3-83be-1cf6820de46b) -BackupVolumes SelectedVolumes -Volumes ((Get-MBSDiskVolume).volumes | Where-Object MountPoints -in "D:\") -Schedule $schedule -BackupPlanCommonOption $commonOptions
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

Specify schedule. Use New-MBSNBFPlanSchedule -Incremental to create an object.
        
|       |     |
|-------|-----|
| Type | NBFIncrementalSchedule |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-FullSchedule** 

Specify force full schedule. Use New-MBSNBFPlanSchedule -Full to create an object.
        
|       |     |
|-------|-----|
| Type | NBFFullSchedule |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-BackupPlanCommonOption** 

------------------------- BackupPlanCommonOption -----------------------------
        
|       |     |
|-------|-----|
| Type | NBFBackupPlanCommonOption |
| Required: | true | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-BackupVolumes** 

Backup Volumes type.
        
|       |     |
|-------|-----|
| Type | BackupVolumeType |
| Required: | true | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Volumes** 

Backup selected volumes. Use (Get-MBSDiskVolume).volumes to get volumes. Use ((Get-MBSDiskVolume).volumes | Where-Object MountPoints -in "D:\","C:\") if you want to backup only D: and C: drive.
        
|       |     |
|-------|-----|
| Type | IBBVolume[] |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-RestoreVerificationMode** 

Run restore verification mode.
        
|       |     |
|-------|-----|
| Type | RestoreVerificationMode |
| Required: | false | 
| Position: | named |
| Default value: | DoNotRun |
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

 >**-PrefetchBlockCount** 

Prefetch block count (0 - 100, 0 without prefetch)
        
|       |     |
|-------|-----|
| Type | Int32 |
| Required: | false | 
| Position: | named |
| Default value: | 100 |
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
| Default value: | 1024 |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ExcludeItem** 

Exclude files/folders from Image-Based backup plan. Example: "C:\bin","C:\Users","\\?\\Volume{2b7ea38e-0854-44a9-90f8-259fe8d52d20}\Recovery"
        
|       |     |
|-------|-----|
| Type | List`1 |
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
| Type | List`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-KeepBitLockerDisableForVolume** 

Disable KeepBitLocker option for volumes with specified ids. Example: "01bc714b-b611-448e-8fff-2e0e4a0d9004","a44e3efd-17ef-4f2c-bd66-5cbda5f23939"
        
|       |     |
|-------|-----|
| Type | List`1 |
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



MBS.Agent.Plan.NBFImageBasedBackupPlan


## Notes

Author: MSP360 Onboarding Team




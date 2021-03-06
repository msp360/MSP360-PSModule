# New-MBSRestoreCommonOptions
***

Returns MBS.Agent.Plan.RestorePlanCommonOption type object with common restore plan options.

```

New-MBSRestoreCommonOptions
		[[-SyncRepositoryBeforeRun] <Boolean>]
		[[-StopIfPlanRunsFor] <TimeSpan>]
		[[-EncryptionPassword] <SecureString>]
		[[-PreActionCommand] <String>]
		[[-PreActionContinueAnyway] <Boolean>]
		[[-PostActionCommand] <String>]
		[[-PostActionRunAnyway] <Boolean>]
		[[-ResultEmailNotification] {errorOnly | on | off}]
		[[-AddEventToWindowsLog] {errorOnly | on | off}]
		[<CommonParameters>]





```

***

## Description

Create RestorePlanCommonOption type object with common restore plan options. Used with New-MBSRestorePlan cmdlet.

***

## Examples


### Example 1: Create restore plan common options object.    

```
PS C:\> $CommonOptions = New-MBSRestorePlanCommonOption -SyncRepositoryBeforeRun $true -StopIfPlanRunsFor "10:00" -EncryptionPassword (ConvertTo-SecureString -string "Your_Password" -AsPlainText -Force) -PreActionCommand "cmd.exe" -PreActionContinueAnyway $true -PostActionCommand "ps.exe" -PostActionRunAnyway $false -ResultEmailNotification errorOnly -AddEventToWindowsLog off
```


***

## Parameters

>**-SyncRepositoryBeforeRun** 

Syncronize local repository before running backup plan
        
|       |     |
|-------|-----|
| Type | Boolean |
| Required: | false | 
| Position: | 1 |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-StopIfPlanRunsFor** 

Specify time in HH:MM to stop the plan if it runs for HH hours MM minutes. Example -StopIfPlanRunsFor "20:30" or -StopIfPlanRunsFor "100:00 etc.
        
|       |     |
|-------|-----|
| Type | TimeSpan |
| Required: | false | 
| Position: | 2 |
| Default value: | 00:00 |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-EncryptionPassword** 

Encryption password. Use -EncryptionPassword (ConvertTo-SecureString -string Your_Password" -AsPlainText -Force)
        
|       |     |
|-------|-----|
| Type | SecureString |
| Required: | false | 
| Position: | 3 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-PreActionCommand** 

Specify command to be executed before backup completes
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 4 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-PreActionContinueAnyway** 

Specify to continue backup plan if pre-backup action failed.
        
|       |     |
|-------|-----|
| Type | Boolean |
| Required: | false | 
| Position: | 5 |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-PostActionCommand** 

Specify command to be executed after backup has been successfully completed.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 6 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-PostActionRunAnyway** 

Specify to execute post-backup action in any case (regardless the backup result).
        
|       |     |
|-------|-----|
| Type | Boolean |
| Required: | false | 
| Position: | 7 |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ResultEmailNotification** 

Specify to send backup plan result notification email when backup fails (errorOnly) or in all cases (on). Prior to turn on the notification settings must be configured.
        
|       |     |
|-------|-----|
| Type | Notification |
| Required: | false | 
| Position: | 8 |
| Default value: | on |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-AddEventToWindowsLog** 

Specify to add entry to Windows Event Log when backup fails (errorOnly) or in all cases (on).
        
|       |     |
|-------|-----|
| Type | Notification |
| Required: | false | 
| Position: | 9 |
| Default value: | on |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |



>**CommonParameters**

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see        [about_CommonParameters] (https://go.microsoft.com/fwlink/?LinkID=113216). 


## Inputs



None.



## Outputs



MBS.Agent.Plan.RestorePlanCommonOption


## Notes

Author: Alex Volkov




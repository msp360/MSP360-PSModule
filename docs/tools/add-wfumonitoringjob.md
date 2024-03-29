---
Title: Add-WFUMonitoringJob
HeadTitle: Add-WFUMonitoringJob
Meta: 'Add-WFUMonitoringJob'
RedirectUrl: ''
---
# Add-WFUMonitoringJob
***

Add status monitoring task to windows task scheduler for Windows Firewall, Windows Defender, Third party antivirus, and Windows Update Services.

```

Add-WFUMonitoringJob
		[[-JobName] <String>]
		[-JobUserName] <String>
		[-JobUserPwd] <String>
		[-MessageFrom] <String>
		[-MessageTo] <String>
		[[-MessageSubject] <String>]
		[-MessageSMTPServer] <String>
		[-MessagePort] <Int32>
		[-MessageUseSSL] <Boolean>
		[-MessageUserName] <String>
		[-MessageCredsPassword] <String>
		[[-IsFirewallMonitored] <Boolean>]
		[[-IsWindowsDefenderMonitored] <Boolean>]
		[[-Is3PartyAntivirusMonitored] <Boolean>]
		[[-IsWindowsUpdateMonitored] <Boolean>]
		[[-WindowsUpdateNotificationLevel] <Int32>]
		[[-MonitoringJobSchedule] <Object>]
		[<CommonParameters>]





```

***

## Description

Admin permissions are required.

***

## Examples


### Example 1: -JobUserName "Domain\MyUser" `
-JobUserPwd 'MyUserPassword' `
-MessageFrom "My_email@gmail.com" `
-MessageTo "My_email@gmail.com" `
-MessageSMTPServer "smtp.gmail.com" `
-MessagePort 587 `
-MessageUseSSL $true `
-MessageUserName "My_email@gmail.com" `
-MessageCredsPassword 'MyEmailPassword'

Add monitoring task with default options. Specify mandatory parameters only.    

```
PS C:\> .\Add-WFUMonitoringJob.ps1 `
```
 
### Example 2: -JobName "Monitoring Windows Security services" `
-JobUserName "domain\user" `
-JobUserPwd 'MyUserPassword' `
-MessageFrom "My_email@gmail.com" `
-MessageTo "My_Email@gmail.com" `
-MessageSubject "Security Alert" `
-MessageSMTPServer smtp.gmail.com `
-MessagePort 587 `
-MessageUseSSL $true `
-MessageUserName "My_email@gmail.com" `
-MessageCredsPassword 'MyEmailPassword' `
-IsFirewallMonitored $true `
-IsWindowsDefenderMonitored $true `
-Is3PartyAntivirusMonitored $False `
-IsWindowsUpdateMonitored $True `
-WindowsUpdateNotificationLevel 3 `
-MonitoringJobSchedule (New-ScheduledTaskTrigger -At 07:00:00 -Daily)

Add monitoring task for Windows Firewall, Windows Defender and Windows Update services only.    

```
PS C:\> .\Add-WFUMonitoringJob.ps1 `
```


***

## Parameters

>**-JobName** 

Task scheduler monitoring job name
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 1 |
| Default value: | Monitor Windows Security services |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-JobUserName** 

Local admin username.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | 2 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-JobUserPwd** 

Local admin password
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | 3 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-MessageFrom** 

Sender email address
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | 4 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-MessageTo** 

Recepient email address
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | 5 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-MessageSubject** 

Email subject
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 6 |
| Default value: | Security Alert |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-MessageSMTPServer** 

SMTP server address
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | 7 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-MessagePort** 

SMTP server port
        
|       |     |
|-------|-----|
| Type | Int32 |
| Required: | true | 
| Position: | 8 |
| Default value: | 0 |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-MessageUseSSL** 

Use SSL?
        
|       |     |
|-------|-----|
| Type | Boolean |
| Required: | true | 
| Position: | 9 |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-MessageUserName** 

SMTP server user
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | 10 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-MessageCredsPassword** 

SMTP server user password
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | 11 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-IsFirewallMonitored** 

Set $true to monitor Firewall settings or $false to skip
        
|       |     |
|-------|-----|
| Type | Boolean |
| Required: | false | 
| Position: | 12 |
| Default value: | True |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-IsWindowsDefenderMonitored** 

Set $true to monitor Windows Defender settings or $false to skip
        
|       |     |
|-------|-----|
| Type | Boolean |
| Required: | false | 
| Position: | 13 |
| Default value: | True |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Is3PartyAntivirusMonitored** 

Set $true to monitor 3 party antivirus settings or $false to skip
        
|       |     |
|-------|-----|
| Type | Boolean |
| Required: | false | 
| Position: | 14 |
| Default value: | True |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-IsWindowsUpdateMonitored** 

Set $true to monitor Windows Update service or $false to skip
        
|       |     |
|-------|-----|
| Type | Boolean |
| Required: | false | 
| Position: | 15 |
| Default value: | True |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-WindowsUpdateNotificationLevel** 

Sends email if notification level equal or less than the specified number. {0='Not configured'; 1='Never check for updates'; 2='Check for updates but let me choose whether to download and install them'; 3='Download updates but let me choose whether to install them'; 4='Install updates automatically'}
        
|       |     |
|-------|-----|
| Type | Int32 |
| Required: | false | 
| Position: | 16 |
| Default value: | 3 |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-MonitoringJobSchedule** 

Get more about task trigger [https://docs.microsoft.com/en-us/powershell/module/scheduledtasks/new-scheduledtasktrigger](https://docs.microsoft.com/en-us/powershell/module/scheduledtasks/new-scheduledtasktrigger)
        
|       |     |
|-------|-----|
| Type | Object |
| Required: | false | 
| Position: | 17 |
| Default value: | (New-ScheduledTaskTrigger -At 07:00:00 -Daily) |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |



>**CommonParameters**

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see [about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216). 


## Inputs



None



## Outputs



Microsoft.Management.Infrastructure.CimInstance#Root/Microsoft/Windows/TaskScheduler/MSFT_ScheduledTask


## Notes

Author: MSP360 Onboarding Team




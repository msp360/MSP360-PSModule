---
Title: Send-MBSLog
HeadTitle: Send-MBSLog
Meta: 'Send-MBSLog'
RedirectUrl: ''
---
# Send-MBSLog
***

Send logs to MSP360 Support Team

```

Send-MBSLog
		[-UserName] <String>
		[-EmailAddress] <String>
		[[-Message] <String>]
		[[-TicketNumber] <String>]
		[<CommonParameters>]





```

***

## Description

Collect logs from the backup agent and send them to MSP360 Support Team with an option of specifying a description message and existing ticket number

***

## Examples


### Example 1: Sends logs from the backup agent. MSP360 Support Team will see that the logs were sent from user "Customer" with email address "backup@infrastructure.com"    

```
PS C:\> Send-MBSLog -UserName "Customer" -EmailAddress "backup@infrastructure.com"
```
 
### Example 2: Sends logs from the backup agent. MSP360 Support Team will see that the logs were sent from user "Customer" with email address "backup@infrastructure.com". Also, the MSP360 Support Team will see the message "Logs as requested" and the logs will be attached to an open case with ticket number 00043067.    

```
PS C:\> Send-MBSLog -UserName "Customer" -EmailAddress "backup@infrastructure.com" -Message "Logs as requested" -TicketNumber "00043067"
```


***

## Parameters

>**-UserName** 

First/last name
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | 1 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-EmailAddress** 

Email address
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | 2 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Message** 

Description of the issue, which will help MSP360 Support Team to resolve the issue
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 3 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-TicketNumber** 

Ticket number, if exists
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 4 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |



>**CommonParameters**

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see [about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216). 


## Inputs



None



## Outputs



None


## Notes

Author: MSP360 Onboarding Team




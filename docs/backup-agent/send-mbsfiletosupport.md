---
Title: Send-MBSFileToSupport
HeadTitle: Send-MBSFileToSupport
Meta: 'Send-MBSFileToSupport'
RedirectUrl: ''
---
# Send-MBSFileToSupport
***

Sends specified file to support team

```

Send-MBSFileToSupport
		[-Path] <String>
		[-TicketNumber] <String>
		[<CommonParameters>]





```

***

## Description

This cmdlet  sends a file by a specified path to support team

***

## Examples


### Example 1: Sends a file test.txt from the local folder C:\TestFolder to support team.    

```
PS C:\> Send-MBSFileToSupport -Path "C:\TestFolder\test.txt" -TicketNumber 9999999
```


***

## Parameters

>**-Path** 

Path to file you want to send
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | 1 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-TicketNumber** 

Ticket number
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | 2 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |



>**CommonParameters**

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see [about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216). 


## Inputs



None



## Outputs



String


## Notes

Author: MSP360 Onboarding Team




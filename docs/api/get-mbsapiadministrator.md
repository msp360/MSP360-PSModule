---
Title: Get-MBSAPIAdministrator
HeadTitle: Get-MBSAPIAdministrator
Meta: 'Get-MBSAPIAdministrator'
RedirectUrl: ''
---
# Get-MBSAPIAdministrator
***

List MBS account administrators

```

Get-MBSAPIAdministrator
		[[-ID] <String>]
		[[-ProfileName] <String>]
		[<CommonParameters>]





```

***

## Description

Calls GET request to api/Administrators.

***

## Examples


### Example 1:     

```
PS C:\> Get-MBSAPIAdministrator -ProfileName profile
```
 
### Example 2: Get administrator details with specific ID.    

```
PS C:\> Get-MBSAPIAdministrator -ID 008410b2-e1f7-47f9-b35e-a7d13b74b516 -ProfileName profile
```


***

## Parameters

>**-ID** 


        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 1 |
| Default value: |  |
| Accept pipeline input: | true (ByValue, ByPropertyName) |
| Accept wildcard characters: | false |

 >**-ProfileName** 

Profile name used with MSP360 PowerShell for MBS API (set via Set-MBSApiCredential)
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 2 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |



>**CommonParameters**

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see [about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216). 


## Inputs



System.Management.Automation.PSCustomObject
String



## Outputs



System.Management.Automation.PSCustomObject


## Notes

Author: MSP360 Onboarding Team




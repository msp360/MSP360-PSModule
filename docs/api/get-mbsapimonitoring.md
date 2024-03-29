---
Title: Get-MBSAPIMonitoring
HeadTitle: Get-MBSAPIMonitoring
Meta: 'Get-MBSAPIMonitoring'
RedirectUrl: ''
---
# Get-MBSAPIMonitoring
***

Returns a list of monitoring structures that are available to users

```

Get-MBSAPIMonitoring
		[[-ID] <String>]
		[[-ProfileName] <String>]
		[<CommonParameters>]





```

***

## Description

Calls GET reqest to api/Monitoring

***

## Examples


### Example 1: Get monitored backup plans and format output as a table.    

```
PS C:\> Get-MBSAPIMonitoring -profile profile | FT
```
 
### Example 2: Get backup plans statuses for the specified user ID and format output as a table.    

```
PS C:\> Get-MBSAPIMonitoring -ID bf3206df-ad73-4cdc-96ad-d4e3afa66ebc -profile profile | FT
```


***

## Parameters

>**-ID** 

User ID
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 1 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
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




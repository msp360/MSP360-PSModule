---
Title: Get-MBSAPILicense
HeadTitle: Get-MBSAPILicense
Meta: 'Get-MBSAPILicense'
RedirectUrl: ''
---
# Get-MBSAPILicense
***

List MBS licenses

```

Get-MBSAPILicense
		[[-ID] <String>]
		[[-ProfileName] <String>]
		[<CommonParameters>]





```

***

## Description

Calls GET request to api/Licenses

***

## Examples


### Example 1: List all licenses.    

```
PS C:\> Get-MBSAPILicense -ProfileName profile
```
 
### Example 2: Get license details by specific license ID    

```
PS C:\> Get-MBSAPILicense -ID ec315596-ab48-4360-aee4-e725b5746a42 -ProfileName profile
```


***

## Parameters

>**-ID** 

License ID
        
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




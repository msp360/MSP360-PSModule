---
Title: Get-MBSAPICompany
HeadTitle: Get-MBSAPICompany
Meta: 'Get-MBSAPICompany'
RedirectUrl: ''
---
# Get-MBSAPICompany
***

Get companies list

```

Get-MBSAPICompany
		[[-ID] <String>]
		[[-ProfileName] <String>]
		[<CommonParameters>]





```

***

## Description

Calls GET request to api/Companies

***

## Examples


### Example 1: List all companies    

```
PS C:\> Get-MBSAPICompany -ProfileName profile
```
 
### Example 2: Id                                   Name         StorageLimit LicenseSettings
--                                   ----         ------------ ---------------
f3090b26-16c8-418f-a57d-00b744abb869 Test Company 107374182400               0

Get details for specific company.    

```
PS C:\> Get-MBSAPICompany -ID f3090b26-16c8-418f-a57d-00b744abb869 -ProfileName profile
```


***

## Parameters

>**-ID** 

Company ID
        
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




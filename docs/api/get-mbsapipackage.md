---
Title: Get-MBSAPIPackage
HeadTitle: Get-MBSAPIPackage
Meta: 'Get-MBSAPIPackage'
RedirectUrl: ''
---
# Get-MBSAPIPackage
***

Get a list of package/storage limits structures that are available to users

```

Get-MBSAPIPackage
		[[-ID] <String>]
		[[-ProfileName] <String>]
		[<CommonParameters>]





```

***

## Description

Calls GET request to api/Packages

***

## Examples


### Example 1: List all available packages/storage limits.    

```
PS C:\> Get-MBSAPIPackage -ProfileName profile
```
 
### Example 2: Get package/storage limit details by specific package ID    

```
PS C:\> Get-MBSAPIPackage -ID 52277 -ProfileName profile
```


***

## Parameters

>**-ID** 

Package ID
        
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




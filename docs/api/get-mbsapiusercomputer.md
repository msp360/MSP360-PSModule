---
Title: Get-MBSAPIUserComputer
HeadTitle: Get-MBSAPIUserComputer
Meta: 'Get-MBSAPIUserComputer'
RedirectUrl: ''
---
# Get-MBSAPIUserComputer
***

Lists backed up computers.

```

Get-MBSAPIUserComputer
		[-ID] <String>
		[[-ProfileName] <String>]
		[<CommonParameters>]





```

***

## Description

Calls GET request to api/Users/{userid}/Computers

***

## Examples


### Example 1:     

```
PS C:\> Get-MBSAPIUserComputer -ID 7c7044bb-313b-4b1b-900e-76d652246f4d -ProfileName profile
```


***

## Parameters

>**-ID** 

Backup User ID
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
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



## Outputs



System.Management.Automation.PSCustomObject


## Notes

Author: MSP360 Onboarding Team




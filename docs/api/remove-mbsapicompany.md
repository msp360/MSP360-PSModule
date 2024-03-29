---
Title: Remove-MBSAPICompany
HeadTitle: Remove-MBSAPICompany
Meta: 'Remove-MBSAPICompany'
RedirectUrl: ''
---
# Remove-MBSAPICompany
***

Remove MBS company by ID

```

Remove-MBSAPICompany
		[[-ID] <String>]
		[-Force]
		[[-ProfileName] <String>]
		[-WhatIf]
		[-Confirm]
		[<CommonParameters>]





```

***

## Description

Calls DELETE request to api/Companies

***

## Examples


### Example 1: Remove company by ID in force mode (no confirmation)    

```
PS C:\> Remove-MBSAPICompany -id ce786a8f-46a7-4442-b4ab-f2e2f1d9858a -Force -ProfileName MyProfile
```
 
### Example 2: Remove company with confirmation prompt.    

```
PS C:\> Remove-MBSAPICompany -id ce786a8f-46a7-4442-b4ab-f2e2f1d9858a -ProfileName MyProfile
```


***

## Parameters

>**-ID** 

Company Id
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 1 |
| Default value: |  |
| Accept pipeline input: | true (ByValue, ByPropertyName) |
| Accept wildcard characters: | false |

 >**-Force** 

Force delete. Confirmation is disabled.
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
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

 >**-WhatIf** 


        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Confirm** 


        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
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




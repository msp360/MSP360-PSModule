---
Title: Remove-MBSAPIUser
HeadTitle: Remove-MBSAPIUser
Meta: 'Remove-MBSAPIUser'
RedirectUrl: ''
---
# Remove-MBSAPIUser
***

Deletes specified user and all user-related information.

```

Remove-MBSAPIUser
		[[-ID] <String>]
		[-Force]
		[-DeleteData]
		[[-ProfileName] <String>]
		[<CommonParameters>]





```

***

## Description

Calls DELETE request to [https://api.mspbackups.com/api/Users](https://api.mspbackups.com/api/Users)

***

## Examples


### Example 1: Remove backup user by ID in force mode (no confirmation)    

```
PS C:\> Remove-MBSAPIUser -id 7c7044bb-313b-4b1b-900e-76d652246f4d -Force -ProfileName MyProfile
```
 
### Example 2: Remove backup user and all user-related backup data by ID    

```
PS C:\> Remove-MBSAPIUser -id 7c7044bb-313b-4b1b-900e-76d652246f4d -DeleteData -Force -ProfileName MyProfile
```


***

## Parameters

>**-ID** 

User ID. User Get-MBSAPIUser to list MBS backup users.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 1 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
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

 >**-DeleteData** 

Deletes specified user and all user-related backup data. Data will be deleted during the day.
        
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



>**CommonParameters**

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see [about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216). 


## Inputs



System.Management.Automation.PSCustomObject



## Outputs



String


## Notes

Author: MSP360 Onboarding Team




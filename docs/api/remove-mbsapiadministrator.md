---
Title: Remove-MBSAPIAdministrator
HeadTitle: Remove-MBSAPIAdministrator
Meta: 'Remove-MBSAPIAdministrator'
RedirectUrl: ''
---
# Remove-MBSAPIAdministrator
***

Removes an Administrator from MBS

```

Remove-MBSAPIAdministrator
		[-AdminID] <String>
		[-Force]
		[[-ProfileName] <String>]
		[<CommonParameters>]





```

***

## Description

Call the DELETE api/Administrators/{id} API to delete an administrator

***

## Examples


### Example 1:     

```
PS C:\> Remove-MBSAPIAdministrator -AdminID 0b7e0a79-78e9-493e-af72-764f21960b05 -Force  -ProfileName ao
```


***

## Parameters

>**-AdminID** 

ID of the admin to be deleted. Use Get-MBSAPIAdmin to determine
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | 1 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-Force** 

Bypass confirmation prompt
        
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




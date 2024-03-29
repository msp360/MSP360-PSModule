---
Title: Remove-MBSAPIPackage
HeadTitle: Remove-MBSAPIPackage
Meta: 'Remove-MBSAPIPackage'
RedirectUrl: ''
---
# Remove-MBSAPIPackage
***

Removes a Storage limit (package) from your account.

```

Remove-MBSAPIPackage
		[-PackageID] <String>
		[-Force]
		[[-ProfileName] <String>]
		[<CommonParameters>]





```

***

## Description

Calls the DELETE api/Packages/{id} API to remove a package from your account.

***

## Examples


### Example 1:     

```
PS C:\> Remove-MBSAPIPackage -ProfileName ao -PackageID 64028 -Force
```


***

## Parameters

>**-PackageID** 

ID of the package you wish to remove. Use Get-MBSAPIPackages to determine
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | 1 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-Force** 

Bypass confirmation prompt for removal operation
        
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




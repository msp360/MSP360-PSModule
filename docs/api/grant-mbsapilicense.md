---
Title: Grant-MBSAPILicense
HeadTitle: Grant-MBSAPILicense
Meta: 'Grant-MBSAPILicense'
RedirectUrl: ''
---
# Grant-MBSAPILicense
***

Grants a license to a specified user

```

Grant-MBSAPILicense
		[-LicenseID] <String>
		[-UserID] <String>
		[[-ProfileName] <String>]
		[<CommonParameters>]





```

***

## Description

Calls the POST api/Licenses/Grant API to grant a specified user a license from the appropriate license pool (determined by MBS user settings)

***

## Examples


### Example 1:     

```
PS C:\> Grant-MBSAPILicense -ProfileName ao -LicenseID 8fc593d1-bb74-4a52-a644-0a574967df83 -UserID e472840f-e01f-40e0-95fc-b28882a28cfe
```


***

## Parameters

>**-LicenseID** 

ID of the license to grant. Use Get-MBSAPILicenses to determine.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | 1 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-UserID** 

ID of the user to which the license needs to be granted. Use Get-MBSAPIUser to determine.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | 2 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-ProfileName** 

Profile name used with MSP360 PowerShell for MBS API (set via Set-MBSApiCredential)
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 3 |
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




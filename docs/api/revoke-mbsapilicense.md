---
Title: Revoke-MBSAPILicense
HeadTitle: Revoke-MBSAPILicense
Meta: 'Revoke-MBSAPILicense'
RedirectUrl: ''
---
# Revoke-MBSAPILicense
***

Removes the association of a license to a specified computer or user.

```

Revoke-MBSAPILicense
		[-LicenseID] <String>
		[-UserID] <String>
		[-Target] <String>
		[[-ProfileName] <String>]
		[<CommonParameters>]





```

***

## Description

Calls the POST api/Licenses/Revoke API to detach a license form the computer it is currently applied to. The license is moved back to the license pool it was taken from. In case Global Pool is used, user association is also removed. If a user has a custom pool specified, the license retains the attachment to that user's pool. Learn more about pools and license management here: [https://help.mspbackups.com/administration/licenses/manage-licenses](https://help.mspbackups.com/administration/licenses/manage-licenses) 
Calls the POST api/Licenses/Release API to remove the association of a license to a user. This action also removes the license from the computer it is assigned to.

***

## Examples


### Example 1:     

```
PS C:\> Revoke-MBSAPILicense -ProfileName ao -LicenseID 8fc593d1-bb74-4a52-a644-0a574967df83 -UserID e472840f-e01f-40e0-95fc-b28882a28cfe
```


***

## Parameters

>**-LicenseID** 

The ID of the license to revoke. Use Get-MBSAPILicenses to determine this parameter.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | 1 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-UserID** 

The ID of the user that the license is attached to.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | 2 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-Target** 

Defines the subject of the revoke action. If User in the Target parameter is specified, license releases from the user. If Computer in the Target parameter is specified, license revokes from the computer. Valid parameter inputs are User or Computer.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | 3 |
| Accepted values: |  User, Computer  |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-ProfileName** 

Profile name used with MSP360 PowerShell for MBS API (set via Set-MBSApiCredential)
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 4 |
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




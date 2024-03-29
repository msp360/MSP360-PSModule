---
Title: Edit-MBSAPIUser
HeadTitle: Edit-MBSAPIUser
Meta: 'Edit-MBSAPIUser'
RedirectUrl: ''
---
# Edit-MBSAPIUser
***

Updates user properties to new values.

```

Edit-MBSAPIUser
		[-ID] <String>
		[[-Email] <String>]
		[[-FirstName] <String>]
		[[-LastName] <String>]
		[[-NotificationEmail] <String[]>]
		[[-Company] <String>]
		[-Enabled] <Boolean>
		[[-Password] <SecureString>]
		[[-LicenseManagementMode] <String>]
		[[-ProfileName] <String>]
		[<CommonParameters>]





```

***

## Description

Calls POST request to [https://api.mspbackups.com/api/Users](https://api.mspbackups.com/api/Users).

***

## Examples


### Example 1: Update user properties, with specific ID, to new values.    

```
PS C:\> Edit-MBSAPIUser -id 7c7044bb-313b-4b1b-900e-76d652246f4d -FirstName "NewFirstName" -LastName "NewLastName" -NotificationEmail NewEmail@contoso.com -Enabled $true -Password (ConvertTo-SecureString -Force -asplaintext 'NewPassword') -LicenseManagementMode 1 -ProfileName MyProfile
```


***

## Parameters

>**-ID** 

MBS Backup user ID.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | 1 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-Email** 

MBS Backup user login name.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 2 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-FirstName** 

Backup user first name.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 3 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-LastName** 

Backup user last name.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 4 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-NotificationEmail** 

Backup user notification emails.
        
|       |     |
|-------|-----|
| Type | String[] |
| Required: | false | 
| Position: | 5 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Company** 

Company name.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 6 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Enabled** 

Backup user status. Specify $false or $true.
        
|       |     |
|-------|-----|
| Type | Boolean |
| Required: | true | 
| Position: | 7 |
| Default value: | True |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Password** 

Backup user password.
        
|       |     |
|-------|-----|
| Type | SecureString |
| Required: | false | 
| Position: | 8 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-LicenseManagementMode** 

Licensing mode. Get more [https://mspbackups.com/Admin/Help/mbs-api-specification/methods/post-apiusers/usermodetype](https://mspbackups.com/Admin/Help/mbs-api-specification/methods/post-apiusers/usermodetype)
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 9 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ProfileName** 

Profile name used with MSP360 PowerShell for MBS API (set via Set-MBSApiCredential)
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 10 |
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




---
Title: Edit-MBSAPIAdministrator
HeadTitle: Edit-MBSAPIAdministrator
Meta: 'Edit-MBSAPIAdministrator'
RedirectUrl: ''
---
# Edit-MBSAPIAdministrator
***

Changes properties of an existing MBS admin

```

Edit-MBSAPIAdministrator
		[-AdminID] <String>
		[[-FirstName] <String>]
		[[-LastName] <String>]
		[[-Companies] <String[]>]
		[[-Enabled] <Boolean>]
		[[-Password] <SecureString>]
		[[-ProfileName] <String>]
		[-PermissionsModels] <AdministratorPermission>
		[[-AccessToCompaniesMode] {SpecifiedCompanies | AllCompanies}]
		[[-AccountType] {Undefined | InternalAccount | ExternalAccount}]
		[<CommonParameters>]





```

***

## Description

Calls the PUT api/Administrators API to edit properties of an existing MBS administrator

***

## Examples


### Example 1:     

```
PS C:\> Edit-MBSAPIAdministrator -ProfileName ao -AdminID 0b7e0a79-78e9-493e-af72-764f21960b05 -password (ConvertTo-SecureString -force -asplaintext 'Changed') -FirstName admin -LastName adminson -Enabled $true -PermissionsModels (New-MBSAPIAdministratorPermission -EnableUndefinedPermissions) -AccessToCompaniesMode SpecifiedCompanies -Companies 'DemoCompany'
```
 
### Example 2: Note: If the administrator initially has access to all companies and you want to assign specific companies to him, parameter '-AccessToCompaniesMode SpecifiedCompanies' is needed to be explicitly specified.    

```
PS C:\> Get-MBSAPIAdministrator -ProfileName ao -AdminID 0b7e0a79-78e9-493e-af72-764f21960b05 | Edit-MBSAPIAdministrator -AccessToCompaniesMode SpecifiedCompanies -Companies 'DemoCompany','NewCompany' -ProfileName ao
```


***

## Parameters

>**-AdminID** 

ID of the admin that you are editing. Use Get-MBSAPIAdministrator to determine
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | 1 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-FirstName** 

First Name
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 2 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-LastName** 

Last name
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 3 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-Companies** 

List of companies the admin should have access to
        
|       |     |
|-------|-----|
| Type | String[] |
| Required: | false | 
| Position: | 4 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-Enabled** 

Whether the admin is to be enabled.
        
|       |     |
|-------|-----|
| Type | Boolean |
| Required: | false | 
| Position: | 5 |
| Default value: | True |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-Password** 

The administrator's password.
        
|       |     |
|-------|-----|
| Type | SecureString |
| Required: | false | 
| Position: | 6 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-ProfileName** 

Profile name used with MSP360 PowerShell for MBS API (set via Set-MBSApiCredential)
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 7 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-PermissionsModels** 

Permissions for the administrator. Use New-MBSAPIAdministratorPermission to create an object. Valid permissions can be found here: [https://api.mspbackups.com/Help/ResourceModel?modelName=PermissionsModels](https://api.mspbackups.com/Help/ResourceModel?modelName=PermissionsModels)
        
|       |     |
|-------|-----|
| Type | AdministratorPermission |
| Required: | true | 
| Position: | 8 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-AccessToCompaniesMode** 

Assign the administrator to specified companies (in Companies parameter) or to all companies. Accepted values: SpecifiedCompanies, AllCompanies ([https://mspbackups.com/mbsapi/Help/ResourceModel?modelName=AccessToCompaniesEnum)](https://mspbackups.com/mbsapi/Help/ResourceModel?modelName=AccessToCompaniesEnum))
        
|       |     |
|-------|-----|
| Type | AccessToCompaniesMode |
| Required: | false | 
| Position: | 9 |
| Default value: | SpecifiedCompanies |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-AccountType** 

If set to 'Internal' then access to an employee inside company is provided. If set to 'External' then access to any third party, such as a customer, is provided. This field can be empty for backward compatibility.
        
|       |     |
|-------|-----|
| Type | AdministratorAccountType |
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



System.Management.Automation.PSCustomObject


## Notes

Author: MSP360 Onboarding Team




---
Title: New-MBSAPIAdministrator
HeadTitle: New-MBSAPIAdministrator
Meta: 'New-MBSAPIAdministrator'
RedirectUrl: ''
---
# New-MBSAPIAdministrator
***

Creates an Administrator for MBS

```

New-MBSAPIAdministrator
		[-Email] <String>
		[[-FirstName] <String>]
		[[-LastName] <String>]
		[[-Companies] <String[]>]
		[[-Enabled] <Boolean>]
		[-Password] <SecureString>
		[[-SendEmailInstruction] <Boolean>]
		[[-ProfileName] <String>]
		[-PermissionsModels] <AdministratorPermission>
		[[-AccessToCompaniesMode] {SpecifiedCompanies | AllCompanies}]
		[[-AccountType] {Undefined | InternalAccount | ExternalAccount}]
		[<CommonParameters>]





```

***

## Description

Calls the POST api/Administrators API to create a new administrator according to the specified parameters.

***

## Examples


### Example 1:     

```
PS C:\> New-MBSAPIAdministrator -Email 'QQQ@test.com' -Password (ConvertTo-SecureString -Force -asplaintext 'test') -SendEmailInstruction $false -FirstName admin -LastName adminson -Enabled $true -PermissionsModels (New-MBSAPIAdministratorPermission -EnableUndefinedPermissions) -AccessToCompaniesMode AllCompanies -ProfileName profile
```


***

## Parameters

>**-Email** 

Email address of the administrator
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | 1 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-FirstName** 

First name of the administrator
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 2 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-LastName** 

Last name of the administrator
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 3 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-Companies** 

List of companies the adminstrator will have access to.
        
|       |     |
|-------|-----|
| Type | String[] |
| Required: | false | 
| Position: | 4 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-Enabled** 

Whether the administrator should be enabled after creation
        
|       |     |
|-------|-----|
| Type | Boolean |
| Required: | false | 
| Position: | 5 |
| Default value: | True |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-Password** 

Password
        
|       |     |
|-------|-----|
| Type | SecureString |
| Required: | true | 
| Position: | 6 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-SendEmailInstruction** 

Whether or not to send instructions to the new administrator
        
|       |     |
|-------|-----|
| Type | Boolean |
| Required: | false | 
| Position: | 7 |
| Default value: | False |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-ProfileName** 

Profile name used with MSP360 PowerShell for MBS API (set via Set-MBSApiCredential)
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 8 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-PermissionsModels** 

Permissions for the administrator. Use New-MBSAPIAdministratorPermission to create an object. Valid permissions can be found here: [https://api.mspbackups.com/Help/ResourceModel?modelName=PermissionsModels](https://api.mspbackups.com/Help/ResourceModel?modelName=PermissionsModels)
        
|       |     |
|-------|-----|
| Type | AdministratorPermission |
| Required: | true | 
| Position: | 9 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-AccessToCompaniesMode** 

Assign the administrator to specified companies (in Companies parameter) or to all companies. Accepted values: SpecifiedCompanies, AllCompanies ([https://mspbackups.com/mbsapi/Help/ResourceModel?modelName=AccessToCompaniesEnum)](https://mspbackups.com/mbsapi/Help/ResourceModel?modelName=AccessToCompaniesEnum))
        
|       |     |
|-------|-----|
| Type | AccessToCompaniesMode |
| Required: | false | 
| Position: | 10 |
| Default value: | SpecifiedCompanies |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-AccountType** 

If set to 'Internal' then access to an employee inside company is provided. If set to 'External' then access to any third party, such as a customer, is provided. This field can be empty for backward compatibility.
        
|       |     |
|-------|-----|
| Type | AdministratorAccountType |
| Required: | false | 
| Position: | 11 |
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




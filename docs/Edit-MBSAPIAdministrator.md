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
		[-PermissionsModels] <String>
		[<CommonParameters>]





```

***

## Description

Calls the PUT api/Administrators API to edit properties of an existing MBS administrator

***

## Examples


### Example 1:     

```
PS C:\> Edit-MBSAPIAdministrator -ProfileName ao -AdminID 0b7e0a79-78e9-493e-af72-764f21960b05 -password (ConvertTo-SecureString -force -asplaintext 'Changed') -FirstName admin -LastName adminson -Enabled $true -PermissionsModels $perm
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

JSON permissions for the administrator.  Valid fields can be found here: https://api.mspbackups.com/Help/ResourceModel?modelName=PermissionsModels Example can be found here: https://api.mspbackups.com/Help/Api/POST-api-Administrators
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | 8 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |



>**CommonParameters**

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see        [about_CommonParameters] (https://go.microsoft.com/fwlink/?LinkID=113216). 


## Inputs



System.Management.Automation.PSCustomObject



## Outputs



System.Management.Automation.PSCustomObject


## Notes

Author: Andrey Oshukov




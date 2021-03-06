# New-MBSAPICompany
***

Create MBS company.

```

New-MBSAPICompany
		[-Name] <String>
		[[-StorageLimit] <String>]
		[[-LicenseSettings] <String>]
		[[-ProfileName] <String>]
		[<CommonParameters>]





```

***

## Description

Calls POST request to api/Companies.

***

## Examples


### Example 1: Create company named Contoso with unlimited storage and Global licensing pool.    

```
PS C:\> New-MBSAPICompany -Name Contoso -StorageLimit -1 -LicenseSettings 1 -ProfileName profile
```


***

## Parameters

>**-Name** 

Company name
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | 1 |
| Default value: |  |
| Accept pipeline input: | true (ByValue, ByPropertyName) |
| Accept wildcard characters: | false |

 >**-StorageLimit** 

Company backup limit. A negative value indicates the resource is unconstrained by a quota.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 2 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-LicenseSettings** 

Company license settings: 0 - Custom (Users have custom license settings) 1 - Global Pool(Users activate paid licenses from the global pool automatically) 2 - Company Pool(Users can activate only limited number of paid licenses from the company pool)
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 3 |
| Default value: |  |
| Accept pipeline input: | false |
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

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see        [about_CommonParameters] (https://go.microsoft.com/fwlink/?LinkID=113216). 


## Inputs



System.Management.Automation.PSCustomObject
String



## Outputs



String


## Notes

Author: Alex Volkov




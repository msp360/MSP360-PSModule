---
Title: New-MBSAPICompany
HeadTitle: New-MBSAPICompany
Meta: 'New-MBSAPICompany'
RedirectUrl: ''
---
# New-MBSAPICompany
***

Create MBS company.

```

New-MBSAPICompany
		[-Name] <String>
		[[-StorageLimit] <String>]
		[[-LicenseSettings] <String>]
		[[-DestinationID] <String[]>]
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
 
### Example 2: Create company named ComputerCompany with 1 Tb storage limit, Custom licensing pool and backup destinations that have display names containing "AWS" and "Local"    

```
PS C:\> New-MBSAPICompany -Name ComputerCompany -StorageLimit 1073741824000 -LicenseSettings 0 -DestinationID ((Get-MBSAPIStorageAccount -ProfileName profile).Destinations | Where-Object {($_.DestinationDisplayName -like "*AWS*") -Or ($_.DestinationDisplayName -like "*Local*")}).DestinationID -ProfileName profile
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

 >**-DestinationID** 

Backup storage destination ID. Multiple IDs can be specified.
        
|       |     |
|-------|-----|
| Type | String[] |
| Required: | false | 
| Position: | 4 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ProfileName** 

Profile name used with MSP360 PowerShell for MBS API (set via Set-MBSApiCredential)
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 5 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |



>**CommonParameters**

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see [about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216). 


## Inputs



System.Management.Automation.PSCustomObject
String



## Outputs



String


## Notes

Author: MSP360 Onboarding Team




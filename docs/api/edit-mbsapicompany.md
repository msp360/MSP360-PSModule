---
Title: Edit-MBSAPICompany
HeadTitle: Edit-MBSAPICompany
Meta: 'Edit-MBSAPICompany'
RedirectUrl: ''
---
# Edit-MBSAPICompany
***

Change MBS company properties.

```

Edit-MBSAPICompany
		[[-ID] <String>]
		[[-Name] <String>]
		[[-StorageLimit] <String>]
		[[-LicenseSettings] <String>]
		[[-DestinationID] <String[]>]
		[[-ProfileName] <String>]
		[<CommonParameters>]





```

***

## Description

Calls PUT request to api/Companies

***

## Examples


### Example 1: Change the name, storage limit, and license setting for company with ID 27fbcbb0-cb0b-40e5-8c4a-bd7faf18ffce    

```
PS C:\> Edit-MBSAPICompany -ID 27fbcbb0-cb0b-40e5-8c4a-bd7faf18ffce -Name "My Contoso" -StorageLimit 100000 -LicenseSettings 2 -ProfileName profile
```
 
### Example 2: Change (overwrite) the destinations of a company with ID 27fbcbb0-cb0b-40e5-8c4a-bd7faf18ffce    

```
PS C:\> Edit-MBSAPICompany -ID 27fbcbb0-cb0b-40e5-8c4a-bd7faf18ffce -DestinationID ((Get-MBSAPIStorageAccount -ProfileName profile).Destinations | Where-Object {$_.DestinationDisplayName -like "*Local*"}).DestinationID -ProfileName profile
```


***

## Parameters

>**-ID** 

Company Id. Use Get-MBSAPICompany to list companies ID.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 1 |
| Default value: |  |
| Accept pipeline input: | true (ByValue, ByPropertyName) |
| Accept wildcard characters: | false |

 >**-Name** 

Company name
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 2 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-StorageLimit** 

Company backup limit. A negative value indicates the resource is unconstrained by a quota.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 3 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-LicenseSettings** 

Company license settings: 0 - Custom (Users have custom license settings) 1 - Global Pool(Users activate paid licenses from the global pool automatically) 2 - Company Pool(Users can activate only limited number of paid licenses from the company pool)
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 4 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-DestinationID** 

Backup storage destination ID. Multiple IDs can be specified.
        
|       |     |
|-------|-----|
| Type | String[] |
| Required: | false | 
| Position: | 5 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ProfileName** 

Profile name used with MSP360 PowerShell for MBS API (set via Set-MBSApiCredential)
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 6 |
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




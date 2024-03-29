---
Title: New-MBSAPIPackage
HeadTitle: New-MBSAPIPackage
Meta: 'New-MBSAPIPackage'
RedirectUrl: ''
---
# New-MBSAPIPackage
***

Add a storage limit (package)

```

New-MBSAPIPackage
		[-Name] <String>
		[[-Description] <String>]
		[-StorageLimit] <Single>
		[[-RestoreLimit] <Nullable`1>]
		[-Cost] <Single>
		[[-GlacierRestoreType] <String>]
		[[-UseRestoreLimit] <Nullable`1>]
		[[-ProfileName] <String>]
		[<CommonParameters>]





```

***

## Description

Calls the POST api/Packages API to create a new storage limit according to specified parameters

***

## Examples


### Example 1:     

```
PS C:\> New-MBSAPIPackage -ProfileName ao -cost 0 -Description 'test'  -name 'Test' -StorageLimit 420420 -isGlacierRestoreLimit $false
```


***

## Parameters

>**-Name** 

Name for this package.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | 1 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-Description** 

Description for this package.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 2 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-StorageLimit** 

Storage Limit in GB.
        
|       |     |
|-------|-----|
| Type | Single |
| Required: | true | 
| Position: | 3 |
| Default value: | 0 |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-RestoreLimit** 

Restore limit for this package -- how much data can the customer restore. Value in GB
        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | 4 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-Cost** 

Cost in $
        
|       |     |
|-------|-----|
| Type | Single |
| Required: | true | 
| Position: | 5 |
| Default value: | 0 |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-GlacierRestoreType** 

Standard=0, Bulk=1, Expedited=2, Don't restore from Glacier=3
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 6 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-UseRestoreLimit** 

Enforece the RestoreLimit value
        
|       |     |
|-------|-----|
| Type | Nullable`1 |
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



>**CommonParameters**

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see [about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216). 


## Inputs



System.Management.Automation.PSCustomObject



## Outputs



String


## Notes

Author: MSP360 Onboarding Team




---
Title: Edit-MBSAPIPackage
HeadTitle: Edit-MBSAPIPackage
Meta: 'Edit-MBSAPIPackage'
RedirectUrl: ''
---
# Edit-MBSAPIPackage
***

Edit an existing Storage Limit (package)

```

Edit-MBSAPIPackage
		[-ID] <String>
		[-Name] <String>
		[[-Description] <String>]
		[[-StorageLimit] <Nullable`1>]
		[[-isGlacierRestoreLimit] <Boolean>]
		[[-RestoreLimit] <Nullable`1>]
		[[-Cost] <Nullable`1>]
		[[-GlacierRestoreType] <String>]
		[[-UseRestoreLimit] <Nullable`1>]
		[[-Enabled] <Boolean>]
		[[-ProfileName] <String>]
		[<CommonParameters>]





```

***

## Description

Calls the PUT api/Packages API to edit an existing storage limit (package).

***

## Examples


### Example 1:     

```
PS C:\> Edit-MBSAPIPackage -ProfileName ao -id 64028 -cost 0 -Description 'test' -Enabled $false -name 'Test' -StorageLimit 420420 -isGlacierRestoreLimit $false
```


***

## Parameters

>**-ID** 

ID of the package to edit.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | 1 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-Name** 

Name for this package.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | 2 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-Description** 

Description for this package.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 3 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-StorageLimit** 

Storage Limit in GB.
        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | 4 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-isGlacierRestoreLimit** 

Deprecated parameter
        
|       |     |
|-------|-----|
| Type | Boolean |
| Required: | false | 
| Position: | 5 |
| Default value: | False |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-RestoreLimit** 

Restore limit for this package -- how much data can the customer restore. Value in GB
        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | 6 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-Cost** 

Cost in $
        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | 7 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-GlacierRestoreType** 

Standard=0, Bulk=1, Expedited=2, Don't restore from Glacier=3
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 8 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-UseRestoreLimit** 

Enforece the RestoreLimit value
        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | 9 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-Enabled** 

Whether this storage limit is currently enabled.
        
|       |     |
|-------|-----|
| Type | Boolean |
| Required: | false | 
| Position: | 10 |
| Default value: | True |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-ProfileName** 

Profile name used with MSP360 PowerShell for MBS API (set via Set-MBSApiCredential)
        
|       |     |
|-------|-----|
| Type | String |
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



System.Management.Automation.PSCustomObject


## Notes

Author: MSP360 Onboarding Team




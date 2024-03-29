---
Title: Edit-MBSAPIStorageAccountDestination
HeadTitle: Edit-MBSAPIStorageAccountDestination
Meta: 'Edit-MBSAPIStorageAccountDestination'
RedirectUrl: ''
---
# Edit-MBSAPIStorageAccountDestination
***

Edit a destination for a specified storage account.

```

Edit-MBSAPIStorageAccountDestination
		[-DestinationID] <String>
		[-AccountID] <String>
		[-Destination] <String>
		[-DestinationDisplayName] <String>
		[[-ProfileName] <String>]
		[<CommonParameters>]





```

***

## Description

Performs the PUT api/Accounts/EditDestination API call to edit an existing destination that belongs to one of your storage accounts.

***

## Examples


### Example 1:     

```
PS C:\> Edit-MBSApiStorageAccountDestination -ProfileName ao -destinationid e770933d-848f-4fdf-b24f-01aebd4e1405 -AccountID 27bb3fcb-dc04-4a29-ac57-4d679809a2ba -Destination 'test-mbsapi' -DestinationDisplayName 'new name'
```


***

## Parameters

>**-DestinationID** 

The ID of the destination you want to edit. You may obtain this ID via Get-MBSAPIStorageAccountDestination
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | 1 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-AccountID** 

The ID of the storage account this destination belongs to. You may obtain this via Get-MBSAPIStorageAccount
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | 2 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-Destination** 

Actual destination identifier on the storage(bucket name, etc.)
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | 3 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-DestinationDisplayName** 

The display name of the destination in the MBS portal (and in the online backup GUI)
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | 4 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
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



## Outputs



System.Management.Automation.PSCustomObject


## Notes

Author: MSP360 Onboarding Team




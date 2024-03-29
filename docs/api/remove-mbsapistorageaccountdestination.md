---
Title: Remove-MBSAPIStorageAccountDestination
HeadTitle: Remove-MBSAPIStorageAccountDestination
Meta: 'Remove-MBSAPIStorageAccountDestination'
RedirectUrl: ''
---
# Remove-MBSAPIStorageAccountDestination
***

This cmdlet removed a backup destination from one of your storage accounts.

```

Remove-MBSAPIStorageAccountDestination
		[-DestinationID] <String>
		[-AccountID] <String>
		[-Destination] <String>
		[[-DestinationDisplayName] <String>]
		[-Force]
		[[-ProfileName] <String>]
		[<CommonParameters>]





```

***

## Description

This function invokes the PUT api/Accounts/RemoveDestination API call to remove a backup destination from a storage account.

***

## Examples


### Example 1:     

```
PS C:\> Remove-MBSAPIStorageAccountDestination -DestinationID "e770933d-848f-4fdf-b24f-01aebd4e1405" -accountid "27bb3fcb-dc04-4a29-ac57-4d679809a2ba" -Destination "test-mbsapi" -ProfileName ao -Force
```


***

## Parameters

>**-DestinationID** 

The ID of the destination you want to delete. You may obtain this ID via Get-MBSAPIStorageAccountDestination
        
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
| Required: | false | 
| Position: | 4 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-Force** 

Bypass confirmation prompt
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ProfileName** 

Profile name to use for API connection
        
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



String


## Notes

Author: MSP360 Onboarding Team




---
Title: New-MBSAPIStorageAccountDestination
HeadTitle: New-MBSAPIStorageAccountDestination
Meta: 'New-MBSAPIStorageAccountDestination'
RedirectUrl: ''
---
# New-MBSAPIStorageAccountDestination
***

Adds an existing location on your storage account as a destination available in MBS

```

New-MBSAPIStorageAccountDestination
		[-AccountID] <String>
		[-Destination] <String>
		[-DestinationDisplayName] <String>
		[[-ProfileName] <String>]
		[<CommonParameters>]





```

***

## Description

Calls the POST api/Accounts/AddDestination API to add a location (bucket etc.) that already exists on your storage as a destination in MBS. This will allow you to then target backups to this destination

***

## Examples


### Example 1:     

```
PS C:\> New-MBSApiStorageAccountDestination -AccountID 27bb3fcb-dc04-4a29-ac57-4d679809a2ba -Destination 'test-mbsapi' -DestinationDisplayName 'Test' -ProfileName ao
```


***

## Parameters

>**-AccountID** 

AccountID for the storage account where the location you are adding is. Use Get-MBSAPIStorageAccount to find out the AccountID.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | 1 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-Destination** 

Actual destination identifier on the storage(bucket name, etc.)
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | 2 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-DestinationDisplayName** 

A display name for your storage in MBS
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | 3 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
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

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see [about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216). 


## Inputs



System.Management.Automation.PSCustomObject



## Outputs



String


## Notes

Author: MSP360 Onboarding Team




---
Title: Add-MBSAPIUserBackupDestination
HeadTitle: Add-MBSAPIUserBackupDestination
Meta: 'Add-MBSAPIUserBackupDestination'
RedirectUrl: ''
---
# Add-MBSAPIUserBackupDestination
***

Add a backup destination to a user

```

Add-MBSAPIUserBackupDestination
		[-UserID] <String>
		[-AccountID] <String>
		[-Destination] <String>
		[-PackageID] <String>
		[[-ProfileName] <String>]
		[<CommonParameters>]





```

***

## Description

Calls the POST api/Destinations API to add a backup destination to a user

***

## Examples


### Example 1:     

```
PS C:\> Add-MBSAPIUserBackupDestination -ProfileName ao -accountid 27bb3fcb-dc04-4a29-ac57-4d679809a2ba -Destination 'test-mbsapi' -UserID  e472840f-e01f-40e0-95fc-b28882a28cfe -PackageID 64028
```


***

## Parameters

>**-UserID** 

ID of the user to which a backup destination is being added. Use Get-MBSAPIUser to determine
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | 1 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-AccountID** 

The ID of the storage account  that is to be added. Use Get-MBSAPIStorageAccount to determine.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | 2 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-Destination** 

ID of the destination to be added. Use Get-MBSAPIStorageAccountDestination to determine.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | 3 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-PackageID** 

ID of the storage limit (package) that is to be applied.
        
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




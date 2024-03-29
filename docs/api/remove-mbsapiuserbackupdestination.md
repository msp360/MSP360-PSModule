---
Title: Remove-MBSAPIUserBackupDestination
HeadTitle: Remove-MBSAPIUserBackupDestination
Meta: 'Remove-MBSAPIUserBackupDestination'
RedirectUrl: ''
---
# Remove-MBSAPIUserBackupDestination
***

Unassign a backup destination from a user.

```

Remove-MBSAPIUserBackupDestination
		[-DestinationID] <String>
		[-UserID] <String>
		[-Force]
		[[-ProfileName] <String>]
		[<CommonParameters>]





```

***

## Description

Calls the api/Destinations/{id}?userId={userId} DELETE API to remove a backup user destination

***

## Examples


### Example 1: Unassign a backup destination from a user.    

```
PS C:\> Remove-MBSAPIUserBackupDestination -ProfileName ao -userID e472840f-e01f-40e0-95fc-b28882a28cfe -DestinationID 33a0dfd1-c072-4d92-8b89-f055d3e114c7
```


***

## Parameters

>**-DestinationID** 


        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | 1 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-UserID** 

ID of the user whose backup destination will be deleted. Use Get-MBSAPIUser to determine
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | 2 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Force** 

Bypass confirmation prompt for removal operation
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ProfileName** 

Profile name used with MSP360 PowerShell for MBS API (set via Set-MBSApiCredential)
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 3 |
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




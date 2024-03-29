---
Title: Remove-MBSAPIComputerData
HeadTitle: Remove-MBSAPIComputerData
Meta: 'Remove-MBSAPIComputerData'
RedirectUrl: ''
---
# Remove-MBSAPIComputerData
***

Deletes specified user computer data from cloud. Data will be deleted during the day.

```

Remove-MBSAPIComputerData
		[-UserID] <String>
		[-DestinationId] <String>
		[-ComputerName] <String>
		[-Force]
		[[-ProfileName] <String>]
		[<CommonParameters>]





```

***

## Description

Calls DELETE request to api/Users/{userId}/Computers.

***

## Examples


### Example 1: Delete backed up to cloud data for specified user ID, Destination and ComputerName    

```
PS C:\> Remove-MBSAPIComputerData -UserID 7c7044bb-313b-4b1b-900e-76d652246f4d -DestinationId 1f342fb4-0775-4ae8-9c63-a2d5955752b6 -ComputerName MyComputer -Force -ProfileName MyProfile
```


***

## Parameters

>**-UserID** 

Backup user ID.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | 1 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-DestinationId** 

Cloud destination ID. Use Get-MBSApiStorageAccountDestination to list backup storage destinations.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | 2 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-ComputerName** 

Computer name
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | 3 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-Force** 

Force delete. Confirmation is disabled.
        
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




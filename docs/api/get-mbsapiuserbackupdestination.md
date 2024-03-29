---
Title: Get-MBSAPIUserBackupDestination
HeadTitle: Get-MBSAPIUserBackupDestination
Meta: 'Get-MBSAPIUserBackupDestination'
RedirectUrl: ''
---
# Get-MBSAPIUserBackupDestination
***

Gets a list of backup destinations

```

Get-MBSAPIUserBackupDestination
		[[-userEmail] <String>]
		[[-ProfileName] <String>]
		[<CommonParameters>]





```

***

## Description

Calls the GET api/Destinations/{userEmail} API to get a list of user backup destinations.

***

## Examples


### Example 1:     

```
PS C:\> Get-MBSAPIUserBackupDestination -ProfileName ao -userEmail test@test.com
```


***

## Parameters

>**-userEmail** 

Email of the user for which to query backup destinations. If none is specified, returns backup destinations for all users.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 1 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-ProfileName** 

Profile name used with MSP360 PowerShell for MBS API (set via Set-MBSApiCredential)
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 2 |
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




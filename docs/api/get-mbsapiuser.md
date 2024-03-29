---
Title: Get-MBSAPIUser
HeadTitle: Get-MBSAPIUser
Meta: 'Get-MBSAPIUser'
RedirectUrl: ''
---
# Get-MBSAPIUser
***

Get backup user list.

```

Get-MBSAPIUser
		[[-ID] <String>]
		[[-ProfileName] <String>]
		[<CommonParameters>]





```

***

## Description

Calls the GET request to [https://api.mspbackups.com/api/Users](https://api.mspbackups.com/api/Users).

***

## Examples


### Example 1: Get all MBS users and format output as table    

```
PS C:\> Get-MBSAPIUser | ft
```
 
### Example 2: Get MBS users with ID 6970973d-e245-4bbf-a766-dc65a96549c9    

```
PS C:\> Get-MBSAPIUser -ID 6970973d-e245-4bbf-a766-dc65a96549c9
```


***

## Parameters

>**-ID** 

MBS User ID. Specify to filter by MBS User ID.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 1 |
| Default value: |  |
| Accept pipeline input: | false |
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



None



## Outputs



MBS.API.User


## Notes

Author: MSP360 Onboarding Team




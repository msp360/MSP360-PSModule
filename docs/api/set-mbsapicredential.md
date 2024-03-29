---
Title: Set-MBSAPICredential
HeadTitle: Set-MBSAPICredential
Meta: 'Set-MBSAPICredential'
RedirectUrl: ''
---
# Set-MBSAPICredential
***

Saves MBS API credentials

```

Set-MBSAPICredential
		[-UserName] <String>
		[-Password] <String>
		[[-StoreAs] <String>]
		[<CommonParameters>]





```

***

## Description

Saves provided credentials to temp variable or local profile.

***

## Examples


### Example 1:     

```
PS C:\> Set-MBSAPICredential -UserName MyUser -Password MyPassword -StoreAs MyProfile
```


***

## Parameters

>**-UserName** 

API Login name. Generate new one on [https://mspbackups.com/Admin/Settings.aspx](https://mspbackups.com/Admin/Settings.aspx)
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | 1 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Password** 

API Password. Generate new one on [https://mspbackups.com/Admin/Settings.aspx](https://mspbackups.com/Admin/Settings.aspx)
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | 2 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-StoreAs** 

Profile name. Specify to save credentials securely to local file. File is stored in %USERPROFILE%\.mbs folder.
        
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



None



## Outputs



None


## Notes

Author: MSP360 Onboarding Team




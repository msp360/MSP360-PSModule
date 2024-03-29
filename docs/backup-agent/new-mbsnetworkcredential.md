---
Title: New-MBSNetworkCredential
HeadTitle: New-MBSNetworkCredential
Meta: 'New-MBSNetworkCredential'
RedirectUrl: ''
---
# New-MBSNetworkCredential
***

Creates new network credentials.

```

New-MBSNetworkCredential
		[-Path] <String>
		[-Login] <String>
		[-Password] <SecureString>
		[[-MasterPassword] <SecureString>]
		[<CommonParameters>]





```

***

## Description

Creates new network credentials by specifying a network path, user login and network share password.

***

## Examples


### Example 1:     

```
PS C:\> New-MBSNetworkCredential -Path \\SharePath -Login username -Password (ConvertTo-SecureString -string "share_password" -AsPlainText -Force) -MasterPassword (ConvertTo-SecureString -string "master_password" -AsPlainText -Force)
```


***

## Parameters

>**-Path** 

Network share path
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | 1 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Login** 

Network share username
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | 2 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Password** 

Network share password
        
|       |     |
|-------|-----|
| Type | SecureString |
| Required: | true | 
| Position: | 3 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-MasterPassword** 

Backup agent master password. Use -MasterPassword (ConvertTo-SecureString -string "Your_Password" -AsPlainText -Force)
        
|       |     |
|-------|-----|
| Type | SecureString |
| Required: | false | 
| Position: | 4 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |



>**CommonParameters**

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see [about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216). 


## Inputs



None.



## Outputs



System.Management.Automation.PSCustomObject


## Notes

Author: MSP360 Onboarding Team




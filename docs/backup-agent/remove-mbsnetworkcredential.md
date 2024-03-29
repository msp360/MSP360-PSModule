---
Title: Remove-MBSNetworkCredential
HeadTitle: Remove-MBSNetworkCredential
Meta: 'Remove-MBSNetworkCredential'
RedirectUrl: ''
---
# Remove-MBSNetworkCredential
***

Removes network credentials specified in the MBS backup agent.

```

Remove-MBSNetworkCredential
		[-AllNetworkCredentials]
		[-MasterPassword <SecureString>]
		[<CommonParameters>]

Remove-MBSNetworkCredential
		[-Path <String>]
		[-MasterPassword <SecureString>]
		[<CommonParameters>]

Remove-MBSNetworkCredential
		[-Login <String>]
		[-MasterPassword <SecureString>]
		[<CommonParameters>]





```

***

## Description

This cdmlet allows to remove network credentials from the MBS backup agent. This could be done either by specifying the network path or a share username as parameters.

***

## Examples


### Example 1: Removes all network credentials.    

```
PS C:\> Remove-MBSNetworkCredential -AllNetworkCredentials
```
 
### Example 2: Removes all network credentials that has "\\MyShare" as a path.    

```
PS C:\> Remove-MBSNetworkCredential -Path \\MyShare
```
 
### Example 3: Removes all network credentials that has "UserName" as a share login.    

```
PS C:\> Remove-MBSNetworkCredential -Login UserName
```


***

## Parameters

>**-AllNetworkCredentials** 

Removes all network credentials specified in the MBS backup agent.
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Path** 

Removes all network credentials with specific share path.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Login** 

Removes all network credentials with specified share username.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-MasterPassword** 

Backup agent master password. Use -MasterPassword (ConvertTo-SecureString -string "Your_Password" -AsPlainText -Force)
        
|       |     |
|-------|-----|
| Type | SecureString |
| Required: | false | 
| Position: | named |
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




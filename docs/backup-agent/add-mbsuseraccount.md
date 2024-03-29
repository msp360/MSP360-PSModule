---
Title: Add-MBSUserAccount
HeadTitle: Add-MBSUserAccount
Meta: 'Add-MBSUserAccount'
RedirectUrl: ''
---
# Add-MBSUserAccount
***

Login backup agent with MBS user credentials or Windows authentication.

```

Add-MBSUserAccount
		-User <String>
		-Password <SecureString>
		[-SSL <Nullable`1>]
		[-MasterPassword <SecureString>]
		[<CommonParameters>]

Add-MBSUserAccount
		-WindowsAuth
		-ADBridgeEndpoint <String>
		[-MasterPassword <SecureString>]
		[<CommonParameters>]

Add-MBSUserAccount
		[-WindowsAuthDirectMode]
		[-MasterPassword <SecureString>]
		[<CommonParameters>]





```

***

## Description

The cmdlet uses to login backup agent to MBS with MBS user credentials or with simple Windows authentication mode.

***

## Examples


### Example 1: Login with MBS backup user.    

```
PS C:\> Add-MBSUserAccount -User backupuser -Password (ConvertTo-SecureString -string 'My_Password' -AsPlainText -Force)
```
 
### Example 2: Login with MBS backup user and disable using SSL for backup storages.    

```
PS C:\> Add-MBSUserAccount -User backupuser -Password (ConvertTo-SecureString -string 'My_Password' -AsPlainText -Force) -SSL $false
```
 
### Example 3: Login using Windows authentication.    

```
PS C:\> Add-MBSUserAccount -WindowsAuth -ADBridgeEndpoint http://ADBRIDGE-PC:8900/ADGateway/Service/
```
 
### Example 4: Login using Windows authentication in direct mode.    

```
PS C:\> Add-MBSUserAccount -WindowsAuthD
```


***

## Parameters

>**-User** 

MBS User account name
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Password** 

MBS User account password
        
|       |     |
|-------|-----|
| Type | SecureString |
| Required: | true | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-SSL** 

Use SSL for user backup storages.
        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-WindowsAuth** 

Use Windows authorization
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | true | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-WindowsAuthDirectMode** 

Use Windows authorization (direct mode)
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ADBridgeEndpoint** 

Active Directory Bridge endpoint
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-MasterPassword** 

Master password. Should be specified if configuration is protected by master password. Use -MasterPassword (ConvertTo-SecureString -string "Your_Password" -AsPlainText -Force)
        
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



None



## Outputs



String


## Notes

Author: MSP360 Onboarding Team




---
Title: Edit-MBSUserAccount
HeadTitle: Edit-MBSUserAccount
Meta: 'Edit-MBSUserAccount'
RedirectUrl: ''
---
# Edit-MBSUserAccount
***

Edit MBS user account.

```

Edit-MBSUserAccount
		-User <String>
		-Password <SecureString>
		[-SSL <Nullable`1>]
		[-BackupPrefix <String>]
		[-MasterPassword <SecureString>]
		[<CommonParameters>]

Edit-MBSUserAccount
		[-BackupPrefix <String>]
		[-WindowsAuthDirectMode]
		[-MasterPassword <SecureString>]
		[<CommonParameters>]

Edit-MBSUserAccount
		[-BackupPrefix <String>]
		-WindowsAuth
		[-DomainOnly]
		-ADBridgeEndpoint <String>
		[-MasterPassword <SecureString>]
		[<CommonParameters>]





```

***

## Description

The cmdlet edits MBS user account by specifying MBS user credentials or with simple Windows authentication mode.

***

## Examples


### Example 1: Edit MBS backup user credentials.    

```
PS C:\> Edit-MBSUserAccount -User backupuser -Password (ConvertTo-SecureString -string 'My_Password' -AsPlainText -Force)
```
 
### Example 2: Edit MBS backup user account and disable using SSL for backup storages.    

```
PS C:\> Edit-MBSUserAccount -User backupuser -Password (ConvertTo-SecureString -string 'My_Password' -AsPlainText -Force) -SSL $false
```
 
### Example 3: Login using Windows authentication.    

```
PS C:\> Edit-MBSUserAccount -WindowsAuth -ADBridgeEndpoint http://ADBRIDGE-PC:8900/ADGateway/Service/
```
 
### Example 4: Login using Windows authentication in direct mode.    

```
PS C:\> Edit-MBSUserAccount -WindowsAuthD
```
 
### Example 5: Login using Windows authentication in direct mode.    

```
PS C:\> Edit-MBSUserAccount -WindowsAuthD
```
 
### Example 6: Change backup prefix to the specified one    

```
PS C:\> Edit-MBSUserAccount -BackupPrefix SamplePrefix
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

 >**-BackupPrefix** 

Set different backup prefix for computer
        
|       |     |
|-------|-----|
| Type | String |
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

 >**-DomainOnly** 

Don't use Windows Auth if user is not in the domain
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
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




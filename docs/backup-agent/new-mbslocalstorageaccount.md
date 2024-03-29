---
Title: New-MBSLocalStorageAccount
HeadTitle: New-MBSLocalStorageAccount
Meta: 'New-MBSLocalStorageAccount'
RedirectUrl: ''
---
# New-MBSLocalStorageAccount
***

Add local storage.

```

New-MBSLocalStorageAccount
		[-Name] <String>
		[-Path] <String>
		[[-BackupPrefix] <String>]
		[[-MasterPassword] <SecureString>]
		[<CommonParameters>]





```

***

## Description

Add local storage.

***

## Examples


### Example 1: Add new local backup storage with path "C:\Backups", name "Local Backup" and backup prefix "Server".    

```
PS C:\> New-MBSLocalStorageAccount -Name "Local Backup" -Path "C:\Backups" -BackupPrefix "Server"
```
 
### Example 2: Add new local backup storage with path "C:\Backups", name "Local Backup" and default backup prefix (server name / hostname).    

```
PS C:\> New-MBSLocalStorageAccount -Name "Local Backup" -Path "C:\Backups"
```
 
### Example 3: Add new local backup storage with path "C:\Backups" and name "Local Backup" to agent protected with a master password.    

```
PS C:\> New-MBSLocalStorageAccount -Name "Local Backup" -Path "C:\Backups" -MasterPassword (ConvertTo-SecureString -string "Your_Password" -AsPlainText -Force)
```


***

## Parameters

>**-Name** 

Storage account display name.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | 1 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Path** 

Storage account path.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | 2 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-BackupPrefix** 

Backup prefix to differentiate between backups from different computers.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 3 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-MasterPassword** 

Master password. Should be specified if configuration is protected by master password. Use -MasterPassword (ConvertTo-SecureString -string "Your_Password" -AsPlainText -Force)
        
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













## Notes

Author: MSP360 Onboarding Team




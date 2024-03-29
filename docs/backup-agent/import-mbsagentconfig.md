---
Title: Import-MBSAgentConfig
HeadTitle: Import-MBSAgentConfig
Meta: 'Import-MBSAgentConfig'
RedirectUrl: ''
---
# Import-MBSAgentConfig
***

Import backup agent coniguration

```

Import-MBSAgentConfig
		[-Path] <String>
		[-ReplaceBackupPrefix]
		[[-MasterPassword] <SecureString>]
		[<CommonParameters>]





```

***

## Description

NOTE: Your settings and backup plans will be overwritten from selected configuration archive

***

## Examples


### Example 1: Import configuration archive from the path "C:\Temp\Configuration_20201218132026.cbbconfiguration".    

```
PS C:\> Import-MBSAgentConfig -Path "C:\Temp\Configuration_20201218132026.cbbconfiguration"
```
 
### Example 2: Import configuration archive from the path "C:\Temp\Configuration_20201218132026.cbbconfiguration" and replace backup prefix in the imported accounts with the current machine name.    

```
PS C:\> Import-MBSAgentConfig -Path "C:\Temp\Configuration_20201218132026.cbbconfiguration" -ReplaceBackupPrefix
```
 
### Example 3: Import configuration archive from the path "C:\Temp\Configuration_20201218132026.cbbconfiguration" to the backup agent protected with the master password.    

```
PS C:\> Import-MBSAgentConfig -Path "C:\Temp\Configuration_20201218132026.cbbconfiguration" -MasterPassword (ConvertTo-SecureString -string "Your_Password" -AsPlainText -Force)
```


***

## Parameters

>**-Path** 

Specify path to configuration archive file
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | 1 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ReplaceBackupPrefix** 

Specify to replace backup prefix in the imported accounts with current machine name
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-MasterPassword** 

Master password. Should be specified if configuration is protected by master password. Use -MasterPassword (ConvertTo-SecureString -string "Your_Password" -AsPlainText -Force)
        
|       |     |
|-------|-----|
| Type | SecureString |
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



String
String[]


## Notes

Author: MSP360 Onboarding Team




---
Title: Export-MBSAgentConfig
HeadTitle: Export-MBSAgentConfig
Meta: 'Export-MBSAgentConfig'
RedirectUrl: ''
---
# Export-MBSAgentConfig
***

Export backup agent coniguration.

```

Export-MBSAgentConfig
		[-Path] <String>
		[-RemoveEncryptionPassword]
		[[-MasterPassword] <SecureString>]
		[<CommonParameters>]





```

***

## Description

Export backup agent coniguration.

***

## Examples


### Example 1: Export configuration archive from the path "C:\Temp\Configuration_20201218132026.cbbconfiguration".    

```
PS C:\> Export-MBSAgentConfig -Path "C:\Temp\Configuration_20201218132026.cbbconfiguration"
```
 
### Example 2: Export configuration archive from the path "C:\Temp\Configuration_20201218132026.cbbconfiguration" and remove encryption password.    

```
PS C:\> Export-MBSAgentConfig -Path "C:\Temp\Configuration_20201218132026.cbbconfiguration" -RemoveEncryptionPassword
```
 
### Example 3: Export configuration archive from the path "C:\Temp\Configuration_20201218132026.cbbconfiguration" from the backup agent protected with the master password.    

```
PS C:\> Export-MBSAgentConfig -Path "C:\Temp\Configuration_20201218132026.cbbconfiguration" -MasterPassword (ConvertTo-SecureString -string "Your_Password" -AsPlainText -Force)
```


***

## Parameters

>**-Path** 

Specify path to configuration archive file.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | 1 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-RemoveEncryptionPassword** 

Specify to remove encryption passwords. Should be specified during import via the Import Configuration dialog. Not supported in the Import-MBSAgentConfig command.
        
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




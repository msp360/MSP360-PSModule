---
Title: Get-MBSNetworkCredential
HeadTitle: Get-MBSNetworkCredential
Meta: 'Get-MBSNetworkCredential'
RedirectUrl: ''
---
# Get-MBSNetworkCredential
***

Lists existing network credentials.

```

Get-MBSNetworkCredential
		[-TestCredentials]
		[[-MasterPassword] <SecureString>]
		[<CommonParameters>]





```

***

## Description

Lists existing network credentials and performs availability test if -TestCredentials parameter is specified.

***

## Examples


### Example 1: List network credentials    

```
PS C:\> Get-MBSNetworkCredential
```
 
### Example 2: List network credentials and performs availability test    

```
PS C:\> Get-MBSNetworkCredential -TestCredentials
```
 
### Example 3: List network credentials from backup agent protected with master password    

```
PS C:\> Get-MBSNetworkCredential -MasterPassword (ConvertTo-SecureString -string "Your_Password" -AsPlainText -Force)
```


***

## Parameters

>**-TestCredentials** 

Lists network credentials and performs availability test
        
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
| Position: | 1 |
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




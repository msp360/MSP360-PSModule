---
Title: Get-MBSPrefix
HeadTitle: Get-MBSPrefix
Meta: 'Get-MBSPrefix'
RedirectUrl: ''
---
# Get-MBSPrefix
***

Lists existing prefixes for the specific storage account.

```

Get-MBSPrefix
		[-StorageAccount] <StorageAccount>
		[[-MasterPassword] <SecureString>]
		[<CommonParameters>]





```

***

## Description

This cmdlet provides a list of existing prefixes for the storage account with specified name.

***

## Examples


### Example 1: List prefixes from the storage account with name "Vbox"    

```
PS C:\> Get-MBSPrefix -StorageAccount (Get-MBSStorageAccount -Name "Vbox")
```


***

## Parameters

>**-StorageAccount** 

Specifies storage account object. Use Get-MBSStorageAccount cmdlet to list storages. Example: (Get-MBSStorageAccount -Name "Vbox")
        
|       |     |
|-------|-----|
| Type | StorageAccount |
| Required: | true | 
| Position: | 1 |
| Default value: |  |
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



None.



## Outputs



System.Management.Automation.PSCustomObject


## Notes

Author: MSP360 Onboarding Team




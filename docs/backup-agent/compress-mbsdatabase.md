---
Title: Compress-MBSDatabase
HeadTitle: Compress-MBSDatabase
Meta: 'Compress-MBSDatabase'
RedirectUrl: ''
---
# Compress-MBSDatabase
***

Compress backup agent database

```

Compress-MBSDatabase
		[[-MasterPassword] <SecureString>]
		[<CommonParameters>]





```

***

## Description

Compress backup agent database

***

## Examples


### Example 1: Compress backup agent database    

```
PS C:\> Compress-MBSDatabase
```


***

## Parameters

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



System.String[]


## Notes

Author: MSP360 Onboarding Team




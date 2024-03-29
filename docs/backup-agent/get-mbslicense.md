---
Title: Get-MBSLicense
HeadTitle: Get-MBSLicense
Meta: 'Get-MBSLicense'
RedirectUrl: ''
---
# Get-MBSLicense
***

Shows the license information.

```

Get-MBSLicense
		[[-MasterPassword] <SecureString>]
		[<CommonParameters>]





```

***

## Description

This cmdlet provides the information about the license used by current MBS user.

***

## Examples


### Example 1: Show the license ID and the user using that license.    

```
PS C:\> Get-MBSLicense
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



MBS.Agent.License


## Notes

Author: MSP360 Onboarding Team




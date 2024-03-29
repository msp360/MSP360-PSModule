---
Title: Install-RMMAgent
HeadTitle: Install-RMMAgent
Meta: 'Install-RMMAgent'
RedirectUrl: ''
---
# Install-RMMAgent
***

Install RMM agent on a local machine

```

Install-RMMAgent
		[-URL] <String>
		[-Force]
		[<CommonParameters>]





```

***

## Description

Cmdlet installs RMM agent on a local machine

***

## Examples


### Example 1: Install the RMM agent.    

```
PS C:\> Install-RMMAgent -URL https://s3.amazonaws.com/cb_setups/MBS/XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXX/Brands/XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXX/CompanyNameRMMAgent_vX.X.X.XXX.exe
```
 
### Example 2: Force to reinstall the RMM agent.    

```
PS C:\> Install-RMMAgent -URL https://s3.amazonaws.com/cb_setups/MBS/XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXX/Brands/XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXX/CompanyNameRMMAgent_vX.X.X.XXX.exe -Force
```


***

## Parameters

>**-URL** 


        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | 1 |
| Default value: |  |
| Accept pipeline input: | true (ByValue, ByPropertyName) |
| Accept wildcard characters: | false |

 >**-Force** 


        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
| Default value: | False |
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




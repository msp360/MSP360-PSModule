---
Title: Install-MBSAgent
HeadTitle: Install-MBSAgent
Meta: 'Install-MBSAgent'
RedirectUrl: ''
---
# Install-MBSAgent
***

Install MBS backup agent on a local machine

```

Install-MBSAgent
		[-URL] <String>
		[-Force]
		[<CommonParameters>]





```

***

## Description

Cmdlet installs MBS backup agent on a local machine

***

## Examples


### Example 1: Install the MBS backup agent.    

```
PS C:\> Install-MBSAgent -URL https://s3.amazonaws.com/cb_setups/MBS/XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXX/CompanyName_vX.X.X.XX.exe
```
 
### Example 2: Force to reinstall the MBS backup agent.    

```
PS C:\> Install-MBSAgent -URL https://s3.amazonaws.com/cb_setups/MBS/XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXX/CompanyName_vX.X.X.XX.exe -Force
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




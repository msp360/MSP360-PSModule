---
Title: Install-CONAgent
HeadTitle: Install-CONAgent
Meta: 'Install-CONAgent'
RedirectUrl: ''
---
# Install-CONAgent
***

Install Connect agent on a local machine

```

Install-CONAgent
		-URL <String>
		[-Force]
		[<CommonParameters>]

Install-CONAgent
		-ConfigurationID <String>
		[-Force]
		[<CommonParameters>]





```

***

## Description

Cmdlet installs Connect agent on a local machine

***

## Examples


### Example 1: Install the Connect agent using the URL    

```
PS C:\> Install-CONAgent -URL https://mspbackups.com/downloads/ConnectSetup/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
```
 
### Example 2: Install the Connect agent using the Configuration ID    

```
PS C:\> Install-CONAgent -ConfigurationID xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
```
 
### Example 3: Force to reinstall the Connect agent.    

```
PS C:\> Install-CONAgent -URL https://mspbackups.com/downloads/ConnectSetup/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx -Force
```


***

## Parameters

>**-URL** 


        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | true (ByValue, ByPropertyName) |
| Accept wildcard characters: | false |

 >**-ConfigurationID** 


        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | named |
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




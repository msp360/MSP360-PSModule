---
Title: Get-RMMAgent
HeadTitle: Get-RMMAgent
Meta: 'Get-RMMAgent'
RedirectUrl: ''
---
# Get-RMMAgent
***

Get RMM agent parameters

```

Get-RMMAgent
		[<CommonParameters>]





```

***

## Description

Gets the information about RMM agent settings, paths, etc. By default, the function pulls the registry values of the installed RMM agent and parses additional values.
The properties from registry path UninstallKeyRMMAgent are fetched dynamically. If the software will add new keys, they can be listed by the function.

***

## Examples


### Example 1: Lists all of the parameters on the system into an object    

```
PS C:\> Get-RMMAgent
```


***

## Parameters



>**CommonParameters**

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see [about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216). 


## Inputs



None.



## Outputs



System.Management.Automation.PSCustomObject


## Notes

Author: MSP360 Onboarding Team




---
Title: Get-CONAgent
HeadTitle: Get-CONAgent
Meta: 'Get-CONAgent'
RedirectUrl: ''
---
# Get-CONAgent
***

Get Connect agent parameters

```

Get-CONAgent
		[<CommonParameters>]





```

***

## Description

Gets the information about Connect agent settings, paths, etc. By default, the function pulls the registry values of the installed Connect agent and parses additional values.
The properties from registry path UninstallKeyRD are fetched dynamically. If the software will add new keys, they can be listed by the function.

***

## Examples


### Example 1: Lists all of the parameters on the system into an object    

```
PS C:\> Get-CONAgent
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




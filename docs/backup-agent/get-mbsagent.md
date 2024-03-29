---
Title: Get-MBSAgent
HeadTitle: Get-MBSAgent
Meta: 'Get-MBSAgent'
RedirectUrl: ''
---
# Get-MBSAgent
***

Get MBS backup agent parameters

```

Get-MBSAgent
		[<CommonParameters>]





```

***

## Description

Gets the information about MBS backup agent settings, paths, etc. By default, the function pulls the registry values of the installed MBS backup agent and parses additional values.
The properties from registry path UninstallKey are fetched dynamically. If the software will add new keys, they can be listed by the function.
If global variables $MSP360ModuleSettings.CBBPath and $MSP360ModuleSettings.CBBProgramData are specified, the function tests the paths and includes only them and $CBBCLIPath in the resulting object.

***

## Examples


### Example 1: Lists all of the parameters on the system into an object    

```
PS C:\> Get-MBSAgent
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




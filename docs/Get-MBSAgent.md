# Get-MBSAgent
***

Get MBS agent parameters

```

Get-MBSAgent
		[<CommonParameters>]





```

***

## Description

Gets the information about MBS agent settings, paths, etc. The function pulls the registry values of the installed MBS backup agent and parses additional values.
The properties from registry path UninstallKey are fetched dynamically. If the software will add new keys, they can be listed by the function.

***

## Examples


### Example 1: Lists all of the parameters on the system into an object    

```
PS C:\> Get-MBSAgent
```


***

## Parameters



>**CommonParameters**

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see        [about_CommonParameters] (https://go.microsoft.com/fwlink/?LinkID=113216). 


## Inputs



None.



## Outputs



System.Management.Automation.PSCustomObject


## Notes

Author: Andrew Anushin




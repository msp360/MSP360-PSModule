---
Title: Remove-RMMAgent
HeadTitle: Remove-RMMAgent
Meta: 'Remove-RMMAgent'
RedirectUrl: ''
---
# Remove-RMMAgent
***

Removes RMM agent from a local machine.

```

Remove-RMMAgent
		[-Force]
		[<CommonParameters>]





```

***

## Description

Cmdlet silently removes RMM agent on a local machine.

***

## Examples


### Example 1: Show a confirmation prompt and uninstall the RMM agent.    

```
PS C:\> Remove-RMMAgent
```
 
### Example 2: Uninstall the RMM agent without corfirmation.    

```
PS C:\> Remove-RMMAgent -Force
```


***

## Parameters

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



None


## Notes

Author: MSP360 Onboarding Team




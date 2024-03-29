---
Title: Remove-CONAgent
HeadTitle: Remove-CONAgent
Meta: 'Remove-CONAgent'
RedirectUrl: ''
---
# Remove-CONAgent
***

Removes Connect agent from a local machine.

```

Remove-CONAgent
		[-Force]
		[<CommonParameters>]





```

***

## Description

Cmdlet silently removes Connect agent on a local machine.

***

## Examples


### Example 1: Show a confirmation prompt and uninstall the Connect agent.    

```
PS C:\> Remove-CONAgent
```
 
### Example 2: Uninstall the Connect agent without corfirmation.    

```
PS C:\> Remove-CONAgent -Force
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




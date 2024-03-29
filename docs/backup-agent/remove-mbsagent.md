---
Title: Remove-MBSAgent
HeadTitle: Remove-MBSAgent
Meta: 'Remove-MBSAgent'
RedirectUrl: ''
---
# Remove-MBSAgent
***

Removes MBS backup agent from a local machine.

```

Remove-MBSAgent
		[-RemoveSettings]
		[-Force]
		[<CommonParameters>]





```

***

## Description

Cmdlet silently removes MBS backup agent on a local machine.

***

## Examples


### Example 1: Show a confirmation prompt and uninstall the backup agent.    

```
PS C:\> Remove-MBSAgent
```
 
### Example 2: Uninstall the backup agent without corfirmation.    

```
PS C:\> Remove-MBSAgent -Force
```
 
### Example 3: Uninstall the backup agent and remove the settings.    

```
PS C:\> Remove-MBSAgent -RemoveSettings -Force
```


***

## Parameters

>**-RemoveSettings** 


        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
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



None


## Notes

Author: MSP360 Onboarding Team




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


### Example 1: C:\PS> Are you sure you want to perform this action?
C:\PS> Performing the operation "Remove-MBSAgent" on target "the backup agent"
C:\PS> [Y] Yes  [N] No (default is "N"):Y
C:\PS> The backup agent has been uninstalled.    

```
C:\PS> Remove-MBSAgent
```
 
### Example 2: The backup agent has been uninstalled.    

```
PS C:> Remove-MBSAgent -Force
```
 
### Example 3: Uninstall the agent and remove the settings.    

```
PS C:> Remove-MBSAgent -RemoveSettings -Force
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

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see        [about_CommonParameters] (https://go.microsoft.com/fwlink/?LinkID=113216). 


## Inputs



None



## Outputs



String


## Notes

Author: Alex Volkov




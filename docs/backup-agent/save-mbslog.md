---
Title: Save-MBSLog
HeadTitle: Save-MBSLog
Meta: 'Save-MBSLog'
RedirectUrl: ''
---
# Save-MBSLog
***

Save the log files to specific path.

```

Save-MBSLog
		[[-Path] <String>]
		[<CommonParameters>]





```

***

## Description

Save the log files to specific path.

***

## Examples


### Example 1: Save logs to the default directory.    

```
PS C:\> Save-MBSLog
```
 
### Example 2: Save logs to the "C:\Temp" directory.    

```
PS C:\> Save-MBSLog -Path C:\Temp
```


***

## Parameters

>**-Path** 

Specifies the directory to which to save the application logs. Ommit to save to the default folder (C:\Users\USER_NAME\Documents\)
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 1 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |



>**CommonParameters**

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see [about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216). 


## Inputs



None.



## Outputs



System.String[]


## Notes

Author: MSP360 Onboarding Team




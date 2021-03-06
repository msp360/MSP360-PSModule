# Get-MBSAPIBuild
***

Get a list of available backup agent downloads.

```

Get-MBSAPIBuild
		[[-Type] <String>]
		[[-ProfileName] <String>]
		[<CommonParameters>]





```

***

## Description

Calls the GET api/Builds API to get a list of all available agent downloads.

***

## Examples


### Example 1: List all available backup agents.    

```
PS C:\> Get-MBSAPIBuild -ProfileName profile
```
 
### Example 2: Get available build for Ubuntu operating system only    

```
PS C:\> Get-MBSAPIBuild -Type Ubuntu -ProfileName profile
```


***

## Parameters

>**-Type** 

Build operating system type
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 1 |
| Accepted values: |  Ubuntu, Windows, VM_Edition, RedHat, macOS  |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ProfileName** 

Profile name used with MSP360 PowerShell for MBS API (set via Set-MBSApiCredential)
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 2 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |



>**CommonParameters**

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see        [about_CommonParameters] (https://go.microsoft.com/fwlink/?LinkID=113216). 


## Inputs



None



## Outputs



System.Management.Automation.PSCustomObject


## Notes

Author: Alex Volkov




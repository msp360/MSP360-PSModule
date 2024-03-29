---
Title: Get-MBSAPIBuild
HeadTitle: Get-MBSAPIBuild
Meta: 'Get-MBSAPIBuild'
RedirectUrl: ''
---
# Get-MBSAPIBuild
***

Get a list of available agent downloads.

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


### Example 1: List all available agent builds.    

```
PS C:\> Get-MBSAPIBuild -ProfileName profile
```
 
### Example 2: Get available build version and link for Windows backup agent.    

```
PS C:\> Get-MBSAPIBuild -Type Windows -ProfileName profile
```
 
### Example 3: Get available build version and link for RMM Agent for Windows.    

```
PS C:\> Get-MBSAPIBuild -Type RMMWindows -ProfileName profile
```


***

## Parameters

>**-Type** 

Build type
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 1 |
| Accepted values: |  Windows, VMEdition, LinuxDEB, LinuxRPM, macOS, RMMWindows, RMMLinuxDEB, RMMLinuxRPM, RMMmacOS  |
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

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see [about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216). 


## Inputs



None



## Outputs



System.Management.Automation.PSCustomObject


## Notes

Author: MSP360 Onboarding Team




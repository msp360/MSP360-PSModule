---
Title: Request-MBSAPIBuild
HeadTitle: Request-MBSAPIBuild
Meta: 'Request-MBSAPIBuild'
RedirectUrl: ''
---
# Request-MBSAPIBuild
***

Requests a new backup agent build

```

Request-MBSAPIBuild
		[-BuildType] {Custom | Sandbox}
		[-BuildEditions] {Windows | VirtualMachine | MacOS | LinuxDeb | LinuxRpm | DedupServer}
		[[-ProfileName] <String>]
		[<CommonParameters>]





```

***

## Description

Calls the POST api/Builds/RequestCustomBuilds API to request a new build according to specifications

***

## Examples


### Example 1:     

```
PS C:\> Request-MBSAPIBuild -ProfileName ao -BuildType 0 -BuildEditions (0,1,2,3,4)
```


***

## Parameters

>**-BuildType** 

Build type Custom / Sandbox. Sandbox is recommended for new releases. 0 is for custom, 1 is for sandbox.
        
|       |     |
|-------|-----|
| Type | BuildType |
| Required: | true | 
| Position: | 1 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-BuildEditions** 

Type of endpoint to backup -- refer to full relevant mapping here: [https://api.mspbackups.com/Help/ResourceModel?modelName=BuildEdition](https://api.mspbackups.com/Help/ResourceModel?modelName=BuildEdition)
        
|       |     |
|-------|-----|
| Type | BuildEdition[] |
| Required: | true | 
| Position: | 2 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ProfileName** 

Profile name used with MSP360 PowerShell for MBS API (set via Set-MBSApiCredential)
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 3 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |



>**CommonParameters**

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see [about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216). 


## Inputs



None



## Outputs



String


## Notes

Author: MSP360 Onboarding Team




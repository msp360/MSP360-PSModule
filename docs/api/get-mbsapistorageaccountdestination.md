---
Title: Get-MBSAPIStorageAccountDestination
HeadTitle: Get-MBSAPIStorageAccountDestination
Meta: 'Get-MBSAPIStorageAccountDestination'
RedirectUrl: ''
---
# Get-MBSAPIStorageAccountDestination
***

Gets available destinations for a specified storage account

```

Get-MBSAPIStorageAccountDestination
		[-AccountID] <String>
		[[-ProfileName] <String>]
		[<CommonParameters>]





```

***

## Description

Calls the GET api/Accounts/{id} API to get a list of destinations in a specified storage account

***

## Examples


### Example 1:     

```
PS C:\> Get-MBSApiStorageAccountDestination -ProfileName ao -AccountID 27bb3fcb-dc04-4a29-ac57-4d679809a2ba
```


***

## Parameters

>**-AccountID** 

The ID of the storage account in question. Use Get-MBSAPIStorageAccount to find this ID.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | 1 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-ProfileName** 

Profile name used with MSP360 PowerShell for MBS API (set via Set-MBSApiCredential)n
        
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



System.Management.Automation.PSCustomObject



## Outputs



System.Management.Automation.PSCustomObject


## Notes

Author: MSP360 Onboarding Team




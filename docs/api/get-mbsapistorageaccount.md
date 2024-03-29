---
Title: Get-MBSAPIStorageAccount
HeadTitle: Get-MBSAPIStorageAccount
Meta: 'Get-MBSAPIStorageAccount'
RedirectUrl: ''
---
# Get-MBSAPIStorageAccount
***

Gets a list of storage accounts

```

Get-MBSAPIStorageAccount
		[[-ID] <String>]
		[[-ProfileName] <String>]
		[<CommonParameters>]





```

***

## Description

Calls the GET api/Accounts API to get a list of Storage Accounts

***

## Examples


### Example 1: Get a list of storage accounts    

```
PS C:\> Get-MBSAPIStorageAccount -profilename ao
```
 
### Example 2: Get specific storage account details by ID.    

```
PS C:\> Get-MBSAPIStorageAccount -ID 7cf9cbfe-504c-43ca-9a61-ef2f69f8ee91 -profilename ao
```


***

## Parameters

>**-ID** 

Storage account ID
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 1 |
| Default value: |  |
| Accept pipeline input: | true (ByValue, ByPropertyName) |
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



System.Management.Automation.PSCustomObject
String



## Outputs



System.Management.Automation.PSCustomObject


## Notes

Author: MSP360 Onboarding Team




---
Title: Get-MBSStorageAccount
HeadTitle: Get-MBSStorageAccount
Meta: 'Get-MBSStorageAccount'
RedirectUrl: ''
---
# Get-MBSStorageAccount
***

Get MBS storage accounts assigned to the MBS agent

```

Get-MBSStorageAccount
		[[-ID] <String>]
		[[-Name] <String>]
		[<CommonParameters>]





```

***

## Description

Get MBS storage accounts assigned to the MBS agent

***

## Examples


### Example 1: Get all assigned storage accounts    

```
PS C:\> Get-MBSStorageAccount | ft
```
 
### Example 2: Get storage account by ID    

```
PS C:\> Get-MBSStorageAccount -ID 92ad7b17-9e2a-41bb-b0e6-c11d60fe9c63
```
 
### Example 3: Get all assigned storage accounts    

```
PS C:\> Get-MBSStorageAccount -Name "Oracle Cloud"
```


***

## Parameters

>**-ID** 


        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 1 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Name** 


        
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



MBS.Agent.StorageAccount


## Notes

Author: MSP360 Onboarding Team




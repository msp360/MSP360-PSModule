---
Title: Test-MBSStorageAccount
HeadTitle: Test-MBSStorageAccount
Meta: 'Test-MBSStorageAccount'
RedirectUrl: ''
---
# Test-MBSStorageAccount
***

Test network connection to cloud or local backup storage.

```

Test-MBSStorageAccount
		-StorageAccount <StorageAccount>
		[<CommonParameters>]

Test-MBSStorageAccount
		-Name <String>
		[<CommonParameters>]

Test-MBSStorageAccount
		-ID <String>
		[<CommonParameters>]





```

***

## Description

The cmdlet get information from the backup storage and test connection with Test-NexConnection cmdlet.

***

## Examples


### Example 1: Get all MBS backup storages and test them in pipeline.    

```
PS C:\> Get-MBSStorageAccount | Test-MBSStorageAccount | ft -AutoSize
```
 
### Example 2: Test backup storage connection with "AWS S3" name by providing backup storage object to "StorageAccount" parameter.    

```
PS C:\> Test-MBSStorageAccount -StorageAccount (Get-MBSStorageAccount -Name "AWS S3")
```
 
### Example 3: Test backup storage connection with "AWS S3" name    

```
PS C:\> Test-MBSStorageAccount -Name "AWS S3"
```
 
### Example 4: Test backup storage connection with d32111fa-53db-4ae0-800a-8601a06ca2d7 ID.    

```
PS C:\> Test-MBSStorageAccount -ID d32111fa-53db-4ae0-800a-8601a06ca2d7
```


***

## Parameters

>**-StorageAccount** 

Specify storage account object. Use Get-MBSStorageAccount cmdlet to list storages. Example: (Get-MBSStorageAccount -Name "AWS S3").
        
|       |     |
|-------|-----|
| Type | StorageAccount |
| Required: | true | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | true (ByValue) |
| Accept wildcard characters: | false |

 >**-Name** 

Backup storage name.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ID** 

Backup storage ID.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |



>**CommonParameters**

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see [about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216). 


## Inputs



MBS.Agent.StorageAccount



## Outputs



MBS.Agent.TestStorageAccountResult


## Notes

Author: MSP360 Onboarding Team




---
Title: Get-MBSConsistencyCheckPlan
HeadTitle: Get-MBSConsistencyCheckPlan
Meta: 'Get-MBSConsistencyCheckPlan'
RedirectUrl: ''
---
# Get-MBSConsistencyCheckPlan
***

Lists consistency check plans.

```

Get-MBSConsistencyCheckPlan
		[[-StorageType] <String>]
		[<CommonParameters>]





```

***

## Description

Lists consistency check plans.

***

## Examples


### Example 1: List all consistency checks    

```
PS C:\> Get-MBSConsistencyCheckPlan -StorageType All
```
 
### Example 2: List only consistency checks for local storages    

```
PS C:\> Get-MBSConsistencyCheckPlan -StorageType Local
```
 
### Example 3: List only consistency checks for cloud storages    

```
PS C:\> Get-MBSConsistencyCheckPlan -StorageType Cloud
```


***

## Parameters

>**-StorageType** 


        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 1 |
| Accepted values: |  All, Local, Cloud  |
| Default value: | All |
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




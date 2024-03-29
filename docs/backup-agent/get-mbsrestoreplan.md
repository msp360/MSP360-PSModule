---
Title: Get-MBSRestorePlan
HeadTitle: Get-MBSRestorePlan
Meta: 'Get-MBSRestorePlan'
RedirectUrl: ''
---
# Get-MBSRestorePlan
***

Get restore plans from MBS backup agent.

```

Get-MBSRestorePlan
		[[-StorageType] <String>]
		[[-PlanType] <String>]
		[[-OutputType] <String>]
		[<CommonParameters>]





```

***

## Description



***

## Examples


### Example 1: Lists all restore plans    

```
PS C:\> Get-MBSRestorePlan -StorageType All -PlanType All
```
 
### Example 2: Lists only restore plans with a local destination.    

```
PS C:\> Get-MBSRestorePlan -StorageType Local -PlanType All
```
 
### Example 3: Lists only restore plans with a cloud destination.    

```
PS C:\> Get-MBSRestorePlan -StorageType Cloud -PlanType All
```
 
### Example 4: Lists all File-level restore plans.    

```
PS C:\> Get-MBSRestorePlan -StorageType All -PlanType File-Level
```
 
### Example 5: Lists all Image-Based restore plans.    

```
PS C:\> Get-MBSRestorePlan -StorageType All -PlanType Image-Based
```
 
### Example 6: Lists Image-Based restore plans with a local destination.    

```
PS C:\> Get-MBSRestorePlan -StorageType Local -PlanType Image-Based
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

 >**-PlanType** 


        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 2 |
| Accepted values: |  All, File-Level, Image-Based, MSSQL, MSExchange, VMware, Hyper-V  |
| Default value: | All |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-OutputType** 


        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 3 |
| Accepted values: |  Full, Raw  |
| Default value: | Full |
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




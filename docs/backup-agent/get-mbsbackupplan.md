---
Title: Get-MBSBackupPlan
HeadTitle: Get-MBSBackupPlan
Meta: 'Get-MBSBackupPlan'
RedirectUrl: ''
---
# Get-MBSBackupPlan
***

Get backup plans from MBS backup agent.

```

Get-MBSBackupPlan
		[[-StorageType] <String>]
		[[-PlanFormat] <String>]
		[[-PlanType] <String>]
		[[-OutputType] <String>]
		[<CommonParameters>]





```

***

## Description



***

## Examples


### Example 1: Lists all backup plans    

```
PS C:\> Get-MBSBackupPlan -StorageType All -PlanFormat All -PlanType All
```
 
### Example 2: Lists only backup plans with a local destination.    

```
PS C:\> Get-MBSBackupPlan -StorageType Local -PlanFormat All -PlanType All
```
 
### Example 3: Lists only backup plans with a cloud destination.    

```
PS C:\> Get-MBSBackupPlan -StorageType Cloud -PlanFormat All -PlanType All
```
 
### Example 4: Lists all CBF (Legacy) backup plans.    

```
PS C:\> Get-MBSBackupPlan -StorageType All -PlanFormat CBF -PlanType All
```
 
### Example 5: Lists all NBF backup plans.    

```
PS C:\> Get-MBSBackupPlan -StorageType All -PlanFormat NBF -PlanType All
```
 
### Example 6: Lists all File-level backup plans.    

```
PS C:\> Get-MBSBackupPlan -StorageType All -PlanFormat All -PlanType File-Level
```
 
### Example 7: Lists all Image-Based backup plans.    

```
PS C:\> Get-MBSBackupPlan -StorageType All -PlanFormat All -PlanType Image-Based
```
 
### Example 8: Lists CBF (Legacy) Image-Based backup plans with a local destination.    

```
PS C:\> Get-MBSBackupPlan -StorageType Local -PlanFormat CBF -PlanType Image-Based
```
 
### Example 9: Get extended parameters of all backup plans.    

```
PS C:\> Get-MBSBackupPlan -StorageType All -PlanFormat All -PlanType All -OutputType Full
```


***

## Parameters

>**-StorageType** 


        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 1 |
| Accepted values: |  All, Local, Cloud, Hybrid  |
| Default value: | All |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-PlanFormat** 


        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 2 |
| Accepted values: |  All, CBF, Legacy, NBF  |
| Default value: | All |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-PlanType** 


        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 3 |
| Accepted values: |  All, File-Level, Image-Based, MSSQL, MSExchange, VMware, Hyper-V  |
| Default value: | All |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-OutputType** 


        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 4 |
| Accepted values: |  Short, Full, Raw  |
| Default value: | Short |
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




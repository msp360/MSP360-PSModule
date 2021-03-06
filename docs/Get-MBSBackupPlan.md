# Get-MBSBackupPlan
***

Get backup plans from MBS backup agent.

```

Get-MBSBackupPlan
		[[-StorageType] <String>]
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
PS C:\> Get-MBSBackupPlan -StorageType All -PlanType All
```
 
### Example 2: Lists only backup plans with a local destination.    

```
PS C:\> Get-MBSBackupPlan -StorageType Local -PlanType All
```
 
### Example 3: Lists only backup plans with a cloud destination.    

```
PS C:\> Get-MBSBackupPlan -StorageType Cloud -PlanType All
```
 
### Example 4: Lists all File-level backup plans.    

```
PS C:\> Get-MBSBackupPlan -StorageType All -PlanType File-Level
```
 
### Example 5: Lists all Image-Based backup plans.    

```
PS C:\> Get-MBSBackupPlan -StorageType All -PlanType Image-Based
```
 
### Example 6: Lists Image-Based backup plans with a local destination.    

```
PS C:\> Get-MBSBackupPlan -StorageType Local -PlanType Image-Based
```
 
### Example 7: Get extended parameters of all backup plans.    

```
PS C:\> Get-MBSBackupPlan -StorageType All -PlanType All -OutputType Full
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
| Accepted values: |  Short, Full, Raw  |
| Default value: | Short |
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




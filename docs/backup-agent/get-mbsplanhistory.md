---
Title: Get-MBSPlanHistory
HeadTitle: Get-MBSPlanHistory
Meta: 'Get-MBSPlanHistory'
RedirectUrl: ''
---
# Get-MBSPlanHistory
***

Retrive backup/restore plan history from local repository.

```

Get-MBSPlanHistory
		[[-PlanID] <String>]
		[-Detailed]
		[<CommonParameters>]





```

***

## Description

Get information on the plan runs. Using -Detailed parameter may slow down output in case of a large number of processed items.

***

## Examples


### Example 1: Get plan history for all backup plan.    

```
PS C:\> Get-MBSPlanHistory
```
 
### Example 2: Get plan history for the specific backup plan.    

```
PS C:\> Get-MBSPlanHistory -PlanID 6d014515-27f6-477c-a13f-c274a4675d44
```
 
### Example 3: Get plan and item history for the specific backup plan.    

```
PS C:\> Get-MBSPlanHistory -PlanID 6d014515-27f6-477c-a13f-c274a4675d44 -Detailed
```


***

## Parameters

>**-PlanID** 

Backup plan ID.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 1 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-Detailed** 

Item history for backup session includes if the switch parameter is specified.
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |



>**CommonParameters**

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see [about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216). 


## Inputs



System.String[]



## Outputs



System.Management.Automation.PSCustomObject


## Notes

Author: MSP360 Onboarding Team




---
Title: Get-MBSPlanStatus
HeadTitle: Get-MBSPlanStatus
Meta: 'Get-MBSPlanStatus'
RedirectUrl: ''
---
# Get-MBSPlanStatus
***

Shows MBS plan status.

```

Get-MBSPlanStatus
		[-Plan] <PSObject>
		[[-MasterPassword] <SecureString>]
		[<CommonParameters>]





```

***

## Description

This cmdlet provides the last result of the MBS backup plan by its ID.

***

## Examples


### Example 1: Get statuses for all backup plans.    

```
PS C:\> Get-MBSBackupPlan | Get-MBSPlanStatus
```
 
### Example 2: Get status for the "Backup Image Based" plan.    

```
PS C:\> Get-MBSPlanStatus -Plan (Get-MBSBackupPlan | Where Name -eq "Backup Image Based")
```
 
### Example 3: Get status for the "Backup Image Based" plan on the protected by master password.    

```
PS C:\> Get-MBSPlanStatus -Plan (Get-MBSBackupPlan | Where Name -eq "Backup Image Based") -MasterPassword (ConvertTo-SecureString -string "Your_Password" -AsPlainText -Force)
```


***

## Parameters

>**-Plan** 

Specify plan object. Use Get-MBSBackupPlan or Get-MBSRestorePlan cmdlet to list plans.
        
|       |     |
|-------|-----|
| Type | PSObject |
| Required: | true | 
| Position: | 1 |
| Default value: |  |
| Accept pipeline input: | true (ByValue) |
| Accept wildcard characters: | false |

 >**-MasterPassword** 

Specify Master password. Use -MasterPassword (ConvertTo-SecureString -string ""Your_Password"" -AsPlainText -Force)
        
|       |     |
|-------|-----|
| Type | SecureString |
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




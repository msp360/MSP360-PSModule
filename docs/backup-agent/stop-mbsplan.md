---
Title: Stop-MBSPlan
HeadTitle: Stop-MBSPlan
Meta: 'Stop-MBSPlan'
RedirectUrl: ''
---
# Stop-MBSPlan
***

Stop running backup and restore plans.

```

Stop-MBSPlan
		[[-ID] <String>]
		[[-Name] <String>]
		[-Force]
		[[-MasterPassword] <SecureString>]
		[<CommonParameters>]





```

***

## Description

The Stop-MBSPlan cmdlet stops a backup or restore plan with specified ID or Name.

***

## Examples


### Example 1: Stop running plan by name.    

```
PS C:\> Stop-MBSPlan -Name "Backup VMware"
```
 
### Example 2: Stop running plan by the plan ID.    

```
PS C:\> Stop-MBSPlan -ID ed2e0d37-5ec2-49e1-a381-d2246b3108ec
```
 
### Example 3: Stop running VMware backup plans with local backup storages type.    

```
PS C:\> Get-MBSBackupPlan -StorageType Local -PlanType VMware | Stop-MBSPlan
```
 
### Example 4: Stop running VMware restore plans with all backup storages type.    

```
PS C:\> Get-MBSRestorePlan -StorageType All -PlanType VMware | Stop-MBSPlan
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
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-Name** 


        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 2 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-Force** 


        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-MasterPassword** 


        
|       |     |
|-------|-----|
| Type | SecureString |
| Required: | false | 
| Position: | 3 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |



>**CommonParameters**

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see [about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216). 


## Inputs



System.String[]
System.String



## Outputs



System.String[]


## Notes

Author: MSP360 Onboarding Team




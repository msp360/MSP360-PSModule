---
Title: Start-MBSPlan
HeadTitle: Start-MBSPlan
Meta: 'Start-MBSPlan'
RedirectUrl: ''
---
# Start-MBSPlan
***

Run backup and restore plans.

```

Start-MBSPlan
		[[-ID] <String>]
		[[-Name] <String>]
		[-ForceFull]
		[[-ForceFullDayOfWeek] <String[]>]
		[[-MasterPassword] <SecureString>]
		[<CommonParameters>]





```

***

## Description

Run backup and restore plans.

***

## Examples


### Example 1: Start plan by name.    

```
PS C:\> Start-MBSPlan -Name "Backup VMware"
```
 
### Example 2: Start plan by the plan ID.    

```
PS C:\> Start-MBSPlan -ID ed2e0d37-5ec2-49e1-a381-d2246b3108ec
```
 
### Example 3: Start VMware backup plans with local backup storages type.    

```
PS C:\> Get-MBSBackupPlan -StorageType Local -PlanType VMware | Start-MBSPlan
```
 
### Example 4: Start VMware restore plans with all backup storages type.    

```
PS C:\> Get-MBSRestorePlan -StorageType All -PlanType VMware | Start-MBSPlan
```
 
### Example 5: Run force full on specific day of the week.    

```
PS C:\> Start-MBSPlan -ID 3a2fde55-9ecd-4940-a75c-d1499b43abda -ForceFull -ForceFullDayOfWeek Friday, Monday
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

 >**-ForceFull** 


        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ForceFullDayOfWeek** 


        
|       |     |
|-------|-----|
| Type | String[] |
| Required: | false | 
| Position: | 3 |
| Accepted values: |  Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday  |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-MasterPassword** 


        
|       |     |
|-------|-----|
| Type | SecureString |
| Required: | false | 
| Position: | 4 |
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




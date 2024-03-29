---
Title: Remove-MBSPlan
HeadTitle: Remove-MBSPlan
Meta: 'Remove-MBSPlan'
RedirectUrl: ''
---
# Remove-MBSPlan
***

Removes existing backup and restore plans

```

Remove-MBSPlan
		-Name <String>
		[-MasterPassword <SecureString>]
		[<CommonParameters>]

Remove-MBSPlan
		-ID <String>
		[-MasterPassword <SecureString>]
		[<CommonParameters>]





```

***

## Description

Removes MBS backup and restore plans either by it's Name or ID.

***

## Examples


### Example 1: Removes plan with name "File backup plan"    

```
PS C:\> Remove-MBSPlan -Name "File backup plan"
```
 
### Example 2: Removes plan with ID d39325ee-d54a-41e2-95d5-9bc476c7881d    

```
PS C:\> Remove-MBSPlan -id d39325ee-d54a-41e2-95d5-9bc476c7881d
```


***

## Parameters

>**-Name** 

Backup or restore plan name
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ID** 

Backup or restore plan ID
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-MasterPassword** 

Master password. Should be specified if configuration is protected by master password. Use -MasterPassword (ConvertTo-SecureString -string "Your_Password" -AsPlainText -Force)
        
|       |     |
|-------|-----|
| Type | SecureString |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |



>**CommonParameters**

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see [about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216). 


## Inputs



System.Management.Automation.PSCustomObject



## Outputs



None


## Notes

Author: MSP360 Onboarding Team




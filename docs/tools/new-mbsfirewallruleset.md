---
Title: New-MBSFirewallRuleSet
HeadTitle: New-MBSFirewallRuleSet
Meta: 'New-MBSFirewallRuleSet'
RedirectUrl: ''
---
# New-MBSFirewallRuleSet
***

Create Firewall rules in Windows for the backup agent

```

New-MBSFirewallRuleSet
		[<CommonParameters>]





```

***

## Description

Checks and creates Firewall rules for backup agent executables to allow inbound and outbound internet connection to storages, MBS portal, etc.

***

## Examples


### Example 1: Creates 5 inbound and 5 outbound rules for MBS backup agent executables in Firewall with name prefix "Online Backup".    

```
PS C:\> New-MBSFirewallRuleSet
```


***

## Parameters



>**CommonParameters**

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see [about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216). 


## Inputs



None.



## Outputs



None.


## Notes

None.




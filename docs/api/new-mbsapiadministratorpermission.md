---
Title: New-MBSAPIAdministratorPermission
HeadTitle: New-MBSAPIAdministratorPermission
Meta: 'New-MBSAPIAdministratorPermission'
RedirectUrl: ''
---
# New-MBSAPIAdministratorPermission
***

Creates MBS.API.AdministratorPermission type object.

```

New-MBSAPIAdministratorPermission
		[[-Users] {None | Access}]
		[[-StorageLimit] {None | Access}]
		[[-Notification] {None | Access}]
		[[-OnlineAccess] {None | Access}]
		[[-Licenses] {None | Access}]
		[[-Billing] {None | Access}]
		[[-Monitiring] {None | Access}]
		[[-RemoteDeploy] {None | Access}]
		[[-RemoteManagment] {None | Access}]
		[[-HelpMarketing] {None | Access}]
		[[-AuditLog] {None | Access}]
		[[-PSA] {None | Access}]
		[[-Administrators] {None | Access}]
		[[-Rebranding] {None | Access}]
		[[-Storage] {None | Access}]
		[[-ADS] {None | Access}]
		[[-LicenseBuy] {None | Access}]
		[[-LicenseActivate] {None | Access}]
		[[-StorageUsage] {None | Access}]
		[[-CapacityReport] {None | Access}]
		[[-GoogleApps] {None | Access}]
		[[-Dashboard] {None | Access}]
		[[-Downloads] {None | Access}]
		[[-CloudRestore] {None | Access}]
		[[-EC2Snapshots] {None | Access}]
		[[-LicenseUsageHistory] {None | Access}]
		[[-BackupHistory] {None | Access}]
		[[-PurchaseHistory] {None | Access}]
		[[-UsersCreateEdit] {None | Access}]
		[[-UsersDelete] {None | Access}]
		[[-ManageCompanies] {None | Access}]
		[[-ManageImmutability] {None | Access}]
		[-EnableUndefinedPermissions]
		[<CommonParameters>]





```

***

## Description

Returns AdministratorPermission type object

***

## Examples


### Example 1: Create object with administrator permissions that allow only to manage notifications, remote management, downloads, and backup history.    

```
PS C:\> New-MBSAPIAdministratorPermission -Notification Access -RemoteManagement Access -Downloads Access -BackupHistory Access
```
 
### Example 2: Create object with administrator permissions that enables all permissions except managing administrators and all actions related to licenses.    

```
PS C:\> New-MBSAPIAdministratorPermission -Administrators None -Licenses None -LicenseBuy None -LicenseActivate None -LicenseUsageHistory None -EnableUndefinedPermissions
```
 
### Example 3: Create object with administrator permissions that enables all permissions    

```
PS C:\> New-MBSAPIAdministratorPermission -EnableUndefinedPermissions
```


***

## Parameters

>**-Users** 

Permission for manage users
        
|       |     |
|-------|-----|
| Type | AdministratorPermissionMode |
| Required: | false | 
| Position: | 1 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-StorageLimit** 

Permission for manage storage limit
        
|       |     |
|-------|-----|
| Type | AdministratorPermissionMode |
| Required: | false | 
| Position: | 2 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Notification** 

Permission for manage notification
        
|       |     |
|-------|-----|
| Type | AdministratorPermissionMode |
| Required: | false | 
| Position: | 3 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-OnlineAccess** 

Permission for manage Online Access
        
|       |     |
|-------|-----|
| Type | AdministratorPermissionMode |
| Required: | false | 
| Position: | 4 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Licenses** 

Permission for manage Licenses
        
|       |     |
|-------|-----|
| Type | AdministratorPermissionMode |
| Required: | false | 
| Position: | 5 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Billing** 

Permission for manage billing
        
|       |     |
|-------|-----|
| Type | AdministratorPermissionMode |
| Required: | false | 
| Position: | 6 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Monitiring** 

Permission for manage monitoring
        
|       |     |
|-------|-----|
| Type | AdministratorPermissionMode |
| Required: | false | 
| Position: | 7 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-RemoteDeploy** 

Permission for manage remote deploy
        
|       |     |
|-------|-----|
| Type | AdministratorPermissionMode |
| Required: | false | 
| Position: | 8 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-RemoteManagment** 

Permission for manage remote management
        
|       |     |
|-------|-----|
| Type | AdministratorPermissionMode |
| Required: | false | 
| Position: | 9 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-HelpMarketing** 

Permission for marketing and help
        
|       |     |
|-------|-----|
| Type | AdministratorPermissionMode |
| Required: | false | 
| Position: | 10 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-AuditLog** 

Permission for manage AuditLog
        
|       |     |
|-------|-----|
| Type | AdministratorPermissionMode |
| Required: | false | 
| Position: | 11 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-PSA** 

Permission for manage connectwise and autotask
        
|       |     |
|-------|-----|
| Type | AdministratorPermissionMode |
| Required: | false | 
| Position: | 12 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Administrators** 

Permission for manage administrators
        
|       |     |
|-------|-----|
| Type | AdministratorPermissionMode |
| Required: | false | 
| Position: | 13 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Rebranding** 

Permission for manage rebranding
        
|       |     |
|-------|-----|
| Type | AdministratorPermissionMode |
| Required: | false | 
| Position: | 14 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Storage** 

Permission for manage storages
        
|       |     |
|-------|-----|
| Type | AdministratorPermissionMode |
| Required: | false | 
| Position: | 15 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ADS** 

Permission for manage AD Bridge
        
|       |     |
|-------|-----|
| Type | AdministratorPermissionMode |
| Required: | false | 
| Position: | 16 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-LicenseBuy** 

Permission for buy licenses
        
|       |     |
|-------|-----|
| Type | AdministratorPermissionMode |
| Required: | false | 
| Position: | 17 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-LicenseActivate** 

Permission for activate licenses
        
|       |     |
|-------|-----|
| Type | AdministratorPermissionMode |
| Required: | false | 
| Position: | 18 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-StorageUsage** 

Permission for storage usages
        
|       |     |
|-------|-----|
| Type | AdministratorPermissionMode |
| Required: | false | 
| Position: | 19 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-CapacityReport** 

Permission for capacity report
        
|       |     |
|-------|-----|
| Type | AdministratorPermissionMode |
| Required: | false | 
| Position: | 20 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-GoogleApps** 

Permission for manage google apps
        
|       |     |
|-------|-----|
| Type | AdministratorPermissionMode |
| Required: | false | 
| Position: | 21 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Dashboard** 

Permission for dashboard
        
|       |     |
|-------|-----|
| Type | AdministratorPermissionMode |
| Required: | false | 
| Position: | 22 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Downloads** 

Show Downloads
        
|       |     |
|-------|-----|
| Type | AdministratorPermissionMode |
| Required: | false | 
| Position: | 23 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-CloudRestore** 

Manage Cloud Restore
        
|       |     |
|-------|-----|
| Type | AdministratorPermissionMode |
| Required: | false | 
| Position: | 24 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-EC2Snapshots** 

Manage EC2 Snapshots
        
|       |     |
|-------|-----|
| Type | AdministratorPermissionMode |
| Required: | false | 
| Position: | 25 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-LicenseUsageHistory** 

License Usage History
        
|       |     |
|-------|-----|
| Type | AdministratorPermissionMode |
| Required: | false | 
| Position: | 26 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-BackupHistory** 

Backup History
        
|       |     |
|-------|-----|
| Type | AdministratorPermissionMode |
| Required: | false | 
| Position: | 27 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-PurchaseHistory** 

Purchase History
        
|       |     |
|-------|-----|
| Type | AdministratorPermissionMode |
| Required: | false | 
| Position: | 28 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-UsersCreateEdit** 

Allowed to Create and Edit Users
        
|       |     |
|-------|-----|
| Type | AdministratorPermissionMode |
| Required: | false | 
| Position: | 29 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-UsersDelete** 

Allowed to Delete Users
        
|       |     |
|-------|-----|
| Type | AdministratorPermissionMode |
| Required: | false | 
| Position: | 30 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ManageCompanies** 

Allowed to Manage companies
        
|       |     |
|-------|-----|
| Type | AdministratorPermissionMode |
| Required: | false | 
| Position: | 31 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ManageImmutability** 

Allowed to Manage immutability
        
|       |     |
|-------|-----|
| Type | AdministratorPermissionMode |
| Required: | false | 
| Position: | 32 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-EnableUndefinedPermissions** 

If set, all undefined permissions will be enabled (by default, undefined permissions are disabled)
        
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



None



## Outputs



MBS.API.AdministratorPermission


## Notes

Author: MSP360 Onboarding Team




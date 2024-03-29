---
Title: New-MBSRestorePlan
HeadTitle: New-MBSRestorePlan
Meta: 'New-MBSRestorePlan'
RedirectUrl: ''
---
# New-MBSRestorePlan
***

Creates new restore plan.

```

New-MBSRestorePlan
		-Name <String>
		-StorageAccount <StorageAccount>
		[-MasterPassword <SecureString>]
		[-Schedule <Schedule>]
		-RestorePlanCommonOption <RestorePlanCommonOption>
		[-BackupPrefix <String>]
		[-RestorePath <String>]
		[-RunOnce <Boolean>]
		[-Overwrite]
		[-RestoreFromGlacier {Expedited | Standard | Bulk}]
		[-RestorePoint <DateTime>]
		-HVHost <String>
		-VM <String>
		-NewVM <String>
		-ImportVM <Boolean>
		[<CommonParameters>]

New-MBSRestorePlan
		-Name <String>
		-StorageAccount <StorageAccount>
		[-MasterPassword <SecureString>]
		[-Schedule <Schedule>]
		-RestorePlanCommonOption <RestorePlanCommonOption>
		[-BackupPrefix <String>]
		[-RestorePath <String>]
		[-RunOnce <Boolean>]
		[-Overwrite]
		[-RestoreFromGlacier {Expedited | Standard | Bulk}]
		[-RestorePoint <DateTime>]
		[-File <String[]>]
		[-Folder <String[]>]
		[-RestoreDeletedFiles]
		[-RestoreNewFile]
		[-RestoreNTFSPermissions]
		[<CommonParameters>]

New-MBSRestorePlan
		-Name <String>
		-StorageAccount <StorageAccount>
		[-MasterPassword <SecureString>]
		[-Schedule <Schedule>]
		-RestorePlanCommonOption <RestorePlanCommonOption>
		[-BackupPrefix <String>]
		[-RunOnce <Boolean>]
		[-Overwrite]
		[-RestorePoint <DateTime>]
		-InstanceName <String>
		[-useSSL <Boolean>]
		[-useWinauth]
		[-UserName <String>]
		[-Password <SecureString>]
		[-DataFileFolder <String>]
		[-LogFileFolder <String>]
		[-FileNameTemplate <String>]
		[-CloseExistingConnection]
		[-CheckPermissions <Boolean>]
		[-SourceInstanceName <String>]
		[-Database <String>]
		[-NewDatabase <String>]
		[<CommonParameters>]

New-MBSRestorePlan
		-Name <String>
		-StorageAccount <StorageAccount>
		[-MasterPassword <SecureString>]
		[-Schedule <Schedule>]
		-RestorePlanCommonOption <RestorePlanCommonOption>
		[-BackupPrefix <String>]
		[-RunOnce <Boolean>]
		[-RestorePoint <DateTime>]
		[-Disk <String>]
		[-Volume <String>]
		-VirtualDiskType {VHDdynamic | VHDfixed | VHDXdynamic | Raw | Rawsparse | Tar | Tgz | VDIdynamic | VDIfixed | VMDKdynamic | VMDKfixed}
		[-VirtualDiskName <String>]
		[-VirtualDiskFolder <String>]
		[-VirtualDiskCapacity <String>]
		[<CommonParameters>]

New-MBSRestorePlan
		-Name <String>
		-StorageAccount <StorageAccount>
		[-MasterPassword <SecureString>]
		[-Schedule <Schedule>]
		-RestorePlanCommonOption <RestorePlanCommonOption>
		[-BackupPrefix <String>]
		[-RunOnce <Boolean>]
		[-RestorePoint <DateTime>]
		[-Disk <String>]
		-Volume <String>
		[-DestinationDisk <String>]
		-DestinationVolume <String>
		[<CommonParameters>]

New-MBSRestorePlan
		-Name <String>
		-StorageAccount <StorageAccount>
		[-MasterPassword <SecureString>]
		[-Schedule <Schedule>]
		-RestorePlanCommonOption <RestorePlanCommonOption>
		[-BackupPrefix <String>]
		[-RunOnce <Boolean>]
		[-RestorePoint <DateTime>]
		-Disk <String>
		-DestinationDisk <String>
		[<CommonParameters>]





```

***

## Description

Creates File-Level, Image-Based, Hyper-V, or MS SQL restore plan.

***

## Examples


### Example 1: Restore Image-Based backup as VHD dynamic file.    

```
PS C:\> New-MBSRestorePlan -Name "Restore Image as VHD" -StorageAccount (Get-MBSStorageAccount | where {$_.DisplayName -eq "AWS S3"}) -RestorePlanCommonOption (New-MBSRestorePlanCommonOption) -Disk "00000000-0000-0000-0000-000000000002" -VirtualDiskType VHDdynamic -VirtualDiskName "MyDisk" -VirtualDiskFolder "E:\Restore"
```
 
### Example 2: Restore C:\temp\test.txt and C:\myFolder,c:\Users folders to E:\Restore    

```
PS C:\> New-MBSRestorePlan -Name "Restore file" -StorageAccount (Get-MBSStorageAccount | where {$_.DisplayName -like "*AWS S3*"}) -RestorePlanCommonOption (New-MBSRestorePlanCommonOption) -File C:\temp\test.txt -Folder "C:\myFolder","c:\Users" -RestorePath "E:\Restore"
```
 
### Example 3: Create plan to restore disk with ID "00000000-0000-0000-0000-000000000002" to disk with ID "00000000-0000-0000-0000-000000000001" and start it.    

```
PS C:\> New-MBSRestorePlan -Name "Restore disk" -StorageAccount (Get-MBSStorageAccount | where {$_.DisplayName -eq "AWS S3"}) -RestorePlanCommonOption (New-MBSRestorePlanCommonOption) -Disk "00000000-0000-0000-0000-000000000002" -DestinationDisk "00000000-0000-0000-0000-000000000001" | Start-MBSBackupPlan
```
 
### Example 4: Create plan to restore Hyper-V VM with name Server as new VM with name RestoredServer and import to Hyper-V.    

```
PS C:\> New-MBSRestorePlan -Name "Restore Hyper-V VM" -StorageAccount (Get-MBSStorageAccount | where {$_.DisplayName -eq "AWS S3"}) -RestorePlanCommonOption (New-MBSRestorePlanCommonOption) -Host "MyHost" -VM "Server" -NewVM "RestoredServer" -ImportVM $true | Start-MBSBackupPlan
```


***

## Parameters

>**-Name** 

Restore plan name
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-StorageAccount** 

Specify storage account object. Use Get-MBSStorageAccount cmdlet to list storages. Example: (Get-MBSStorageAccount -Name "AWS S3")
        
|       |     |
|-------|-----|
| Type | StorageAccount |
| Required: | true | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
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

 >**-Schedule** 

Specify schedule. Use New-MBSPlanSchedule to create an object
        
|       |     |
|-------|-----|
| Type | Schedule |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-RestorePlanCommonOption** 

Specify plan common options. Use New-MBSRestorePlanCommonOption to create an object
        
|       |     |
|-------|-----|
| Type | RestorePlanCommonOption |
| Required: | true | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-BackupPrefix** 

Backup prefix
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-RestorePath** 

Restore to a specific location. Omit for restore to the original location.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-RunOnce** 

Run plan once (do not save)
        
|       |     |
|-------|-----|
| Type | Boolean |
| Required: | false | 
| Position: | named |
| Default value: | True |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Overwrite** 

Overwrite existing files/database
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-RestoreFromGlacier** 

Restore objects located in S3 Glacier or Deep Archive storage classes. Possible values: Expedited, Standard, Bulk)
        
|       |     |
|-------|-----|
| Type | GlacierRestoreType |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-RestorePoint** 

Restore type. Specify DateTime value or omit to restore the latest version.
        
|       |     |
|-------|-----|
| Type | DateTime |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-File** 

Restore file
        
|       |     |
|-------|-----|
| Type | String[] |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Folder** 

Restore folder
        
|       |     |
|-------|-----|
| Type | String[] |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-RestoreDeletedFiles** 

Restore deleted files
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-RestoreNewFile** 

Restore only new files. Existing files will be overwritten only if modification date of backed up file is newer than existing
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-RestoreNTFSPermissions** 

Restore NTFS permissions
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-HVHost** 

Hyper-V host
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-VM** 

Hyper-V VM name
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-NewVM** 

New Hyper-V machine name
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ImportVM** 

Import virtual machine after restore
        
|       |     |
|-------|-----|
| Type | Boolean |
| Required: | true | 
| Position: | named |
| Default value: | True |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Disk** 

Backed up disk ID
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Volume** 

Restore volume by id
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-DestinationDisk** 

Restore to phisical disk specified by Id
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-DestinationVolume** 

Restore to volume specified by id
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-VirtualDiskType** 

Restore to virtual disk
        
|       |     |
|-------|-----|
| Type | VirtualDiskType |
| Required: | true | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-VirtualDiskName** 

Set target virtual disk name
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-VirtualDiskFolder** 

Set target virtual disk destination folder
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-VirtualDiskCapacity** 

Set target virtual disk capacity (integer value with size specifier in KB, MB, GB, TB. It can be used for extend of the original disk capacity only. Shrinking volumes will not be performed if the value set is smaller than the original disk size.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-InstanceName** 

Destination MS SQL Server instance name
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-useSSL** 

Use secure connection (SSL/TLS)
        
|       |     |
|-------|-----|
| Type | Boolean |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-useWinauth** 

Use Windows authentication
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-UserName** 

MS SQL server user name
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Password** 

MS SQL server password
        
|       |     |
|-------|-----|
| Type | SecureString |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-DataFileFolder** 

Data file folder
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-LogFileFolder** 

Log file folder
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-FileNameTemplate** 

File name template. Possible values: You can use a %DATABASENAME% variable to automatically generate a file name as a 'restore as' database name
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-CloseExistingConnection** 

Close existing connections to destination database
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-CheckPermissions** 

Check if the specified account has necessary permissions to perform restore
        
|       |     |
|-------|-----|
| Type | Boolean |
| Required: | false | 
| Position: | named |
| Default value: | True |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-SourceInstanceName** 

Source MS SQL Server instance name
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Database** 

Source database name
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-NewDatabase** 

New database name
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |



>**CommonParameters**

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see [about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216). 


## Inputs



None.



## Outputs



System.Management.Automation.PSCustomObject
String


## Notes

Author: MSP360 Onboarding Team




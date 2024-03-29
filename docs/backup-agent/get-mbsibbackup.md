---
Title: Get-MBSIBBackup
HeadTitle: Get-MBSIBBackup
Meta: 'Get-MBSIBBackup'
RedirectUrl: ''
---
# Get-MBSIBBackup
***

Get image-based backups

```

Get-MBSIBBackup
		[-StorageAccount] <StorageAccount>
		[[-RestorePoint] <DateTime>]
		[[-BackupPrefix] <String>]
		[[-DiskID] <Guid>]
		[-ListVolumes]
		[-SystemRequired]
		[[-MasterPassword] <SecureString>]
		[<CommonParameters>]





```

***

## Description

Get image-based backups from the specified storage account with disks and volumes.

***

## Examples


### Example 1: Get the latest image-based backup from the storage account with name "AWS S3".    

```
PS C:\> Get-MBSIBBackup -StorageAccount (Get-MBSStorageAccount -Name "AWS S3") | Select-Object -First 1
```
 
### Example 2: Get the image-based backups from the storage account with name "AWS S3" for the disk with GUID "3708e400-2aa4-4991-bdd8-23bf9eec6529".    

```
PS C:\> Get-MBSIBBackup -StorageAccount (Get-MBSStorageAccount -Name "AWS S3") -DiskID 3708e400-2aa4-4991-bdd8-23bf9eec6529
```
 
### Example 3: Get the image-based backups from the storage account with name "AWS S3" for computer with the name "PC-Name".    

```
PS C:\> Get-MBSIBBackup -StorageAccount (Get-MBSStorageAccount -Name "AWS S3") -BackupPrefix PC-Name
```
 
### Example 4: Get the nearest backup before the specified restore point time "2019-10-31T16:00:04Z" from the storage account with name "AWS S3".    

```
PS C:\> Get-MBSIBBackup -StorageAccount (Get-MBSStorageAccount -Name "AWS S3") -RestorePoint 2019-10-31T16:00:04Z
```
 
### Example 5: Get all the image-based backups from the storage account with name "AWS S3"    

```
PS C:\> Get-MBSIBBackup -StorageAccount (Get-MBSStorageAccount -Name "AWS S3")
```


***

## Parameters

>**-StorageAccount** 

Specify storage account object. Use Get-MBSStorageAccount cmdlet to list storages. Example: (Get-MBSStorageAccount -Name "AWS S3")
        
|       |     |
|-------|-----|
| Type | StorageAccount |
| Required: | true | 
| Position: | 1 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-RestorePoint** 

Specify the date and time to get particular restore point. To get all available restore points, skip this parameter.
        
|       |     |
|-------|-----|
| Type | DateTime |
| Required: | false | 
| Position: | 2 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-BackupPrefix** 

Get image-based backups for particular computer name.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 3 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-DiskID** 

List volumes for specified disk id.
        
|       |     |
|-------|-----|
| Type | Guid |
| Required: | false | 
| Position: | 4 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ListVolumes** 

List volumes for each disk.
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-SystemRequired** 

Only system required volumes will be listed.
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-MasterPassword** 

Backup agent master password. Use -MasterPassword (ConvertTo-SecureString -string "Your_Password" -AsPlainText -Force)
        
|       |     |
|-------|-----|
| Type | SecureString |
| Required: | false | 
| Position: | 5 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |



>**CommonParameters**

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see [about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216). 


## Inputs



None.



## Outputs



MBS.Agent.IBBBackup[]


## Notes

Author: MSP360 Onboarding Team




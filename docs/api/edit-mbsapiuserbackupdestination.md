---
Title: Edit-MBSAPIUserBackupDestination
HeadTitle: Edit-MBSAPIUserBackupDestination
Meta: 'Edit-MBSAPIUserBackupDestination'
RedirectUrl: ''
---
# Edit-MBSAPIUserBackupDestination
***

Edit a backup destination of a user.

```

Edit-MBSAPIUserBackupDestination
		[-UserID] <String>
		[-AccountID] <String>
		[-ID] <String>
		[-Destination] <String>
		[-PackageID] <String>
		[[-ProfileName] <String>]
		[<CommonParameters>]





```

***

## Description

Calls the PUT api/Destinations API to edit a backup destination of a user.

***

## Examples


### Example 1: PS C:\> $Destination1 = (Get-MBSAPIUserBackupDestination -profilename ao -useremail test@test.com)[0]
PS C:\> $Destination2 = (Get-MBSAPIUserBackupDestination -profilename ao -useremail test@test.com)[1]
PS C:\> $Destination2.PackageID = $destination1.PackageID
PS C:\> $Destination2 | Edit-MBSAPIUserBackupDestination -profilename ao -userid $MBSUser.ID

Change package of the attached backup destination.    

```
PS C:\> $MBSUser = Get-MBSAPIUser -profilename ao | Where-Object {$_.email -eq 'test@test.com'}
```


***

## Parameters

>**-UserID** 

ID of the user whose backup destination will be edited. Use Get-MBSAPIUser to determine.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | 1 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-AccountID** 

The ID of the storage account that is to be edited. Use Get-MBSAPIUserBackupDestination or Get-MBSAPIStorageAccount to determine.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | 2 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-ID** 

ID of the destination to be edited. Use Get-MBSAPIUserBackupDestination to determine.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | 3 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-Destination** 

Name of the destination
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | 4 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-PackageID** 

ID of the storage limit (package) that is to be applied.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | 5 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-ProfileName** 

Profile name used with MSP360 PowerShell for MBS API (set via Set-MBSApiCredential)
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 6 |
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




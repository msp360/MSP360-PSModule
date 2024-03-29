---
Title: Edit-MBSAPIStorageAccount
HeadTitle: Edit-MBSAPIStorageAccount
Meta: 'Edit-MBSAPIStorageAccount'
RedirectUrl: ''
---
# Edit-MBSAPIStorageAccount
***

Edit a Storage account

```

Edit-MBSAPIStorageAccount
		[-AccountID] <String>
		[-DisplayName] <String>
		[-Type] <String>
		[-AccountSettings] <String>
		[[-ProfileName] <String>]
		[<CommonParameters>]





```

***

## Description

Calls the PUT api/Accounts API to edit an existing storage account.

***

## Examples


### Example 1:     

```
PS C:\> Edit-MBSAPIStorageAccount -AccountID '2789654d-68a5-436b-a286-acbc4c22d26f' -DisplayName 'qwerty' -Type 'AmazonS3' -AccountSettings '{"AmazonS3":{"AccessKey": "****","SecretKey": "*****","isGovCloud": false}}' -ProfileName ao
```


***

## Parameters

>**-AccountID** 

ID of the storage account to edit. Use Get-MBSStorageAccount to determine.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | 1 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-DisplayName** 

Display Name for the storage account
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | 2 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-Type** 

Storage Type either as a numeric [0-24] or in a human-readable format such as 'Amazon S3'. Consult with [https://api.mspbackups.com/Help/ResourceModel?modelName=AccountType](https://api.mspbackups.com/Help/ResourceModel?modelName=AccountType)
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | 3 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-AccountSettings** 

Accounts settings in a JSON string. You can find the required fields for the JSON here: [https://api.mspbackups.com/Help/ResourceModel?modelName=Settings](https://api.mspbackups.com/Help/ResourceModel?modelName=Settings)
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | 4 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-ProfileName** 

Profile name used with MSP360 PowerShell for MBS API (set via Set-MBSApiCredential)
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 5 |
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




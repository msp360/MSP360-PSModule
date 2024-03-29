---
Title: New-MBSAPIStorageAccount
HeadTitle: New-MBSAPIStorageAccount
Meta: 'New-MBSAPIStorageAccount'
RedirectUrl: ''
---
# New-MBSAPIStorageAccount
***

Create a Storage account in MBS

```

New-MBSAPIStorageAccount
		[-DisplayName] <String>
		[-Type] {AmazonS3 | AmazonS3China | Azure | OpenStack | OracleCloud | S3Compatible | Scality | CenturyLink | ArubaCloud | BackblazeB2 | Cloudian | Connectria | Constant | DreamObjects | Dunkel | GreenQloud | HostEurope | Seeweb | ThinkOn | Tiscali | Walrus | FS | GoogleCloudPlatform | Wasabi | Minio}
		[-AccountSettings] <String>
		[[-ProfileName] <String>]
		[<CommonParameters>]





```

***

## Description

Calls the POST api/Accounts API to create a new storage account

***

## Examples


### Example 1: Add Amazon S3 storage account    

```
PS C:\> New-MBSAPIStorageAccountSetting -AmazonS3 -DisplayName 'Amazon S3' -AccessKey ACCESS_KEY -SecretKey SECRET_KEY -IsGovCloud $false | New-MBSAPIStorageAccount -profilename ao
```


***

## Parameters

>**-DisplayName** 

Display name for your storage account
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | 1 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-Type** 

Storage Type either as a numeric [0-24] or in a human-readable format such as 'Amazon S3'. Consult with [https://api.mspbackups.com/Help/ResourceModel?modelName=AccountType](https://api.mspbackups.com/Help/ResourceModel?modelName=AccountType)
        
|       |     |
|-------|-----|
| Type | StorageAccountType |
| Required: | true | 
| Position: | 2 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-AccountSettings** 

Accounts settings in a JSON string. You can find the required fields for the JSON here: [https://api.mspbackups.com/Help/ResourceModel?modelName=Settings](https://api.mspbackups.com/Help/ResourceModel?modelName=Settings)
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | 3 |
| Default value: |  |
| Accept pipeline input: | true (ByPropertyName) |
| Accept wildcard characters: | false |

 >**-ProfileName** 

Profile name used with MSP360 PowerShell for MBS API (set via Set-MBSApiCredential)
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 4 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |



>**CommonParameters**

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see [about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216). 


## Inputs



MBS.API.StorageAccountSetting



## Outputs



String


## Notes

Author: MSP360 Onboarding Team




---
Title: New-MBSAPIStorageAccountSetting
HeadTitle: New-MBSAPIStorageAccountSetting
Meta: 'New-MBSAPIStorageAccountSetting'
RedirectUrl: ''
---
# New-MBSAPIStorageAccountSetting
***

Creates MBS.API.StorageAccountSetting type object.

```

New-MBSAPIStorageAccountSetting
		-DisplayName <String>
		-AmazonS3
		-AccessKey <String>
		-SecretKey <String>
		-IsGovCloud <Boolean>
		[<CommonParameters>]

New-MBSAPIStorageAccountSetting
		-DisplayName <String>
		-AmazonS3China
		-AccessKey <String>
		-SecretKey <String>
		[<CommonParameters>]

New-MBSAPIStorageAccountSetting
		-DisplayName <String>
		-Azure
		-AccountName <String>
		-SharedKey <String>
		[<CommonParameters>]

New-MBSAPIStorageAccountSetting
		-DisplayName <String>
		-OpenStack
		[-IgnoreCertificate <Boolean>]
		[-NotCheckCredentials <Boolean>]
		[-UserName <String>]
		[-ApiKey <String>]
		[-AuthService <String>]
		[-KeyStoneVersion {DoNotUse | Two | Three}]
		[-TenantType {Name | ID}]
		[-Tenant <String>]
		[-UseInternalURLs <Boolean>]
		[-DomainType {Name | ID}]
		[-Domain <String>]
		[-UseScope <Boolean>]
		[-ProjectType {Name | ID}]
		[-Project <String>]
		[<CommonParameters>]

New-MBSAPIStorageAccountSetting
		-DisplayName <String>
		-OracleCloud
		[-UserName <String>]
		[-ApiKey <String>]
		[-AuthService <String>]
		[-KeyStoneVersion {DoNotUse | Two | Three}]
		[-TenantType {Name | ID}]
		[-Tenant <String>]
		[-UseInternalURLs <Boolean>]
		[-DomainType {Name | ID}]
		[-Domain <String>]
		[-UseScope <Boolean>]
		[-ProjectType {Name | ID}]
		[-Project <String>]
		[<CommonParameters>]

New-MBSAPIStorageAccountSetting
		-DisplayName <String>
		-S3Compatible
		-AccessKey <String>
		-SecretKey <String>
		-UseNativeMultipartUpload <Boolean>
		[-HTTPEnpoint <String>]
		[-HTTPSEndpoint <String>]
		[-SignatureVersion {Version2 | Version4}]
		[-IgnoreCertificate <Boolean>]
		[-NotCheckCredentials <Boolean>]
		[<CommonParameters>]

New-MBSAPIStorageAccountSetting
		-DisplayName <String>
		-Scality
		-AccessKey <String>
		-SecretKey <String>
		[-HTTPEnpoint <String>]
		[-HTTPSEndpoint <String>]
		[-SignatureVersion {Version2 | Version4}]
		[-IgnoreCertificate <Boolean>]
		[-NotCheckCredentials <Boolean>]
		[<CommonParameters>]

New-MBSAPIStorageAccountSetting
		-DisplayName <String>
		-CenturyLink
		-AccessKey <String>
		-SecretKey <String>
		[-HTTPEnpoint <String>]
		[-HTTPSEndpoint <String>]
		[-SignatureVersion {Version2 | Version4}]
		[-IgnoreCertificate <Boolean>]
		[-NotCheckCredentials <Boolean>]
		[<CommonParameters>]

New-MBSAPIStorageAccountSetting
		-DisplayName <String>
		-ArubaCloud
		-AccessKey <String>
		-SecretKey <String>
		-UseNativeMultipartUpload <Boolean>
		[-HTTPEnpoint <String>]
		[-HTTPSEndpoint <String>]
		[-SignatureVersion {Version2 | Version4}]
		[-IgnoreCertificate <Boolean>]
		[-NotCheckCredentials <Boolean>]
		[<CommonParameters>]

New-MBSAPIStorageAccountSetting
		-DisplayName <String>
		-BackblazeB2
		-AccessKey <String>
		-SecretKey <String>
		-UseNativeMultipartUpload <Boolean>
		[-HTTPEnpoint <String>]
		[-HTTPSEndpoint <String>]
		[-SignatureVersion {Version2 | Version4}]
		[-IgnoreCertificate <Boolean>]
		[-NotCheckCredentials <Boolean>]
		[<CommonParameters>]

New-MBSAPIStorageAccountSetting
		-DisplayName <String>
		-Cloudian
		-AccessKey <String>
		-SecretKey <String>
		[-HTTPEnpoint <String>]
		[-HTTPSEndpoint <String>]
		[-SignatureVersion {Version2 | Version4}]
		[-IgnoreCertificate <Boolean>]
		[-NotCheckCredentials <Boolean>]
		[<CommonParameters>]

New-MBSAPIStorageAccountSetting
		-DisplayName <String>
		-Connectria
		-AccessKey <String>
		-SecretKey <String>
		-UseNativeMultipartUpload <Boolean>
		[-HTTPEnpoint <String>]
		[-HTTPSEndpoint <String>]
		[-SignatureVersion {Version2 | Version4}]
		[-IgnoreCertificate <Boolean>]
		[-NotCheckCredentials <Boolean>]
		[<CommonParameters>]

New-MBSAPIStorageAccountSetting
		-DisplayName <String>
		-Constant
		-AccessKey <String>
		-SecretKey <String>
		-UseNativeMultipartUpload <Boolean>
		[-HTTPEnpoint <String>]
		[-HTTPSEndpoint <String>]
		[-SignatureVersion {Version2 | Version4}]
		[-IgnoreCertificate <Boolean>]
		[-NotCheckCredentials <Boolean>]
		[<CommonParameters>]

New-MBSAPIStorageAccountSetting
		-DisplayName <String>
		-DreamObjects
		-AccessKey <String>
		-SecretKey <String>
		-UseNativeMultipartUpload <Boolean>
		[-HTTPEnpoint <String>]
		[-HTTPSEndpoint <String>]
		[-SignatureVersion {Version2 | Version4}]
		[-IgnoreCertificate <Boolean>]
		[-NotCheckCredentials <Boolean>]
		[<CommonParameters>]

New-MBSAPIStorageAccountSetting
		-DisplayName <String>
		-Dunkel
		-AccessKey <String>
		-SecretKey <String>
		-UseNativeMultipartUpload <Boolean>
		[-HTTPEnpoint <String>]
		[-HTTPSEndpoint <String>]
		[-SignatureVersion {Version2 | Version4}]
		[-IgnoreCertificate <Boolean>]
		[-NotCheckCredentials <Boolean>]
		[<CommonParameters>]

New-MBSAPIStorageAccountSetting
		-DisplayName <String>
		-GreenQloud
		-AccessKey <String>
		-SecretKey <String>
		-UseNativeMultipartUpload <Boolean>
		[-HTTPEnpoint <String>]
		[-HTTPSEndpoint <String>]
		[-SignatureVersion {Version2 | Version4}]
		[-IgnoreCertificate <Boolean>]
		[-NotCheckCredentials <Boolean>]
		[<CommonParameters>]

New-MBSAPIStorageAccountSetting
		-DisplayName <String>
		-HostEurope
		-AccessKey <String>
		-SecretKey <String>
		-UseNativeMultipartUpload <Boolean>
		[-HTTPEnpoint <String>]
		[-HTTPSEndpoint <String>]
		[-SignatureVersion {Version2 | Version4}]
		[-IgnoreCertificate <Boolean>]
		[-NotCheckCredentials <Boolean>]
		[<CommonParameters>]

New-MBSAPIStorageAccountSetting
		-DisplayName <String>
		-Seeweb
		-AccessKey <String>
		-SecretKey <String>
		-UseNativeMultipartUpload <Boolean>
		[-HTTPEnpoint <String>]
		[-HTTPSEndpoint <String>]
		[-SignatureVersion {Version2 | Version4}]
		[-IgnoreCertificate <Boolean>]
		[-NotCheckCredentials <Boolean>]
		[<CommonParameters>]

New-MBSAPIStorageAccountSetting
		-DisplayName <String>
		-ThinkOn
		-AccessKey <String>
		-SecretKey <String>
		-UseNativeMultipartUpload <Boolean>
		[-HTTPEnpoint <String>]
		[-HTTPSEndpoint <String>]
		[-SignatureVersion {Version2 | Version4}]
		[-IgnoreCertificate <Boolean>]
		[-NotCheckCredentials <Boolean>]
		[<CommonParameters>]

New-MBSAPIStorageAccountSetting
		-DisplayName <String>
		-Tiscali
		-AccessKey <String>
		-SecretKey <String>
		-UseNativeMultipartUpload <Boolean>
		[-HTTPEnpoint <String>]
		[-HTTPSEndpoint <String>]
		[-SignatureVersion {Version2 | Version4}]
		[-IgnoreCertificate <Boolean>]
		[-NotCheckCredentials <Boolean>]
		[<CommonParameters>]

New-MBSAPIStorageAccountSetting
		-DisplayName <String>
		-Walrus
		-AccessKey <String>
		-SecretKey <String>
		-UseNativeMultipartUpload <Boolean>
		[-HTTPEnpoint <String>]
		[-HTTPSEndpoint <String>]
		[-SignatureVersion {Version2 | Version4}]
		[-IgnoreCertificate <Boolean>]
		[-NotCheckCredentials <Boolean>]
		[<CommonParameters>]

New-MBSAPIStorageAccountSetting
		-DisplayName <String>
		-FS
		[-Login <String>]
		[-Pass <String>]
		-Path <String>
		[<CommonParameters>]

New-MBSAPIStorageAccountSetting
		-DisplayName <String>
		-GoogleCloudPlatform
		-ServiceAccountEmail <String>
		-BinaryKeyAsBase64 <String>
		-ProjectID <String>
		[<CommonParameters>]

New-MBSAPIStorageAccountSetting
		-DisplayName <String>
		-Wasabi
		-AccessKey <String>
		-SecretKey <String>
		[<CommonParameters>]

New-MBSAPIStorageAccountSetting
		-DisplayName <String>
		-Minio
		-AccessKey <String>
		-SecretKey <String>
		[-HTTPEnpoint <String>]
		[-HTTPSEndpoint <String>]
		[-IgnoreCertificate <Boolean>]
		[-NotCheckCredentials <Boolean>]
		[<CommonParameters>]





```

***

## Description

Returns StorageAccountSetting type object

***

## Examples


### Example 1: Create Minio storage account settings    

```
PS C:\> New-MBSAPIStorageAccountSetting -Minio -DisplayName 'Minio Storage' -AccessKey OIUERJKHF637623KJH87 -SecretKey EWRYERYHJNBDFMNB -HTTPEnpoint https://MINIOSERVER:PORT -IgnoreCertificate $true -NotCheckCredentials $false
```
 
### Example 2: Create Amazon S3 storage account settings    

```
PS C:\> New-MBSAPIStorageAccountSetting -AmazonS3 -DisplayName 'Amazon S3' -AccessKey ACCESS_KEY -SecretKey SECRET_KEY -IsGovCloud $false
```
 
### Example 3: Create Azure storage account settings    

```
PS C:\> New-MBSAPIStorageAccountSetting -Azure -DisplayName 'Azure Storage' -AccountName ACCOUNT_NAME -SharedKey SHARED_KEY
```


***

## Parameters

>**-DisplayName** 

Storage account display name
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-AmazonS3** 

Specify for Amazon S3 storage settings
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | true | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-AmazonS3China** 

Specify for Amazon S3 China storage settings
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | true | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Azure** 

Specify for Azure storage settings
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | true | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-OpenStack** 

Specify for OpenStack storage settings
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | true | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-OracleCloud** 

Specify for OracleCloud storage settings
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | true | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-S3Compatible** 

Specify for S3Compatible storage settings
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | true | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Scality** 

Specify for Scality storage settings
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | true | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-CenturyLink** 

Specify for CenturyLink storage settings
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | true | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ArubaCloud** 

Specify for ArubaCloud storage settings
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | true | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-BackblazeB2** 

Specify for Backblaze B2 storage settings
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | true | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Cloudian** 

Specify for Cloudian storage settings
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | true | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Connectria** 

Specify for Connectria storage settings
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | true | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Constant** 

Specify for Constant storage settings
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | true | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-DreamObjects** 

Specify for DreamObjects storage settings
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | true | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Dunkel** 

Specify for Dunkel storage settings
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | true | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-GreenQloud** 

Specify for GreenQloud storage settings
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | true | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-HostEurope** 

Specify for HostEurope storage settings
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | true | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Seeweb** 

Specify for Seeweb storage settings
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | true | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ThinkOn** 

Specify for ThinkOn storage settings
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | true | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Tiscali** 

Specify for Tiscali storage settings
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | true | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Walrus** 

Specify for Walrus storage settings
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | true | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-FS** 

Specify for file system storage settings
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | true | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-GoogleCloudPlatform** 

Specify for Google Cloud Platform settings
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | true | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Wasabi** 

Specify for Wasabi settings
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | true | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Minio** 

Specify for Minio settings
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | true | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ServiceAccountEmail** 

Service Account Email
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-BinaryKeyAsBase64** 

Binary Key as Base64 string
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ProjectID** 

Project ID
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-AccountName** 

Account name
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-SharedKey** 

Shared key
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Login** 

User Login
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Pass** 

User Password
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Path** 

Path to local or shared folder
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-AccessKey** 

Access key
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-SecretKey** 

Secret key
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-IsGovCloud** 

Gov Cloud. Required only Amazon S3
        
|       |     |
|-------|-----|
| Type | Boolean |
| Required: | true | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-UseNativeMultipartUpload** 

Use Native Multipart Upload. Required for Aruba Cloud, Backblaze B2, Connectria, Constant, DreamObjects, Dunkel, GreenQloud, HostEurope, Seeweb, ThinkOn, Tiscali and Walrus accounts
        
|       |     |
|-------|-----|
| Type | Boolean |
| Required: | true | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-HTTPEnpoint** 

HTTP endpoint
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-HTTPSEndpoint** 

HTTPS endpoint
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-SignatureVersion** 

Signature version. Required for S3Compatible accounts
        
|       |     |
|-------|-----|
| Type | SignatureVersion |
| Required: | false | 
| Position: | named |
| Default value: | 2 |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-IgnoreCertificate** 

Ignore SSL certificate
        
|       |     |
|-------|-----|
| Type | Boolean |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-NotCheckCredentials** 

Do not check credentials (no public access)
        
|       |     |
|-------|-----|
| Type | Boolean |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-UserName** 

User name
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ApiKey** 

Api Key
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-AuthService** 

Authentication service
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-KeyStoneVersion** 

Keystone version
        
|       |     |
|-------|-----|
| Type | KeyStoneType |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-TenantType** 

Tenant Type. Required for Key stone version 2
        
|       |     |
|-------|-----|
| Type | OpenStackType |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Tenant** 

Tenant
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-UseInternalURLs** 

Use internal URLs. Required for Key stone version 2 and 3
        
|       |     |
|-------|-----|
| Type | Boolean |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-DomainType** 

Domain Type. Required for Key stone version 3
        
|       |     |
|-------|-----|
| Type | OpenStackType |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Domain** 

Domain. Required for Key stone version 3
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-UseScope** 

Use scope. Required for Key stone version 3
        
|       |     |
|-------|-----|
| Type | Boolean |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ProjectType** 

Project type. Required for Key stone version 3 and if UseScope is true
        
|       |     |
|-------|-----|
| Type | OpenStackType |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Project** 

Project. Required for Key stone version 3 and if UseScope is true
        
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



None



## Outputs



MBS.API.StorageAccountSetting


## Notes

Author: MSP360 Onboarding Team




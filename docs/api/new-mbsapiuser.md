---
Title: New-MBSAPIUser
HeadTitle: New-MBSAPIUser
Meta: 'New-MBSAPIUser'
RedirectUrl: ''
---
# New-MBSAPIUser
***

Creates MBS backup user.

```

New-MBSAPIUser
		[-Email] <String>
		[[-FirstName] <String>]
		[[-LastName] <String>]
		[[-NotificationEmails] <String[]>]
		[[-Company] <String>]
		[[-Enabled] <Boolean>]
		[-Password] <SecureString>
		[[-DestinationList] <Array>]
		[[-SendEmailInstruction] <Boolean>]
		[[-LicenseManagementMode] <Int32>]
		[[-ProfileName] <String>]
		[<CommonParameters>]





```

***

## Description

Calls POST request to [https://api.mspbackups.com/api/Users](https://api.mspbackups.com/api/Users).

***

## Examples


### Example 1: AccountID = "7cf9cbfe-504c-43ca-9a61-ef2f69f8ee91"
    Destination = "cblalexv"
    PackageID = 64130
},@{
    AccountID = "bdb27298-c831-4be9-ae47-e35a38debacb"
    Destination = "cblalexv"
    PackageID = 64130
})
PS C:\> New-MBSAPIUser -Email TestUser -FirstName "My" -LastName "User" -NotificationEmails User@contoso.com -Company Contoso -Enabled $true -Password (ConvertTo-SecureString -Force -asplaintext 'test1341343') -DestinationList $MyDestinationList -SendEmailInstruction $true -LicenseManagementMode 0 -ProfileName Profile

Create new MBS backup user.    

```
PS C:\> $MyDestinationList = @(@{
```


***

## Parameters

>**-Email** 

Backup user login name.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | 1 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-FirstName** 

Backup user first name.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 2 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-LastName** 

Backup user last name.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 3 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-NotificationEmails** 

Backup user notification emails.
        
|       |     |
|-------|-----|
| Type | String[] |
| Required: | false | 
| Position: | 4 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Company** 

Company name.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 5 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Enabled** 

Backup user status. Specify $false or $true.
        
|       |     |
|-------|-----|
| Type | Boolean |
| Required: | false | 
| Position: | 6 |
| Default value: | True |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Password** 

Backup user password. Use (ConvertTo-SecureString -Force -asplaintext 'test1341343')
        
|       |     |
|-------|-----|
| Type | SecureString |
| Required: | true | 
| Position: | 7 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-DestinationList** 

Array of the backup storage destination collection JSON. Get more [https://mspbackups.com/Admin/Help/mbs-api-specification/methods/post-apiusers/destinationfornewuser](https://mspbackups.com/Admin/Help/mbs-api-specification/methods/post-apiusers/destinationfornewuser)
        
|       |     |
|-------|-----|
| Type | Array |
| Required: | false | 
| Position: | 8 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-SendEmailInstruction** 

Send instructions to notification emails for user.
        
|       |     |
|-------|-----|
| Type | Boolean |
| Required: | false | 
| Position: | 9 |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-LicenseManagementMode** 

Licensing mode. Get more [https://mspbackups.com/Admin/Help/mbs-api-specification/methods/post-apiusers/usermodetype](https://mspbackups.com/Admin/Help/mbs-api-specification/methods/post-apiusers/usermodetype)
        
|       |     |
|-------|-----|
| Type | Int32 |
| Required: | false | 
| Position: | 10 |
| Default value: | 0 |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ProfileName** 

Profile name used with MSP360 PowerShell for MBS API (set via Set-MBSApiCredential)
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 11 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |



>**CommonParameters**

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see [about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216). 


## Inputs



None



## Outputs



String


## Notes

Author: MSP360 Onboarding Team




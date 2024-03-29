---
Title: Import-MBSAPIUser
HeadTitle: Import-MBSAPIUser
Meta: 'Import-MBSAPIUser'
RedirectUrl: ''
---
# Import-MBSAPIUser
***

Import users from CSV file to MBS via API 2.0

```

Import-MBSAPIUser
		[[-UserFile] <String>]
		[-GeneratePassword]
		[-Force]
		[[-ProfileName] <String>]
		[<CommonParameters>]





```

***

## Description

The cmdlet imports users from CSV file to MBS via API 2.0. For more information, see [https://kb.msp360.com/managed-backup-service/add-users-and-companies-to-MBS-in-bulk](https://kb.msp360.com/managed-backup-service/add-users-and-companies-to-MBS-in-bulk)

***

## Examples


### Example 1: Imports users from file "Users.csv" in current folder. If no password specified for user in CSV file, it will be generated.    

```
PS C:\> Import-MBSAPIUser -GeneratePassword
```
 
### Example 2: Imports users from file "D:\Users.csv" to MBS. In case of errors, only users with correct information will be imported.    

```
PS C:\> Import-MBSAPIUser -UserFile "D:\Users.csv" -Force
```


***

## Parameters

>**-UserFile** 

Specify user csv file path. The script uses .\Users.csv by default.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 1 |
| Default value: | "$((Get-Location).Path)\Users.csv" |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-GeneratePassword** 

Generate random password (8 symbols long) for users with blank password fields.
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Force** 

Import users without errors from CSV file. By default, in case of any errors in CSV file no users will be imported.
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ProfileName** 

Profile name used with MSP360 PowerShell for MBS API (set via Set-MBSApiCredential)
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 2 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |



>**CommonParameters**

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see [about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216). 


## Inputs



None



## Outputs



None


## Notes

Author: MSP360 Onboarding Team




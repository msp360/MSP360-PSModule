---
Title: Import-MBSUsers
HeadTitle: Import-MBSUsers
Meta: 'Import-MBSUsers'
RedirectUrl: ''
---
# Import-MBSUsers
***

The cmdlet imports users from CSV file to MBS via API 2.0

```

Import-MBSUsers
		[-APIlogin] <String>
		[-APIpassword] <String>
		[[-LogFilePath] <String>]
		[[-UserFile] <String>]
		[<CommonParameters>]





```

***

## Description

The cmdlet imports users from CSV file to MBS via API 2.0

***

## Examples


### Example 1:     

```
PS C:\> .\Import-Users.ps1 -APIlogin VFBB634wKpHQ -APIpassword ggH9ng6ertrB445BPDQQwU3
```
 
### Example 2:     

```
PS C:\> .\Import-Users.ps1 -APIlogin VFBB634wKpHQ -APIpassword ggH9ng6ertrB445BPDQQwU3 -UserFile Users.csv -LogFilePath Mylog.txt
```


***

## Parameters

>**-APIlogin** 

Mandatory parameter. Specify MSB API login name. You can generate new one in General settings [https://mspbackups.com/Admin/Settings.aspx](https://mspbackups.com/Admin/Settings.aspx)
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | 1 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-APIpassword** 

Mandatory parameter. Specify MSB API password. You can generate new one in General settings [https://mspbackups.com/Admin/Settings.aspx](https://mspbackups.com/Admin/Settings.aspx)
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | 2 |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-LogFilePath** 

Optional parameter. Specify log file path. The script uses \api.log by default.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 3 |
| Default value: | api.log |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-UserFile** 

Optional parameter. Specify user csv file path. The script uses \Users.csv by default.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | 4 |
| Default value: | Users.csv |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |



>**CommonParameters**

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see [about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216). 













## Notes

Author: MSP360 Onboarding Team




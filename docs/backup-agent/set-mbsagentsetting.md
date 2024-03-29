---
Title: Set-MBSAgentSetting
HeadTitle: Set-MBSAgentSetting
Meta: 'Set-MBSAgentSetting'
RedirectUrl: ''
---
# Set-MBSAgentSetting
***

Change MBS backup agent options

```

Set-MBSAgentSetting
		[-Edition <String>]
		[-Bandwidth <String>]
		[-Proxy <String>]
		[-ProxyAddress <String>]
		[-ProxyPort <Int32>]
		[-ProxyAuthentication <Nullable`1>]
		[-ProxyDomain <String>]
		[-ProxyUser <String>]
		[-ProxyPassword <String>]
		[-ChunkSize <Int32>]
		[-ThreadCount <Int32>]
		[-Purge <String>]
		[-DelayPurge <String>]
		[-Keep <String>]
		[-HistoryPurge <String>]
		[-HistoryLimit <String>]
		[-Logging <String>]
		[-RepositoryLocation <String>]
		[-IgnoreSSLValidation <Nullable`1>]
		[-MasterPassword <SecureString>]
		[<CommonParameters>]

Set-MBSAgentSetting
		-MasterPassword <SecureString>
		-DisableMasterPassword
		[<CommonParameters>]

Set-MBSAgentSetting
		-MasterPassword <SecureString>
		-OldMasterPassword <SecureString>
		[-ProtectCLI <Nullable`1>]
		-ConfirmMasterPassword <SecureString>
		[<CommonParameters>]

Set-MBSAgentSetting
		-MasterPassword <SecureString>
		[-ProtectCLI <Nullable`1>]
		-ConfirmMasterPassword <SecureString>
		[<CommonParameters>]

Set-MBSAgentSetting
		-MasterPassword <SecureString>
		-ProtectCLI <Nullable`1>
		[<CommonParameters>]





```

***

## Description

Change MBS backup agent options

***

## Examples


### Example 1: Change backup agent edition to "Server".    

```
PS C:\> Set-MBSAgentSetting -Edition baremetal
```
 
### Example 2: Set thread count to 10.    

```
PS C:\> Set-MBSAgentSetting -ThreadCount 10
```
 
### Example 3: Change default retention policy to keep 5 versions and set logging level to high.    

```
PS C:\> Set-MBSAgentSetting -Keep 5 -Logging high
```
 
### Example 4: Enable CLI protection with master passowrd if it is already enabled for GUI    

```
PS C:\> Set-MBSAgentSetting -ProtectCLI $true -MasterPassword (ConvertTo-SecureString -string "12345" -AsPlainText -Force)
```
 
### Example 5: Set master password protection for CLI and GUI.    

```
PS C:\> Set-MBSAgentSetting -ProtectCLI $true -MasterPassword (ConvertTo-SecureString -string "12345" -AsPlainText -Force) -ConfirmMasterPassword (ConvertTo-SecureString -string "12345" -AsPlainText -Force)
```
 
### Example 6: Disable GUI/CLI master password protection    

```
PS C:\> Set-MBSAgentSetting -DisableMasterPassword -MasterPassword (ConvertTo-SecureString -string "12345" -AsPlainText -Force)
```


***

## Parameters

>**-Edition** 

Specify backup agent edition
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Accepted values: |  filebackup, desktop, baremetal, Server, mssql, msexchange, mssqlexchange, ultimate, vmedition  |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Bandwidth** 

Bandwidth for a plan. Possible values: u(unlimited), value in kB
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Proxy** 

Proxy type. Possible values: no, auto, manual
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Accepted values: |  no, auto, manual  |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ProxyAddress** 

Proxy address
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ProxyPort** 

Proxy port
        
|       |     |
|-------|-----|
| Type | Int32 |
| Required: | false | 
| Position: | named |
| Default value: | 0 |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ProxyAuthentication** 

Proxy authentication
        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ProxyDomain** 

Proxy domain
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ProxyUser** 

Proxy user
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ProxyPassword** 

Proxy password
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ChunkSize** 

Specify chunk size in KBs. Possible values: 1024-5242880
        
|       |     |
|-------|-----|
| Type | Int32 |
| Required: | false | 
| Position: | named |
| Default value: | 0 |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ThreadCount** 

Thread count. Possible values: 1-99
        
|       |     |
|-------|-----|
| Type | Int32 |
| Required: | false | 
| Position: | named |
| Default value: | 0 |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Purge** 

Purge versions that are older than period (except lastest version). Possible values: no, 1d(day), 1w(week), 1m(month)
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-DelayPurge** 

Specify purge delay. Possible values: no, 1d(day), 1w(week), 1m(month)
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Keep** 

Keep limited number of versions. Possible values: all, number
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-HistoryPurge** 

Purge history records that are older than value. Possible values: no, 1d(day), 1w(week), 1m(month)
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-HistoryLimit** 

Keep limited number of records in history. Possible values: all, number
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Logging** 

Logging level.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Accepted values: |  no, low, high, debug  |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-RepositoryLocation** 

Change database location. By default database is located in user profile. Database will be moved to specified directory for saving space on system drive or other reasons
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-IgnoreSSLValidation** 

Ignore SSL validation
        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
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

 >**-OldMasterPassword** 

Old (current) master password. Should be specified when changing existing master password with -MasterPassword and -ConfirmMasterPassword parameters. Use -OldMasterPassword (ConvertTo-SecureString -string "Your_Password" -AsPlainText -Force)
        
|       |     |
|-------|-----|
| Type | SecureString |
| Required: | true | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ProtectCLI** 

Use master password to protect CLI
        
|       |     |
|-------|-----|
| Type | Nullable`1 |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ConfirmMasterPassword** 

Confirm master password. Use -ConfirmMasterPassword (ConvertTo-SecureString -string "Your_Password" -AsPlainText -Force)
        
|       |     |
|-------|-----|
| Type | SecureString |
| Required: | true | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-DisableMasterPassword** 

Disable GUI/CLI master password protection
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | true | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |



>**CommonParameters**

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see [about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216). 


## Inputs



None



## Outputs



System.String[]


## Notes

Author: MSP360 Onboarding Team




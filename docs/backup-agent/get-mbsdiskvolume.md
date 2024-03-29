---
Title: Get-MBSDiskVolume
HeadTitle: Get-MBSDiskVolume
Meta: 'Get-MBSDiskVolume'
RedirectUrl: ''
---
# Get-MBSDiskVolume
***

Lists disk volumes

```

Get-MBSDiskVolume
		[-All]
		[-MasterPassword <SecureString>]
		[<CommonParameters>]

Get-MBSDiskVolume
		-Supported
		[-MasterPassword <SecureString>]
		[<CommonParameters>]

Get-MBSDiskVolume
		-DiskID <Guid>
		[-MasterPassword <SecureString>]
		[<CommonParameters>]

Get-MBSDiskVolume
		-SystemRequired
		[-MasterPassword <SecureString>]
		[<CommonParameters>]





```

***

## Description

Gets the information about all disks on the current computer.

***

## Examples


### Example 1: Lists all supported volumes.    

```
PS C:\> Get-MBSDiskVolume -Supported
```
 
### Example 2: Lists all disk volumes.    

```
PS C:\> Get-MBSDiskVolume
```
 
### Example 3: Lists system required volumes.    

```
PS C:\> Get-MBSDiskVolume -SystemRequired
```
 
### Example 4: Lists volumes for the disk with DiskID "3708e400-2aa4-4991-bdd8-23bf9eec6529".    

```
PS C:\> Get-MBSDiskVolume -DiskID 3708e400-2aa4-4991-bdd8-23bf9eec6529
```


***

## Parameters

>**-All** 

List all disk volumes.
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-Supported** 

List only supported volumes.
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | true | 
| Position: | named |
| Default value: | False |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-DiskID** 

List volumes for the specific disk.
        
|       |     |
|-------|-----|
| Type | Guid |
| Required: | true | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-SystemRequired** 

Lists only system required volumes.
        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | true | 
| Position: | named |
| Default value: | False |
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



>**CommonParameters**

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see [about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216). 


## Inputs



None.



## Outputs



System.Collections.Generic.List[MBS.Agent.IBBDisk]
System.Management.Automation.PSCustomObject


## Notes

Author: MSP360 Onboarding Team




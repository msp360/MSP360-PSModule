---
Title: Get-MBSAPIBilling
HeadTitle: Get-MBSAPIBilling
Meta: 'Get-MBSAPIBilling'
RedirectUrl: ''
---
# Get-MBSAPIBilling
***

Get Billing information for current month

```

Get-MBSAPIBilling
		[-NoFilterOutput]
		[-ProfileName <String>]
		[<CommonParameters>]

Get-MBSAPIBilling
		-UserID <String>
		[-Date <String>]
		[-ProfileName <String>]
		[<CommonParameters>]

Get-MBSAPIBilling
		-CompanyName <String>
		[-Date <String>]
		[-ProfileName <String>]
		[<CommonParameters>]





```

***

## Description

Calls GET/PUT request to api/Billing or api/Billing/Details

***

## Examples


### Example 1: Get billing details for all users and current month.    

```
PS C:\> Get-MBSAPIBilling -ProfileName profile
```
 
### Example 2: Get billing details for the specified user ID and date.    

```
PS C:\> Get-MBSAPIBilling -UserID bf3206df-ad73-4cdc-96ad-d4e3afa66ebc -ProfileName profile -Date "2020-02-01"
```
 
### Example 3: Get billing details for the specified company and current month.    

```
PS C:\> Get-MBSAPIBilling -CompanyName "APITest" -ProfileName profile
```


***

## Parameters

>**-UserID** 

Specify to filter output by backup user ID.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | true (ByValue, ByPropertyName) |
| Accept wildcard characters: | false |

 >**-CompanyName** 

Specify to filter output by backup Company name.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | true | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | true (ByValue, ByPropertyName) |
| Accept wildcard characters: | false |

 >**-Date** 

Billing date. Date format "yyyy-MM-dd". If empty or not specified, MBS will set current month.
        
|       |     |
|-------|-----|
| Type | String |
| Required: | false | 
| Position: | named |
| Default value: |  |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-NoFilterOutput** 


        
|       |     |
|-------|-----|
| Type | SwitchParameter |
| Required: | false | 
| Position: | named |
| Default value: | True |
| Accept pipeline input: | false |
| Accept wildcard characters: | false |

 >**-ProfileName** 

Profile name used with MSP360 PowerShell for MBS API (set via Set-MBSApiCredential)
        
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



System.Management.Automation.PSCustomObject
String



## Outputs



System.Management.Automation.PSCustomObject


## Notes

Author: MSP360 Onboarding Team




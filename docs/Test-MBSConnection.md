# Test-MBSConnection
***

TCP port connection test to MBS servers

```

Test-MBSConnection
		[<CommonParameters>]





```

***

## Description

Connection test allows you to check connection from your computer to MBS servers. Connection failing indicates firewall misconfiguration.

***

## Examples


### Example 1: Running connection test to MBS. It will take up to 5 minutes. Please wait...
Testing connection to  52.6.7.137 : 443 : OK
Testing connection to  52.5.40.159 : 443 : OK
Testing connection to  52.20.40.101 : 443 : OK
Testing connection to  3.216.171.162 : 443 : OK
Testing connection to  3.216.236.203 : 443 : OK
Connection test is completed    

```
PS C:\> Test-MBSConnection
```


***

## Parameters



>**CommonParameters**

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see        [about_CommonParameters] (https://go.microsoft.com/fwlink/?LinkID=113216). 


## Inputs



None



## Outputs



System.String[]


## Notes

Author: Alex Volkov




<img src="https://www.msp360.com/img/pages/company/downloads/msp360-logo.png?v=2" alt="drawing" width="200"/>

# MSP360 PowerShell Module

First step before using our PowerShell Module is installing it in your system. Below you can find instructions for doing so.  

> **_NOTE:_** You can find the current version of your PowerShell by running this command:
>
> **Get-Host | Select version**

## For Powershell version 3.0 - 5.1 and above

Open PS console with an Administrator account and run this command.

```powershell
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
iex ((New-Object System.Net.WebClient).DownloadString('https://git.io/JUSAA')+'Install-MSP360Module')
```

## For Powershell version 2.0

For Powershell with version below we suggest [updating](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-windows-powershell?view=powershell-6) to the most recent version.

## Additional steps

At some step, you also may be required to allow "RemoteSigned" execution policy by running the following command.

```powershell
Set-ExecutionPolicy RemoteSigned
```

Use the following command to load module.

```powershell
Import-Module -Name msp360
```

## Examples

Here is an example of a couple of popular requests to start working with our PowerShell module:

```powershell
Get-Command -Module msp360
```

![](https://kb.msp360.com/content/images/6db1cd2e-5de3-4bd1-b3b2-1aa69be0d0a9.PNG)

```powershell
Get-Help Start-MBSBackupPlan
```

![](https://kb.msp360.com/content/images/e8d1e88d-146e-41fe-b3a7-68d6deeb0270.png)

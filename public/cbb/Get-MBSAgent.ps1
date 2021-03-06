function Get-MBSAgent {
    <#
    .SYNOPSIS
        Get MBS agent parameters
    .DESCRIPTION
        Gets the information about MBS agent settings, paths, etc. The function pulls the registry values of the installed MBS backup agent and parses additional values.
        The properties from registry path UninstallKey are fetched dynamically. If the software will add new keys, they can be listed by the function.
    .EXAMPLE
        Get-MBSAgent

        Lists all of the parameters on the system into an object
    .INPUTS
        None.
    .OUTPUTS
        System.Management.Automation.PSCustomObject
    .NOTES
        Author: Andrew Anushin
    .LINK
        https://kb.msp360.com/managed-backup-service/powershell-module/cmdlets/get-mbsagent
    #>
    
    [CmdletBinding()]
    param (
    
    )
        
    if ($null -eq ((Get-ItemProperty -Path "Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{07BCB989-197A-4E3D-852D-DE8363860401}" -Name "UninstallKey" -ErrorAction SilentlyContinue).'UninstallKey')) {
        Write-Error "ERROR: MSP360 Online backup agent is not installed on this machine."
        return $false
    }

    $UninstallKey = (Get-ItemProperty -Path "Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{07BCB989-197A-4E3D-852D-DE8363860401}" -Name "UninstallKey")."UninstallKey"
    $UninstallPath = Get-ItemProperty -Path "Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{07BCB989-197A-4E3D-852D-DE8363860401}"
    $FullPath = (Get-ItemProperty -Path "Registry::HKEY_LOCAL_MACHINE\$UninstallKey" -Name "(default)")."(default)"
    $RegistryEntries = Get-ItemProperty -Path "Registry::HKEY_LOCAL_MACHINE\$UninstallKey"
    $HID = (Get-ItemProperty -Path "Registry::HKEY_CLASSES_ROOT\CLSID\{BA3D137D-C8B4-4e54-BAD8-35BC178821D9}" -Name "id")."id"
    $CBBPath = $FullPath.Substring(0, $FullPath.LastIndexOf('\'))
    $CBBName = $FullPath.Substring($CBBPath.Length+1) -replace ".{4}$"
    $CBBCompany = $RegistryEntries.Publisher
    $CBBCLIPath = $CBBPath+"\cbb.exe"
    
    if (Test-Path -Path "$env:ProgramData\Online Backup\enginesettings.list") {
        $CBBProgramData = "$env:ProgramData\Online Backup"
    }
    elseif (Test-Path -Path "$env:ProgramData\$CBBCompany\enginesettings.list") {
        $CBBProgramData = "$env:ProgramData\$CBBCompany"
    } else {
        $CBBProgramData = ""
    }

    $MBSAgent = New-Object -TypeName psobject
    $MBSAgent | Add-Member -MemberType NoteProperty -Name UninstallKey -Value $UninstallKey
    $UninstallPath | Get-Member -MemberType NoteProperty | ForEach-Object {
        if (($_.Name -ne "UninstallKey") -And ($_.Name -ne "(default)") -And ($_.Name -ne "PSChildName") -And ($_.Name -ne "PSParentPath") -And ($_.Name -ne "PSPath") -And ($_.Name -ne "PSProvider")) {
            $PropertyName = $_.Name
            $MBSAgent | Add-Member -MemberType NoteProperty -Name $PropertyName -Value $UninstallPath.$PropertyName
        }
    }
    $MBSAgent | Add-Member -MemberType NoteProperty -Name FullPath -Value $FullPath
    $RegistryEntries | Get-Member -MemberType NoteProperty | ForEach-Object {
        if (($_.Name -ne "(default)") -And ($_.Name -ne "PSChildName") -And ($_.Name -ne "PSParentPath") -And ($_.Name -ne "PSPath") -And ($_.Name -ne "PSProvider")) {
            $PropertyName = $_.Name
            $MBSAgent | Add-Member -MemberType NoteProperty -Name $PropertyName -Value $RegistryEntries.$PropertyName
        }
    }
    $MBSAgent | Add-Member -MemberType NoteProperty -Name HID -Value $HID
    $MBSAgent | Add-Member -MemberType NoteProperty -Name CBBPath -Value $CBBPath
    $MBSAgent | Add-Member -MemberType NoteProperty -Name CBBName -Value $CBBName
    $MBSAgent | Add-Member -MemberType NoteProperty -Name CBBCLIPath -Value $CBBCLIPath
    $MBSAgent | Add-Member -MemberType NoteProperty -Name CBBProgramData -Value $CBBProgramData
    
    return $MBSAgent
}

Set-Alias gma Get-MBSAgent
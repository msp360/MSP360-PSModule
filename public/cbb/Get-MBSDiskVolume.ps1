function Get-MBSDiskVolume {
    <#
    .SYNOPSIS
    Lists disk volumes 
    
    .DESCRIPTION
    Gets the information about all disks on the current computer.
    
    .PARAMETER All
    List all disk volumes.
    
    .PARAMETER Supported
    List only supported volumes.
    
    .PARAMETER DiskID
    List volumes for the specific disk.
    
    .PARAMETER SystemRequired
    Lists only system required volumes.
    
    .PARAMETER MasterPassword
    Master password. Should be specified if configuration is protected by master password. Use -MasterPassword (ConvertTo-SecureString -string "Your_Password" -AsPlainText -Force)
    
    .EXAMPLE
    PS C:\> Get-MBSDiskVolume -Supported

    Lists all supported volumes.

    .EXAMPLE
    PS C:\> Get-MBSDiskVolume

    Lists all disk volumes. 
    
    .EXAMPLE
    PS C:\> Get-MBSDiskVolume -SystemRequired

    Lists system required volumes.
    
    .EXAMPLE
    PS C:\> Get-MBSDiskVolume -DiskID 3708e400-2aa4-4991-bdd8-23bf9eec6529

    Lists volumes for the disk with DiskID "3708e400-2aa4-4991-bdd8-23bf9eec6529".
    
    .INPUTS
    None.

    .OUTPUTS
    System.Management.Automation.PSCustomObject

    .NOTES
    Author: Ivan Skorin

    .LINK
    https://kb.msp360.com/managed-backup-service/powershell-module/cmdlets/backup-agent/get-mbsdiskvolume/
    #>
    [CmdletBinding(DefaultParameterSetName='AllVolumes')]
    param (
        # Parameter - List all disk volumes
        [Parameter(Mandatory=$false, HelpMessage="Lists all volumes", ParameterSetName='AllVolumes')]
        [switch]
        $All,
        # Parameter - List only supported volumes
        [Parameter(Mandatory=$true, HelpMessage="Lists only supported volumes", ParameterSetName='SupportedVolumes')]
        [switch]
        $Supported,
        # Parameter - List volumes for the specific disk
        [Parameter(Mandatory=$true, HelpMessage="Lists the volumes of the disk with that ID", ParameterSetName='DiskID')]
        [Guid]
        $DiskID,
        # Parameter - Lists only system required volumes
        [Parameter(Mandatory=$true, HelpMessage="Lists only system required volumes", ParameterSetName='SystemRequired')]
        [switch]
        $SystemRequired,
        # Parameter - Master password
        [Parameter(Mandatory=$false, HelpMessage="Specify Master password. Use -MasterPassword (ConvertTo-SecureString -string ""Your_Password"" -AsPlainText -Force)")]
        [SecureString]
        $MasterPassword
    )
    
    begin {
        if (-not($CBB = Get-MBSAgent)) {
            Break
        }
        try {
            if ((Get-MBSAgentSetting -ErrorAction SilentlyContinue).MasterPassword -ne "" -and $null -ne (Get-MBSAgentSetting -ErrorAction SilentlyContinue).MasterPassword -and -not $MasterPassword) {
                $MasterPassword = Read-Host Master Password -AsSecureString
            }
        }
        catch {
            
        }
    }
    
    process {
        $Arguments = " listDiskVolumes"
        switch ($PSCmdlet.ParameterSetName) {
            'AllVolumes' {  $Arguments += " -a" }
            'SupportedVolumes' { $Arguments += " -s" }
            'DiskID' { $Arguments += " -d $DiskID" }
            'SystemRequired' {  $Arguments += " -r" }
            Default {}
        }
        $result = Start-MBSProcess -cmdpath $CBB.CBBCLIPath -cmdarguments $Arguments -output json -MasterPassword $MasterPassword
        if ($result.Result -eq "Success") {
            $result.Disks
        }
    }
    
    end {
        
    }
}
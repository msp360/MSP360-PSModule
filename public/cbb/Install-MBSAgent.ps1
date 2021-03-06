function Install-MBSAgent {
    <#
    .SYNOPSIS
        Install MBS backup agent on a local machine
    .DESCRIPTION
        Cmdlet installs MBS backup agent on a local machine
    .EXAMPLE
        PS C:\> Install-MBSAgent -URL https://s3.amazonaws.com/cb_setups/MBS/XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXX/CompanyName_vX.X.X.XX.exe
        Install the MBS backup agent.
    .EXAMPLE
        PS C:\> Install-MBSAgent -URL https://s3.amazonaws.com/cb_setups/MBS/XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXX/CompanyName_vX.X.X.XX.exe -Force
        Force to reinstall the MBS backup agent.
    .INPUTS
        None
    .OUTPUTS
        String
    .NOTES
        Author: Alex Volkov
    .LINK
        https://kb.msp360.com/managed-backup-service/powershell-module/cmdlets/install-mbsagent
    #>
    [CmdletBinding()]
    param (
        # 
        [Parameter(Mandatory=$true, ValueFromPipelineByPropertyName, ValueFromPipeline=$true, HelpMessage="MBS agent URL. Copy the link from MBS portal in Download section.")]
        [String]
        $URL,
        #
        [Parameter(Mandatory=$false, HelpMessage="Force to reinstall the agent")]
        [switch]
        $Force
    )
    
    begin {

    }
    
    process {
        $TempPath = "$env:TMP"
        $TempFolder = "backup"
        if ($Force) {
            $Folder = New-Item -Path "$TempPath" -Name "$TempFolder" -ItemType "directory" -ErrorAction SilentlyContinue
            (New-Object Net.WebClient).DownloadFile("$URL", "$TempPath\$TempFolder\cbl.exe")
            (Start-MBSProcess -CMDPath "$TempPath\$TempFolder\cbl.exe" -CMDArguments "/S").stdout
            Remove-Item -Path "$TempPath\$TempFolder" -Force -Recurse
        }else{
            if (Get-MBSAgent -ErrorAction SilentlyContinue) 
            {
                return "The backup agent is already installed."
            }else{
                $Folder = New-Item -Path "$TempPath" -Name "$TempFolder" -ItemType "directory"
                (New-Object Net.WebClient).DownloadFile("$URL", "$TempPath\$TempFolder\cbl.exe") 
                (Start-MBSProcess -CMDPath "$TempPath\$TempFolder\cbl.exe" -CMDArguments "/S").stdout
                Remove-Item -Path "$TempPath\$TempFolder" -Force -Recurse
            }
        }
    }
    
    end {

    }
}

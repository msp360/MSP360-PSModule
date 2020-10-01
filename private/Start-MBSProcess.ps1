function Start-MBSProcess {
    <#
    .SYNOPSIS
        Start exe with arguments and get result
    .DESCRIPTION
        Start exe with arguments and get result
    .EXAMPLE
        PS C:\> (Start-MBSProcess -CMDPath (Get-MBSAgent).cbbClipath -CMDArguments "nwclist -s -mp 1234 -json").stdout.replace("Content-Type: application/json; charset=UTF-8","") |ConvertFrom-Json
        
        Errors                        Warnings Result
        ------                        -------- ------
        {Master password is invalid.} {}       Fail  

    .EXAMPLE
        PS C:\> ((Start-MBSProcess -CMDPath (Get-MBSAgent).cbbClipath -CMDArguments "nwclist -s -mp 123 -json").stdout.replace("Content-Type: application/json; charset=UTF-8","") |ConvertFrom-Json).Shares


        Available  Login      Share
        ---------  -----      -----
        Not tested dev\alex.v \\hermes\10tb_share
    .INPUTS
        None
    .OUTPUTS
        PSObject
    .NOTES
        Author: Alex Volkov
    #>

    [CmdletBinding()]
    param (
        [Parameter()]
        [string]
        $CMDPath,
        [Parameter()]
        [string]
        $CMDArguments,
        [Parameter()]
        [ValidateSet("json","short","full","none")]
        [string]
        $Output
    )
    
    begin {
        
    }
    
    process {
        $ProcessStartInfo = New-Object System.Diagnostics.ProcessStartInfo
        $ProcessStartInfo.FileName = $CMDPath
        $ProcessStartInfo.RedirectStandardError = $true
        $ProcessStartInfo.RedirectStandardOutput = $true
        $ProcessStartInfo.UseShellExecute = $false
        switch ($Output) {
            json {$CMDArguments += " -json"}
            short {$CMDArguments += " -output short"}
            full {$CMDArguments += " -output full"}
            Default {}
        }
        Write-Verbose -Message "Arguments: $(((($CMDArguments -replace  '-mp "\w*"','-mp "****"') -replace '-p "\w*"','-p "****"') -replace '-cp "\w*"','-cp "****"') -replace '-c "\w*"','-c "****"')"
        $ProcessStartInfo.Arguments = $CMDArguments
        $Process = New-Object System.Diagnostics.Process
        $Process.StartInfo = $ProcessStartInfo
        $Process.Start() | Out-Null
        $Process.WaitForExit()
        [pscustomobject]@{
            stdout = $Process.StandardOutput.ReadToEnd()
            stderr = $Process.StandardError.ReadToEnd()
            ExitCode = $Process.ExitCode
        }
    }
    
    end {
        
    }
}
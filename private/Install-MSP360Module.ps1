function Install-MSP360Module {
    [CmdletBinding()]
    param (
        [Parameter()]
        [bool]
        $AllowAlpha,
        [Parameter()]
        [string]
        $RequiredVersion
    )

    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
    @(
        @{
            Module = "PackageManagement"
            Version = "1.4.6"
        },
        @{
            Module = "PowerShellGet"
            Version = "2.2.3"
    }) | ForEach-Object -Process {
        if ($Host.Version.Major -lt 5){
            Add-Type -AssemblyName System.IO.Compression.FileSystem -ErrorAction Stop
            if((Get-Module $_.Module -ListAvailable -ErrorAction SilentlyContinue).Version -lt [System.Version]$_.Version){
                (New-Object Net.WebClient).DownloadFile("https://www.powershellgallery.com/api/v2/package/$($_.Module)", "$ENV:TEMP\$($_.Module).zip")
                $Null = New-Item -Path "$ENV:windir\System32\WindowsPowerShell\v1.0\Modules" -Name $_.Module -ItemType "directory" -ErrorAction SilentlyContinue
                [System.IO.Compression.ZipFileExtensions]::ExtractToDirectory(([System.IO.Compression.ZipFile]::Open("$ENV:TEMP\$($_.Module).zip", 'read')), "$ENV:windir\System32\WindowsPowerShell\v1.0\Modules\$($_.Module)")
            }
        }else{
            if((Get-PackageProvider -Name NuGet -ListAvailable -ErrorAction SilentlyContinue).Version -lt [System.Version]"2.8.5.201"){
                $Null = Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force
            }
            if((Get-Module $_.Module -ListAvailable -ErrorAction SilentlyContinue).Version -lt [System.Version]$_.Version){
                $Null = Install-Module -Name $_.Module -MinimumVersion $_.Version -Force -Repository PSGallery
                $Null = Remove-module -Name $_.Module -Force
                $Null = Import-module -Name $_.Module -MinimumVersion $_.Version -Force
            }else{
                $Null = Import-module -Name $_.Module -MinimumVersion $_.Version -Force
            }
        }
    }
    $Null = Import-PackageProvider -Name PowerShellGet -Force -MinimumVersion 2.2
    $ModuleInstallOptions = @{
        Force = $true
    }

    if($AllowAlpha){$ModuleInstallOptions.Add("AllowPrerelease",$true)}
    if($RequiredVersion){$ModuleInstallOptions.Add("RequiredVersion",$RequiredVersion)}

    Install-Module -Name msp360 @ModuleInstallOptions
    Import-Module -Name msp360 -Force
}
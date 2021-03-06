function Get-MBSBackupPlan {
    <#
    .SYNOPSIS
        Get backup plans from MBS backup agent.
    .EXAMPLE
        PS C:\> Get-MBSBackupPlan -StorageType All -PlanType All
        Lists all backup plans
    .EXAMPLE
        PS C:\> Get-MBSBackupPlan -StorageType Local -PlanType All
        Lists only backup plans with a local destination.
    .EXAMPLE
        PS C:\> Get-MBSBackupPlan -StorageType Cloud -PlanType All
        Lists only backup plans with a cloud destination.
    .EXAMPLE
        PS C:\> Get-MBSBackupPlan -StorageType All -PlanType File-Level
        Lists all File-level backup plans.
    .EXAMPLE
        PS C:\> Get-MBSBackupPlan -StorageType All -PlanType Image-Based
        Lists all Image-Based backup plans.
    .EXAMPLE
        PS C:\> Get-MBSBackupPlan -StorageType Local -PlanType Image-Based
        Lists Image-Based backup plans with a local destination.
    .EXAMPLE
        PS C:\> Get-MBSBackupPlan -StorageType All -PlanType All -OutputType Full
        Get extended parameters of all backup plans.
    .INPUTS
        None
    .OUTPUTS
        System.Management.Automation.PSCustomObject
    .NOTES
        Author: Alex Volkov
    .LINK
        https://kb.msp360.com/managed-backup-service/powershell-module/cmdlets/get-mbsbackupplan
    #>
    [CmdletBinding()]
    param (
        #
        [Parameter(Mandatory=$false, HelpMessage="Backup destination storage type.")]
        [ValidateSet("All", "Local", "Cloud", "Hybrid")]
        [string]
        $StorageType = "All",
        #
        [Parameter(Mandatory=$false, HelpMessage="Backup plan type.")]
        [ValidateSet("All", "File-Level", "Image-Based", "MSSQL","MSExchange","VMware","Hyper-V")]
        [string]
        $PlanType = "All",
        #
        [Parameter(Mandatory=$false, HelpMessage="Backup plan type.")]
        [ValidateSet("Short", "Full", "Raw")]
        [string]
        $OutputType = "Short"
    )

    function Compare-StorageTypes {
        param (
            $Account,
            [string]$StorageType
        )

        $result = $false
        switch -exact ($StorageType) {
            "All" {$result = $true}
            "Cloud" { 
                if($Account.SGCloudTypeValue -ne "FileSystemConnection" -and $Account.SGCloudTypeValue -ne "PhysicalFile" -and $BackupPlan.BasePlan.HybridID -eq "00000000-0000-0000-0000-000000000000"){
                    $result = $true 
                }else {
                    $result = $false
                }
            }
            "Local" {
                if($Account.Type -eq "FileSystemConnection" -or $Account.SGCloudTypeValue -eq "PhysicalFile"){
                    $result = $true 
                }else {
                    $result = $false
                }
            }
            "Hybrid" {
                if ($BackupPlan.BasePlan.HybridID -ne "00000000-0000-0000-0000-000000000000") {
                    $result = $true 
                }else {
                    $result = $false
                }
            }
            Default {}
        }
        return $result
    }

    if (Get-MBSAgent -ErrorAction SilentlyContinue) {
        Write-Verbose -Message "$($PSCmdlet.MyInvocation.MyCommand.Name): Arguments: -StorageType $StorageType -PlanType $PlanType"
        $CBBProgramData = (Get-MBSAgent).CBBProgramData

        $BackupPlansArray = @()
        foreach ($_ in (Get-ChildItem ("$CBBProgramData\*.cbb")  -ErrorAction SilentlyContinue)){ 
            if (Get-Content $_.FullName){
                $BackupPlan = [xml](Get-Content ($_.FullName))
                switch ($PlanType) {
                    All 
                    { 
                        if ($BackupPlan.BasePlan.type -notlike "*Restore*" -and $BackupPlan.BasePlan.type -ne "ConsistencyCheckPlan"){
                            if(Compare-StorageTypes -Account (Get-MBSStorageAccount -ID $BackupPlan.BasePlan.ConnectionID) -StorageType $StorageType){
                                $BackupPlansArray += Convert-XMLtoPSObject $BackupPlan.BasePlan
                            }
                        }
                    }
                    File-Level 
                    { 
                        if ($BackupPlan.BasePlan.type -eq "Plan"){
                            if(Compare-StorageTypes -Account (Get-MBSStorageAccount -ID $BackupPlan.BasePlan.ConnectionID) -StorageType $StorageType){
                                $BackupPlansArray += Convert-XMLtoPSObject $BackupPlan.BasePlan
                            }
                        }
                    }
                    Image-Based 
                    {
                        if ($BackupPlan.BasePlan.type -eq "BackupDiskImagePlan") {
                            if(Compare-StorageTypes -Account (Get-MBSStorageAccount -ID $BackupPlan.BasePlan.ConnectionID) -StorageType $StorageType){
                                $BackupPlansArray += Convert-XMLtoPSObject $BackupPlan.BasePlan
                            }
                        }
                    }
                    MSSQL 
                    {
                        if ($BackupPlan.BasePlan.type -eq "BackupDatabasePlan") {
                            if(Compare-StorageTypes -Account (Get-MBSStorageAccount -ID $BackupPlan.BasePlan.ConnectionID) -StorageType $StorageType){
                                $BackupPlansArray += Convert-XMLtoPSObject $BackupPlan.BasePlan
                            }
                        }
                    }
                    MSExchange 
                    {
                        if ($BackupPlan.BasePlan.type -eq "BackupExchangePlan") {
                            if(Compare-StorageTypes -Account (Get-MBSStorageAccount -ID $BackupPlan.BasePlan.ConnectionID) -StorageType $StorageType){
                                $BackupPlansArray += Convert-XMLtoPSObject $BackupPlan.BasePlan
                            }
                        }
                    }
                    VMware 
                    {
                        if ($BackupPlan.BasePlan.type -eq "BackupVirtualMachinesESXiPlan") {
                            if(Compare-StorageTypes -Account (Get-MBSStorageAccount -ID $BackupPlan.BasePlan.ConnectionID) -StorageType $StorageType){
                                $BackupPlansArray += Convert-XMLtoPSObject $BackupPlan.BasePlan
                            }
                        }
                    }
                    Hyper-V 
                    {
                        if ($BackupPlan.BasePlan.type -eq "BackupVirtualMachinesHyperVPlan") {
                            if(Compare-StorageTypes -Account (Get-MBSStorageAccount -ID $BackupPlan.BasePlan.ConnectionID) -StorageType $StorageType){
                                $BackupPlansArray += Convert-XMLtoPSObject $BackupPlan.BasePlan
                            }
                        }
                    }
                    Default {Write-Error -message "Incorrect PlanType parameter"}
                }
            }
        }
        switch ($OutputType) {
            Short {
                $BackupPlansArray = $BackupPlansArray | Select-Object ID, Name, Type, Bucket, ConnectionID, UseEncryption, UseCompression, Items, ExcludedItems, DiskInfo, Schedule, ForceFullSchedule
            }
            Full {
                $BackupPlansArray = $BackupPlansArray | Select-Object -Property * -ExcludeProperty xsd, xsi, Tag
            }
            Raw {
                $BackupPlansArray = $BackupPlansArray | Select-Object *
            }
            Default {Write-Error -message "Incorrect OutputType parameter"}
        }
        return $BackupPlansArray
    }
}

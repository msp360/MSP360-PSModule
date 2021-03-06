function Get-MBSConsistencyCheckPlan {
    <#
    .SYNOPSIS
        Lists consistency check plans.
    .DESCRIPTION
        Lists consistency check plans.
    .EXAMPLE
        PS C:\> Get-MBSConsistencyCheckPlan -StorageType All
        List all consistency checks
    .EXAMPLE
        PS C:\> Get-MBSConsistencyCheckPlan -StorageType Local
        List only consistency checks for local storages
    .EXAMPLE
        PS C:\> Get-MBSConsistencyCheckPlan -StorageType Cloud
        List only consistency checks for cloud storages
    .INPUTS
        None
    .OUTPUTS
        System.Management.Automation.PSCustomObject
    .NOTES
        Author: Alex Volkov
    .LINK
        https://kb.msp360.com/managed-backup-service/powershell-module/cmdlets/get-mbsconsistencycheckplan
    #>
    [CmdletBinding()]
    param (
        #
        [Parameter(Mandatory=$false)]
        [ValidateSet("All", "Local", "Cloud")]
        [string]
        $StorageType = "All"
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
                if($Account.SGCloudTypeValue -ne "FileSystemConnection" -and $Account.SGCloudTypeValue -ne "PhysicalFile"){
                    $result = $true 
                }else {
                    $result = $false
                }
            }
            "Local" {
                if($Account.SGCloudTypeValue -eq "FileSystemConnection" -or $Account.SGCloudTypeValue -eq "PhysicalFile"){
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
        $CBBProgramData = (Get-MBSAgent).CBBProgramData
        $PlansArray = @()

        foreach ($_ in (Get-ChildItem ("$CBBProgramData") -Filter "*.cbb" -ErrorAction SilentlyContinue)){ 
            if (Get-Content $_.FullName){
                $Plan = [xml](Get-Content ($_.FullName))
                if ($Plan.BasePlan.type -eq "ConsistencyCheckPlan"){
                    if(Compare-StorageTypes -Account (Get-MBSStorageAccount -ID $Plan.BasePlan.ConnectionID) -StorageType $StorageType){
                        $PlansArray += Convert-XMLtoPSObject $Plan.BasePlan
                    }
                }
            }
        }
        return $PlansArray | Select -Property * -ExcludeProperty xsd, xsi, Tag
    }
}

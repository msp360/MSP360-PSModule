function Remove-MBSStaleBackup {
    <#
    .SYNOPSIS
    Removes backed up folders and files which are excluded from the backup plan.
    
    .DESCRIPTION
    Compares already backed up folder and files with backup items in the backup plan.
    
    .PARAMETER StorageAccount
    Specify the storage account object. Use Get-MBSStorageAccount cmdlet to list storages. Example: (Get-MBSStorageAccount -Name "AWS S3")
    
    .PARAMETER MasterPassword
    Master password. Should be specified if the configuration is protected by a master password. Use -MasterPassword (ConvertTo-SecureString -string "Your_Password" -AsPlainText -Force)
    
    .PARAMETER WhatIf
    Shows what would happen if the cmdlet runs. The changes are not applied.
    
    .EXAMPLE
    Remove-MBSStaleBackup -StorageAccount (Get-MBSStorageAccount -Name "AWS")

    Remove stale backup for storage account with the name "AWS"

    .EXAMPLE
    Remove-MBSStaleBackup -StorageAccount (Get-MBSStorageAccount -Name "AWS") -WhatIf

    Emulate removing stale backup for storage account with the name "AWS"
    
    .EXAMPLE
    Get-MBSStorageAccount | Remove-MBSStaleBackup -StorageAccount (Get-MBSStorageAccount -Name "AWS")

    Remove stale backup for all storage account.

    .EXAMPLE
    Get-MBSStorageAccount | Remove-MBSStaleBackup -StorageAccount (Get-MBSStorageAccount -Name "AWS") -MasterPassword (ConvertTo-SecureString -string "Your_Password" -AsPlainText -Force)

    Remove stale backup for all storage account if the backup agent is protected with the master password.

    .INPUTS
        MBS.Agent.StorageAccount

    .OUTPUTS
        String
        String[]

    .NOTES
        Author: Alex Volkov

    .LINK
        https://kb.msp360.com/managed-backup-service/powershell-module/cmdlets/backup-agent/remove-mbsstalebackup/
    #>

    [CmdletBinding()]
    param (
        # Parameter help description
        [Parameter(ValueFromPipeline, Mandatory=$true, HelpMessage="Specify storage account object. Use Get-MBSStorageAccount cmdlet to list storages. Example: (Get-MBSStorageAccount -Name ""AWS S3"")")]
        [MBS.Agent.StorageAccount]
        $StorageAccount,
        [Parameter(Mandatory=$False, HelpMessage="Master password. Should be specified if configuration is protected by master password. Use -MasterPassword (ConvertTo-SecureString -string ""Your_Password"" -AsPlainText -Force)")]
        [securestring]
        $MasterPassword,
        [Parameter(Mandatory=$False, HelpMessage="Shows what would happen if the cmdlet runs. The changes are not applied.")]
        [switch]
        $WhatIf
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
        function Remove-MBSStaleData {
            param (
                [MBS.Agent.StorageAccountContent[]]
                $StorageAccountContent,
                [String[]]
                $Item,
                [bool]
                $NetworkPath
            )
            if ($StorageAccountContent) {
                $StorageAccountContent | Foreach-Object -Process {
                    if($_.Type -eq "Disk"){$FullName = $_.FullName+'\'}else{$FullName = $_.FullName}
                    if($NetworkPath){$FullName = "\\"+$FullName}

                    if ($FullName -in $Item) {
                        Write-Host "Item ""$($_.FullName)"" is in the backup plan scope"
                    }elseif ($Item -like ($FullName+'*')) {
                        $NetworkPathInternal = $false
                        if(($_.Type -eq "Disk" -and $_.Name -like "\\*") -or $NetworkPath){
                            $NetworkPathInternal = $true
                            $StorageAccountContentNextLevel = Get-MBSBackup -StorageAccount $StorageAccount -Folder $_.FullName.TrimStart("\\") -MasterPassword $MasterPassword -ErrorAction Stop #-verbose 
                        }else {
                            $StorageAccountContentNextLevel = Get-MBSBackup -StorageAccount $StorageAccount -Folder $_.FullName -MasterPassword $MasterPassword -ErrorAction Stop #-verbose 
                        }
                        if ($StorageAccountContentNextLevel) {
                            Remove-MBSStaleData -StorageAccountContent $StorageAccountContentNextLevel -Item $Item -NetworkPath $NetworkPathInternal
                        }else {
                            Write-Host "Folder ""$($_.FullName)"" is partly backed up and will not be removed"
                        }
                    }else {
                        if ($WhatIf) {
                            Write-Host "What if: Performing the operation ""Remove MBS Backup"" on target $($_.FullName)"
                        }else {
                            Write-Host "Removing: $($_.FullName)"
                            $Options = @{
                                StorageAccount = $StorageAccount
                                MasterPassword = $MasterPassword
                            }           
                            if(([IO.FileInfo]$_.FullName).Extension){
                                $Options.Add("File",$_.FullName)
                            }else {
                                $Options.Add("Folder",$_.FullName) 
                            }
                            Remove-MBSBackup @Options
                        }
                    }
                }
            }
        }
    }
    
    process {
        $Items = (Get-MBSBackupPlan -PlanType File-Level | Where-Object ConnectionID -EQ $StorageAccount.ID).Items.PlanItem.Path
        $Backup = Get-MBSBackup -StorageAccount $StorageAccount -MasterPassword $MasterPassword
        Remove-MBSStaleData -StorageAccountContent $Backup -Item $Items
    }
    
    end {
        
    }
}
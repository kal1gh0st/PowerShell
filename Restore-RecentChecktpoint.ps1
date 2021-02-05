#requires -runasadministrator

$prefix = "lab-centos*"


Write-Output "This script will restore the most recent checkpoint for all $prefix VMs without asking for confirmation"
Get-VM $prefix | Foreach-Object { $_ | Get-VMSnapshot | Sort CreationTime | Select -Last 1 | Restore-VMSnapshot -Confirm:$false }
Write-Output "Activity completed"

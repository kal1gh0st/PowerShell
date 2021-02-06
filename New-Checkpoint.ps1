#requires -runasadministrator

#requires -runasadministrator

$prefix = "lab-centos*"

Write-Output "This script will create a checkpoint immediately for all $prefix  VMs"
get-vm $prefix | checkpoint-vm
Write-Output "Activity completed"

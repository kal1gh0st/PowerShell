#requires -runasadministrator 

# Install the tools on a domain joined machine on a PrivilegedAccessVM (Win 10)
Get-WindowsCapability -Name RSAT* -Online | Add-WindowsCapability -Online

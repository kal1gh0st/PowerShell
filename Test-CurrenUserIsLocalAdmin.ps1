function Test-CurrentUserIsLocalAdmin(){
    Return [bool] ([Security.Principal.WindowsIdentity]::GetCurrent().Groups | where-object { $_.value -like "S-1-5-32-544"})
}

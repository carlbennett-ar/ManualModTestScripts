function writereg($key, $name, $value){
    If  ( -Not ( Test-Path "Registry::$Key")){New-Item -Path "Registry::$Key" -ItemType RegistryKey -Force}
    Set-ItemProperty -path "Registry::$Key" -Name $name  -Value $value 

}
$NewUserProfileSubDir = "$env:USERPROFILE\NewUserProfileSubDir\"
$Documents = "$env:USERPROFILE\Documents\"
$LocalAppDataSubDir = "$env:LOCALAPPDATA\LocalAppDataSubDir\"

#set registry keys
writereg 'HKEY_CURRENT_USER\Software\AzCopy\cb' mainExePath $NewUserProfileSubDir
writereg 'HKEY_CURRENT_USER\Software\AzCopy\cb' INSTALLDIR $Documents
writereg 'HKEY_CURRENT_USER\Software\AzCopy\cb' INSTALLDIRNoTrailingSlash $LocalAppDataSubDir
writereg 'HKEY_CURRENT_USER\Software\AzCopy\cb' Sys32 "C:\windows\system32\"

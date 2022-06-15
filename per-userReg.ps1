function writereg($key, $name, $value){
    If  ( -Not ( Test-Path "Registry::$Key")){New-Item -Path "Registry::$Key" -ItemType RegistryKey -Force}
    Set-ItemProperty -path "Registry::$Key" -Name $name  -Value $value 

}
$mainExePath = "C:\Program Files (x86)\Microsoft SDKs\Azure\AzCopy\AzCopy.exe"
$installdir = "C:\Program Files (x86)\Microsoft SDKs\Azure\AzCopy\"
$INSTALLDIRNoTrailingSlash = "C:\Program Files (x86)\Microsoft SDKs\Azure\AzCopy"

#set registry keys
writereg 'HKEY_CURRENT_USER\Software\AzCopy\cb' mainExePath $mainExePath
writereg 'HKEY_CURRENT_USER\Software\AzCopy\cb' INSTALLDIR $installdir
writereg 'HKEY_CURRENT_USER\Software\AzCopy\cb' INSTALLDIRNoTrailingSlash $INSTALLDIRNoTrailingSlash
writereg 'HKEY_CURRENT_USER\Software\AzCopy\cb' Sys32 "C:\windows\system32\"

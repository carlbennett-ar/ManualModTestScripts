function writereg($key, $name, $value){
    If  ( -Not ( Test-Path "Registry::$Key")){New-Item -Path "Registry::$Key" -ItemType RegistryKey -Force}
    Set-ItemProperty -path "Registry::$Key" -Name $name  -Value $value 

}
$mainExePath = "C:\Program Files\7-Zip\7zFM.exe"
$installdir = "C:\Program Files\7-Zip\"
$INSTALLDIRNoTrailingSlash = "C:\Program Files\7-Zip"

#set registry keys
writereg 'HKEY_LOCAL_MACHINE\Software\7-zip\cb' mainExePath $mainExePath
writereg 'HKEY_LOCAL_MACHINE\Software\7-zip\cb' INSTALLDIR $installdir
writereg 'HKEY_LOCAL_MACHINE\Software\7-zip\cb' INSTALLDIRNoTrailingSlash $INSTALLDIRNoTrailingSlash
writereg 'HKEY_LOCAL_MACHINE\Software\7-zip\cb' Sys32 "C:\windows\system32\"
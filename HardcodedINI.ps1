$mainExePath = "C:\Program Files\7-Zip\7zFM.exe"
$installdir = "C:\Program Files\7-Zip\"
$INSTALLDIRNoTrailingSlash = "C:\Program Files\7-Zip"

#inifile
Set-Content -path ($installdir + "settings.ini") -Value "[section]`nmainExePath=$mainexepath`nINSTALLDIR=$installdir`nSys32=C:\windows\system32\`nINSTALLDIRNoTrailingSlash=$INSTALLDIRNoTrailingSlash" 

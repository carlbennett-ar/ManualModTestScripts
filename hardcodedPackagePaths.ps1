
function writereg($key, $name, $value){
    If  ( -Not ( Test-Path "Registry::$Key")){New-Item -Path "Registry::$Key" -ItemType RegistryKey -Force}
    Set-ItemProperty -path "Registry::$Key" -Name $name  -Value $value 

}
$mainExePath = "C:\Program Files\7-Zip\7zFM.exe"
$installdir = "C:\Program Files\7-Zip\"
#set registry keys
writereg 'HKEY_LOCAL_MACHINE\Software\7-zip\cb' mainExePath $mainExePath
writereg 'HKEY_LOCAL_MACHINE\Software\7-zip\cb' INSTALLDIR $installdir
writereg 'HKEY_LOCAL_MACHINE\Software\7-zip\cb' Sys32 "C:\windows\system32\"

#create shortcut
$WshShell = New-Object -comObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut('C:\ProgramData\Microsoft\Windows\Start Menu\Programs\7-Zip\My 7zip Shortcut.lnk')
$Shortcut.TargetPath = $mainExePath
$Shortcut.Arguments = """$installdir"""
$Shortcut.WorkingDirectory = $installdir
$Shortcut.Description = "7-zip shortcut including lots of paths"
$Shortcut.Save()

#inifile
Set-Content -path ($installdir + "settings.ini") -Value "[section]`nmainExePath=$mainexepath`nINSTALLDIR=$installdir`nSys32=C:\windows\system32\" 

#environment var
[Environment]::SetEnvironmentVariable('path', "$($env:Path);$installdir", 'Machine')
[Environment]::SetEnvironmentVariable('installdir', $installdir, 'Machine')
[Environment]::SetEnvironmentVariable('mainExePath', $mainExePath, 'Machine')

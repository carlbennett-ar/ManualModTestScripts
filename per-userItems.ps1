#per-user items
function writereg($key, $name, $value){
    If  ( -Not ( Test-Path "Registry::$Key")){New-Item -Path "Registry::$Key" -ItemType RegistryKey -Force}
    Set-ItemProperty -path "Registry::$Key" -Name $name  -Value $value 

}
$mainExePath = "C:\Program Files (x86)\Microsoft SDKs\Azure\AzCopy\AzCopy.exe"
$installdir = "C:\Program Files (x86)\Microsoft SDKs\Azure\AzCopy\"
$INSTALLDIRNoTrailingSlash = "C:\Program Files (x86)\Microsoft SDKs\Azure\AzCopy\AzCopy.exe"

#set registry keys
writereg 'HKEY_CURRENT_USER\Software\AzCopy\cb' mainExePath $mainExePath
writereg 'HKEY_CURRENT_USER\Software\AzCopy\cb' INSTALLDIR $installdir
writereg 'HKEY_CURRENT_USER\Software\AzCopy\cb' INSTALLDIRNoTrailingSlash $INSTALLDIRNoTrailingSlash
writereg 'HKEY_CURRENT_USER\Software\AzCopy\cb' Sys32 "C:\windows\system32\"

#create shortcut
$WshShell = New-Object -comObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut("$env:appdata\Microsoft\Windows\Start Menu\Programs\My AzCopy Shortcut.lnk")
$Shortcut.TargetPath = $mainExePath
$Shortcut.Arguments = """$installdir"""
$Shortcut.WorkingDirectory = $installdir
$Shortcut.Description = "AzCopy shortcut including lots of paths"
$Shortcut.Save()

#new folder and file in userprofile
md "$env:USERPROFILE\NewUserProfileSubDir"
Set-Content -Path "$env:USERPROFILE\NewUserProfileSubDir\NewUserProfileSubDir.xml" -value '<settings xmlns="http://maven.apache.org/SETTINGS/1.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xsi:schemaLocation="http://maven.apache.org/SETTINGS/1.0.0 https://maven.apache.org/xsd/settings-1.0.0.xsd">`n  <localRepository>${user.home}/.m2/repository</localRepository>`n  <interactiveMode>true</interactiveMode>`n  <offline>false</offline>`n</settings>'

#mydocs
Set-Content -Path "$env:USERPROFILE\Documents\MyDocsDir.rtf" -value '{\rtf1}'

md "$env:LOCALAPPDATA\LocalAppDataSubDir"
Set-Content -Path "$env:USERPROFILE\LocalAppDataSubDir\LocalAppDataSubDir.xml" -value '<settings xmlns="http://maven.apache.org/SETTINGS/1.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xsi:schemaLocation="http://maven.apache.org/SETTINGS/1.0.0 https://maven.apache.org/xsd/settings-1.0.0.xsd">`n  <localRepository>${user.home}/.m2/repository</localRepository>`n  <interactiveMode>true</interactiveMode>`n  <offline>false</offline>`n</settings>'

md "$env:APPDATA\AppDataSubDir"
Set-Content -Path "$env:USERPROFILE\AppDataSubDir\AppDataSubDir.xml" -value '<settings xmlns="http://maven.apache.org/SETTINGS/1.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xsi:schemaLocation="http://maven.apache.org/SETTINGS/1.0.0 https://maven.apache.org/xsd/settings-1.0.0.xsd">`n  <Repository>${user.home}/.m2/repository</Repository>`n  <interactiveMode>true</interactiveMode>`n  <offline>false</offline>`n</settings>'


#inifile
Set-Content -path ($installdir + "settings.ini") -Value "[section]`nmainExePath=$mainexepath`nINSTALLDIR=$installdir`nSys32=C:\windows\system32\`nINSTALLDIRNoTrailingSlash=$INSTALLDIRNoTrailingSlash" 

#environment vars
[Environment]::SetEnvironmentVariable('path', "$($env:Path);$installdir", 'User')

[Environment]::SetEnvironmentVariable('installdir', $installdir, 'User')

$mainExePath = "C:\Program Files\7-Zip\7zFM.exe"
$installdir = "C:\Program Files\7-Zip\"
$INSTALLDIRNoTrailingSlash = "C:\Program Files\7-Zip"

#create shortcut
$WshShell = New-Object -comObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut('C:\ProgramData\Microsoft\Windows\Start Menu\Programs\7-Zip\My 7zip Shortcut.lnk')
$Shortcut.TargetPath = $mainExePath
$Shortcut.Arguments = """$installdir"""
$Shortcut.WorkingDirectory = $installdir
$Shortcut.Description = "7-zip shortcut including lots of paths"
$Shortcut.Save()
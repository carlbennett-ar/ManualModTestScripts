$mainExePath = "C:\Program Files (x86)\Microsoft SDKs\Azure\AzCopy\AzCopy.exe"
$installdir = "C:\Program Files (x86)\Microsoft SDKs\Azure\AzCopy\"
$INSTALLDIRNoTrailingSlash = "C:\Program Files (x86)\Microsoft SDKs\Azure\AzCopy"

#create shortcut
$WshShell = New-Object -comObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut("$env:appdata\Microsoft\Windows\Start Menu\Programs\My AzCopy Shortcut.lnk")
$Shortcut.TargetPath = $mainExePath
$Shortcut.Arguments = """$installdir"""
$Shortcut.WorkingDirectory = $installdir
$Shortcut.Description = "AzCopy shortcut including lots of paths"
$Shortcut.Save()

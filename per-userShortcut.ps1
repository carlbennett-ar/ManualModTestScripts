$NewUserProfileSubDir = "$env:USERPROFILE\NewUserProfileSubDir\"
$Documents = "$env:USERPROFILE\Documents\"
$LocalAppDataSubDir = "$env:LOCALAPPDATA\LocalAppDataSubDir\"

#create shortcut
$WshShell = New-Object -comObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut("$env:appdata\Microsoft\Windows\Start Menu\Programs\My AzCopy Shortcut.lnk")
$Shortcut.TargetPath = $NewUserProfileSubDir
$Shortcut.Arguments = """$Documents"""
$Shortcut.WorkingDirectory = $Documents
$Shortcut.Description = "AzCopy shortcut including lots of paths"
$Shortcut.Save()

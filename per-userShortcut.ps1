#create shortcut
$WshShell = New-Object -comObject WScript.Shell

@("$env:USERPROFILE\NewUserProfileSubDir\",  "$env:USERPROFILE\Documents\",  "$env:LOCALAPPDATA\LocalAppDataSubDir\", "$env:APPDATA\AppDataSubDir\") | ForEach-Object{
    $Shortcut = $WshShell.CreateShortcut("$env:appdata\Microsoft\Windows\Start Menu\Programs\$(split-path $_ -leaf).lnk")
    $Shortcut.TargetPath = $_
    $Shortcut.Arguments = """$_"""
    $Shortcut.WorkingDirectory = $_
    $Shortcut.Description = "$name shortcut with itself as all arguments"
    $Shortcut.Save()
}

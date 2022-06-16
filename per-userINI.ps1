#inifile
$out = "[section]`n"
@("$env:USERPROFILE\NewUserProfileSubDir\",  "$env:USERPROFILE\Documents\",  "$env:LOCALAPPDATA\LocalAppDataSubDir\", "$env:APPDATA\AppDataSubDir\") | ForEach-Object{
    $out += "$(split-path $_ -leaf)=$_`n"
}

Set-Content -path ("$AppDataSubDir\settings.ini") -Value $out

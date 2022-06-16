#per-user items
$NewUserProfileSubDir = "$env:USERPROFILE\NewUserProfileSubDir\"
$Documents = "$env:USERPROFILE\Documents\"
$LocalAppDataSubDir = "$env:LOCALAPPDATA\LocalAppDataSubDir\"

#environment vars
[Environment]::SetEnvironmentVariable('path', "$($env:Path);$Documents", 'User')

@("$env:USERPROFILE\NewUserProfileSubDir\",  "$env:USERPROFILE\Documents\",  "$env:LOCALAPPDATA\LocalAppDataSubDir\", "$env:APPDATA\AppDataSubDir\") | ForEach-Object{
    [Environment]::SetEnvironmentVariable((split-path $_ -leaf),  $_, 'User')
}
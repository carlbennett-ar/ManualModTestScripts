#per-user items
$NewUserProfileSubDir = "$env:USERPROFILE\NewUserProfileSubDir\"
$Documents = "$env:USERPROFILE\Documents\"
$LocalAppDataSubDir = "$env:LOCALAPPDATA\LocalAppDataSubDir\"

#environment vars
[Environment]::SetEnvironmentVariable('path', "$($env:Path);$Documents", 'User')

[Environment]::SetEnvironmentVariable('LocalAppDataSubDir', $LocalAppDataSubDir, 'User')

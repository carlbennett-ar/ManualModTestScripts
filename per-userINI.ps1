#per-user items
$NewUserProfileSubDir = "$env:USERPROFILE\NewUserProfileSubDir\"
$Documents = "$env:USERPROFILE\Documents\"
$LocalAppDataSubDir = "$env:LOCALAPPDATA\LocalAppDataSubDir\"
$AppDataSubDir = "$env:APPDATA\AppDataSubDir"

#inifile
Set-Content -path ("$env:APPDATA\AppDataSubDir\settings.ini") -Value "[section]`nAppDataSubDir=$AppDataSubDir`nLocalAppDataSubDir=$LocalAppDataSubDir`nMyDocsDir=$Documents`nNewUserProfileSubDir=$NewUserProfileSubDir" 

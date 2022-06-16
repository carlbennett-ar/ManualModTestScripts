#per-user items
$NewUserProfileSubDir = "$env:USERPROFILE\NewUserProfileSubDir\"
$Documents = "$env:USERPROFILE\Documents\"
$LocalAppDataSubDir = "$env:LOCALAPPDATA\LocalAppDataSubDir\"
$AppDataSubDir = "$env:APPDATA\AppDataSubDir"

@($NewUserProfileSubDir, $Documents, $LocalAppDataSubDir, $AppDataSubDir) | ForEach-Object{
    #md $_    
    Set-Content -Path "$_$(split-path $_ -leaf).xml" -value '<settings xmlns="http://maven.apache.org/SETTINGS/1.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation="http://maven.apache.org/SETTINGS/1.0.0 https://maven.apache.org/xsd/settings-1.0.0.xsd">`n  <localRepository>${user.home}/.m2/repository</localRepository>`n  <interactiveMode>true</interactiveMode>`n  <offline>false</offline>`n</settings>'
    }


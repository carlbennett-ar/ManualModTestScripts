#per-user items

@("$env:USERPROFILE\NewUserProfileSubDir\",  "$env:USERPROFILE\Documents\",  "$env:LOCALAPPDATA\LocalAppDataSubDir\", "$env:APPDATA\AppDataSubDir\") | ForEach-Object{
    if (-not (Test-path $_)){ md $_ }
    Set-Content -Path "$_$(split-path $_ -leaf).xml" -value '<settings xmlns="http://maven.apache.org/SETTINGS/1.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
    xsi:schemaLocation="http://maven.apache.org/SETTINGS/1.0.0 https://maven.apache.org/xsd/settings-1.0.0.xsd">`n  <localRepository>${user.home}/.m2/repository</localRepository>`n  <interactiveMode>true</interactiveMode>`n  <offline>false</offline>`n</settings>'
}


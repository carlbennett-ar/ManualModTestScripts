#per-user items
$mainExePath = "C:\Program Files (x86)\Microsoft SDKs\Azure\AzCopy\AzCopy.exe"
$installdir = "C:\Program Files (x86)\Microsoft SDKs\Azure\AzCopy\"
$INSTALLDIRNoTrailingSlash = "C:\Program Files (x86)\Microsoft SDKs\Azure\AzCopy"


#new folder and file in userprofile
md "$env:USERPROFILE\NewUserProfileSubDir"
Set-Content -Path "$env:USERPROFILE\NewUserProfileSubDir\NewUserProfileSubDir.xml" -value '<settings xmlns="http://maven.apache.org/SETTINGS/1.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xsi:schemaLocation="http://maven.apache.org/SETTINGS/1.0.0 https://maven.apache.org/xsd/settings-1.0.0.xsd">`n  <localRepository>${user.home}/.m2/repository</localRepository>`n  <interactiveMode>true</interactiveMode>`n  <offline>false</offline>`n</settings>'

#mydocs
Set-Content -Path "$env:USERPROFILE\Documents\MyDocsDir.rtf" -value '{\rtf1}'

md "$env:LOCALAPPDATA\LocalAppDataSubDir"
Set-Content -Path "$env:LOCALAPPDATA\LocalAppDataSubDir\LocalAppDataSubDir.xml" -value '<settings xmlns="http://maven.apache.org/SETTINGS/1.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xsi:schemaLocation="http://maven.apache.org/SETTINGS/1.0.0 https://maven.apache.org/xsd/settings-1.0.0.xsd">`n  <localRepository>${user.home}/.m2/repository</localRepository>`n  <interactiveMode>true</interactiveMode>`n  <offline>false</offline>`n</settings>'

md "$env:APPDATA\AppDataSubDir"
Set-Content -Path "$env:APPDATA\AppDataSubDir\AppDataSubDir.xml" -value '<settings xmlns="http://maven.apache.org/SETTINGS/1.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xsi:schemaLocation="http://maven.apache.org/SETTINGS/1.0.0 https://maven.apache.org/xsd/settings-1.0.0.xsd">`n  <Repository>${user.home}/.m2/repository</Repository>`n  <interactiveMode>true</interactiveMode>`n  <offline>false</offline>`n</settings>'

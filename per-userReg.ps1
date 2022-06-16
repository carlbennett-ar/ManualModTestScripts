function writereg($key, $name, $value){
    If  ( -Not ( Test-Path "Registry::$Key")){New-Item -Path "Registry::$Key" -ItemType RegistryKey -Force}
    Set-ItemProperty -path "Registry::$Key" -Name $name  -Value $value 

}
@("$env:USERPROFILE\NewUserProfileSubDir\",  "$env:USERPROFILE\Documents\",  "$env:LOCALAPPDATA\LocalAppDataSubDir\", "$env:APPDATA\AppDataSubDir\") | ForEach-Object{
    #set registry keys
    writereg 'HKEY_CURRENT_USER\Software\cb' (split-path $_ -leaf) $_
    
}


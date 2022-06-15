$mainExePath = "C:\Program Files\7-Zip\7zFM.exe"
$installdir = "C:\Program Files\7-Zip\"
$INSTALLDIRNoTrailingSlash = "C:\Program Files\7-Zip"

#environment var
[Environment]::SetEnvironmentVariable('path', "$($env:Path);$installdir", 'Machine')
[Environment]::SetEnvironmentVariable('installdir', $installdir, 'Machine')
[Environment]::SetEnvironmentVariable('INSTALLDIRNoTrailingSlash', $INSTALLDIRNoTrailingSlash, 'Machine')
[Environment]::SetEnvironmentVariable('mainExePath', $mainExePath, 'Machine')

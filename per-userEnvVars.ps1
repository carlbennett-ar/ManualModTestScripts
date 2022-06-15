#per-user items
$mainExePath = "C:\Program Files (x86)\Microsoft SDKs\Azure\AzCopy\AzCopy.exe"
$installdir = "C:\Program Files (x86)\Microsoft SDKs\Azure\AzCopy\"
$INSTALLDIRNoTrailingSlash = "C:\Program Files (x86)\Microsoft SDKs\Azure\AzCopy"

#environment vars
[Environment]::SetEnvironmentVariable('path', "$($env:Path);$installdir", 'User')

[Environment]::SetEnvironmentVariable('installdir', $installdir, 'User')

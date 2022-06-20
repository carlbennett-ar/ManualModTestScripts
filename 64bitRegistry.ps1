$key = [Microsoft.Win32.RegistryKey]::OpenBaseKey([Microsoft.Win32.RegistryHive]::LocalMachine, [Microsoft.Win32.RegistryView]::Registry64)
$subkey = $key.CreateSubKey("software\64bittest")
$subkey.SetValue("teststring", "64 bit string")
$subkey.SetValue("testdword", "64")
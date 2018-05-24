Set-Location C:\Users\pc-ced\Desktop\powershell\POO
 .".\Class\Stuff.ps1"

$Files = Get-ChildItem -path ".\Class"

foreach ($f in $Files) {
    if ($f.Name -ne "Stuff.ps1") {
        . ".\Class\$($f.Name)"
    }
}

$ObjectArray = @(
    $sulfat, 
    $blender, 
    $Choco,
    $bomb,
    $gun
    $piano
    $cricket 

);
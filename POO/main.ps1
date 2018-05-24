Set-Location C:\Users\pc-ced\Desktop\powershell\POO
. ".\Autoloader.ps1"


<#function objet {
$picture = Get-Random - $ObjectArray
return $picture+1}
#>


[int] $rand = Get-Random -Maximum $Array.Lenght -Minimum 0
$Object = $Array[$rand]
[int]$goodprice = $object.SetRandomPrice()


do {


$yourprice = read-host "Quel est votre proposition?"


if ($yourprice -lt $goodprice)
{ write-host "faites une proposition plus grande"
[int]$yourprice = read-host "Faites une propostion de prix?"
$count =$count+1}

if ($yourprice -gt $goodprice)
{ write-host "faites une proposition plus grande"
[int]$yourprice = read-host "Faites une propostion de prix?"
$count =$count+1}

}

while ($goodprize -eq $yourprize)

write-host "Vous avez gagné!!!!!!!!"

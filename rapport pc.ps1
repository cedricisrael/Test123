
Set-Location Env:

$Date=(Get-date).DateTime


$disk = get-WmiObject Win32_LogicalDisk | fl | ConvertTo-Html -Fragment -PreContent "<h2>Disks:</h2>" | Out-String

$reseau = get-wmiobject -class "Win32_NetworkAdapterConfiguration"  | Where{$_.IpEnabled -Match "True"} | select IPAddress,DefaultIPGateway,ServiceName,Description  | ft

$service = Get-CimInstance -ClassName Win32_Service | Where-Object {$_.state -eq "running"} | Select-Object -Property Name,state,DisplayName

$info = Get-CimInstance -ClassName Win32_ComputerSystem
$serie = Get-WmiObject  Win32_OperatingSystem | select serialnumber,version,buildnumber
$os = Get-WmiObject  Win32_OSRecoveryConfiguration | select @{label="name";expression={($_.name -split "C:" )[0]}}

$update = Get-CimInstance -ClassName Win32_QuickFixEngineering | select HotfixID,description,InstalledOn

$os = Get-WmiObject -Class win32_operatingsystem
$os.ConvertToDateTime($os.LastBootUpTime)


$table = "NUMBER_OF_PROCESSORS","OS","PROCESSOR_ARCHITECTURE","PROCESSOR_IDENTIFIER","systemdrive"
foreach ($value in $table){
Get-ChildItem $value
}

 
#proc :
 
[int]$Processeur=(Get-WmiObject -Class win32_processor).LoadPercentage 
 
#ram = {
 
[int]$Taille_RAM_MAX=((Get-WmiObject -Class Win32_ComputerSystem ).TotalPhysicalMemory/1GB)
 
[int]$Taille_RAM_LIBRE=((Get-WmiObject -Class Win32_OperatingSystem).FreePhysicalMemory/1MB)
 
[int]$Taille_RAM_UTILISE=($Taille_RAM_MAX - $Taille_RAM_LIBRE)   
$proc = "Processeur utilisé :"+" $Processeur"+  " % de processeur utilisé"
 
$memmax = "Mémoire maximum de la machine :"+ "$Taille_RAM_MAX"+" GB"
 
$memlib = "Mémoire Libre :"+ "$Taille_RAM_LIBRE"+" GB"
 
$memus = "Mémoire utilisée :"+" $Taille_RAM_UTILISE"+  " GB utilisée"

$prog = Get-WmiObject -Class Win32_Product | select Name,Version | ft |ConvertTo-HTML -Fragment
$fuseau = Get-WmiObject  Win32_Timezone |select caption 
$localisation = get-WinUserLanguageList
$key = Get-WmiObject  Win32_Keyboard |select layout
$key = "type de clavier " +$key



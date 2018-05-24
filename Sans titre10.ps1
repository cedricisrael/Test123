$disk > C:\Users\pc-ced\Desktop\result.txt 
$reseau >> C:\Users\pc-ced\Desktop\result.txt 
$service  >> C:\Users\pc-ced\Desktop\result.txt 
$info >> C:\Users\pc-ced\Desktop\result.txt 
$serie >> C:\Users\pc-ced\Desktop\result.txt 
$os >> C:\Users\pc-ced\Desktop\result.txt 
$proc >> C:\Users\pc-ced\Desktop\result.txt 
$memmax >> C:\Users\pc-ced\Desktop\result.txt 
$memlib >> C:\Users\pc-ced\Desktop\result.txt 
$memus >> C:\Users\pc-ced\Desktop\result.txt 
$prog ConvertTo-HTML -Fragment
$fuseau >> C:\Users\pc-ced\Desktop\result.txt 
$localisation >> C:\Users\pc-ced\Desktop\result.txt 
$key >> C:\Users\pc-ced\Desktop\result.txt 
ConvertTo-HTML -Body "$disk" -Title "audit" | Out-File C:\Users\pc-ced\Desktop\status.html
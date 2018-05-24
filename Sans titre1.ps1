$head = @'
<style>
body { background-color:#dddddd;
       font-family:Tahoma;
       font-size:12pt; }
td, th { border:1px solid black; 
         border-collapse:collapse; }
th { color:white;
     background-color:black; }
table, tr, td, th { padding: 2px; margin: 0px }
table { margin-left:50px; }
</style>
'@

ConvertTo-HTML -head $head -PostContent $disk -Body "<h1>Hardware Inventory for $ComputerName</h1>"
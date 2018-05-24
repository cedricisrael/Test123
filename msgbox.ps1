#Chargement des Assembly 
[Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")|Out-Null 
#------------------------

#Définition de la Boite de dialogue 
$MaMsgBox = [Windows.Forms.MessageBox] 
$Monbouton=[Windows.Forms.MessageBoxButtons]::YesNoCancel 
$Monicon=[windows.forms.MessageBoxIcon]::Error 
#--------------------------

#Affichage de la boite de dialogue 
$click = $MaMsgBox::show("Souhaitez vous redemarrer la machine","Hello",$Monbouton,$Monicon) 
#--------------------------

#L'utilisateur à t'il cliqué sur OUI 
if ($click -eq [Windows.Forms.DialogResult]::Yes) 
{ 
#Le choix de l'utilisateur est OUI 
#Affiche une autre boite de dialogue avec le résultat de son choix 
$MaMsgBoxYes = [Windows.Forms.MessageBox] 
$MonboutonYes=[Windows.Forms.MessageBoxButtons]::Ok 
$MoniconYes=[windows.forms.MessageBoxIcon]::Information 
$MaMsgBoxYes::show("Vous voulez dire Oui","Click sur OUI",$MonboutonYes,$MoniconYes) 
for ($a=10; $a -gt 1; $a--) {
  Write-Progress -Activity "Working..." `
   -SecondsRemaining $a -CurrentOperation `
   "$a% complete" `
   -Status "Please wait."
  Start-Sleep 1
}
#---------------------------------- 
} 

#L'utilisateur à t'il cliqué sur Non 
if ($click -eq [Windows.Forms.DialogResult]::NO) 
{ 
#Le choix de l'utilisateur est Non 
#Affiche une autre boite de dialogue avec le résultat de son choix 
$MaMsgBoxYes = [Windows.Forms.MessageBox] 
$MonboutonYes=[Windows.Forms.MessageBoxButtons]::Ok 
$MoniconYes=[windows.forms.MessageBoxIcon]::Information 
$MaMsgBoxYes::show("Vous voulez dire Non","Click sur Non",$MonboutonYes,$MoniconYes)
}
else
{ 
#Le choix de l'utilisateur n'est pas OUI 
#Affiche une autre boite de dialogue avec le résultat de son choix 
$MaMsgBoxNo = [Windows.Forms.MessageBox] 
$MonboutonNo=[Windows.Forms.MessageBoxButtons]::ok 
$MoniconNo=[windows.forms.MessageBoxIcon]::Information 
$MaMsgBoxNo::show("Vous voulez dire: Je ne sais pas","Click sur Cancel",$MonboutonNo,$MoniconNo) 
#restart-Computer -force
#---------------------------------- 
}
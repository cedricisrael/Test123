<# This form was created using POSHGUI.com  a free online gui designer for PowerShell
.NAME
    Untitled
#>

Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

#region begin GUI{ 

$Form                            = New-Object system.Windows.Forms.Form
$Form.ClientSize                 = '364,130'
$Form.text                       = "Form"
$Form.TopMost                    = $false

$Bienvenue                       = New-Object system.Windows.Forms.TextBox
$Bienvenue.multiline             = $false
$Bienvenue.text                  = "Bienvenue en Enfer"
$Bienvenue.BackColor             = "#f40707"
$Bienvenue.width                 = 350
$Bienvenue.height                = 20
$Bienvenue.location              = New-Object System.Drawing.Point(10,20)
$Bienvenue.Font                  = 'SimSun,27,style=Bold'

$Out                             = New-Object system.Windows.Forms.Button
$Out.BackColor                   = "#090000"
$Out.text                        = "Bye Bye"
$Out.width                       = 154
$Out.height                      = 36
$Out.location                    = New-Object System.Drawing.Point(10,78)
$Out.Font                        = 'Microsoft Sans Serif,15'
$Out.ForeColor                   = "#f40606"

$Hello                           = New-Object system.Windows.Forms.Button
$Hello.BackColor                 = "#0651fe"
$Hello.text                      = "Hello"
$Hello.width                     = 171
$Hello.height                    = 37
$Hello.location                  = New-Object System.Drawing.Point(172,78)
$Hello.Font                      = 'Segoe UI Emoji,19,style=Bold'

$Form.controls.AddRange(@($Bienvenue,$Out,$Hello))

#region gui events {
#endregion events }

#endregion GUI }


#Write your logic code here

[void]$Form.ShowDialog()
function include { . "$PSScriptRoot/$args" }
function ch { . 'C:\Program Files (x86)\Google\Chrome\Application\chrome.exe' $args }
function touch { $null >> $args }
function subl { . 'C:\Program Files\Sublime Text 3\subl.exe' $args }

include test.ps1


function cdal { cd 'C:\Users\PC\Documents\WindowsPowerShell' }
function op { ii . }
function res { Start-Process PowerShell; exit }
function home { cd ~/ }
function dev { cd ~/dev }
function gs { git status }
function pf { cd 'C:\Program Files\' }
function pf3 { cd 'C:\Program Files (x86)\' }






echo hello hello


home



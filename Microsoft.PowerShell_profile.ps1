function ch { . 'C:\Program Files (x86)\Google\Chrome\Application\chrome.exe' $args }
function touch { $null >> $args }
function subl { . 'C:\Program Files\Sublime Text 3\subl.exe' $args }
function ss { subl . }
function vs { . "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\Common7\IDE\devenv.exe" $args }

$__scriptsPath = "C:\Users\$env:username\Documents\WindowsPowerShell"
$env:Path += 'C:\Program Files\CMake\bin\'
$__devPath = "~/dev"

function _py {
    py "$__scriptsPath\helper.py" $args 
}

. "$PSScriptRoot/git.ps1"
. "$PSScriptRoot/browser.ps1"
. "$PSScriptRoot/projects.ps1"

function cdal { cd "C:/Users/$env:username/Documents/WindowsPowerShell" }
function al { cdal; ss }
function alb { cdal; subl browser.ps1 }
function alp { cdal; subl projects.ps1 }
function alg { cdal; subl git.ps1 }

function cdl { cd "$args"; ls }

function op { ii . }
function res { Start-Process PowerShell; exit }

function build { py .\configuration\build.py $args }
function newbuild { py "C:/Users/$env:username/.emacs.d/utils/Build.py" $args }

#folders

function hm { cd ~/ }
function dev { cd $__devPath }
function work { cd "$__devPath/work" }
function sand { cd "$__devPath/sand" }
function pf { cd 'C:/Program Files/'; op }
function pf3 { cd 'C:/Program Files (x86)/'; op }

function retcode { echo "$lastexitcode" }

function clone { git clone --recursive $args }

function ma {
    Set-Clipboard -Value "u.zakreuskis@vrweartek.com"
}

function wave {
    rm C:\Users\$env:username\Desktop\dump.vcd.zip
    rm C:\Users\$env:username\Desktop\dump.vcd
    cp Z:\dump.vcd.zip Desktop
    Expand-Archive C:\Users\u.zakreuskis\Desktop\dump.vcd.zip -DestinationPath C:\Users\$env:username\Desktop
    C:\Users\u.zakreuskis\Desktop\dump.vcd
}

echo hello $env:username

hm

# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

chcp 65001

executor_j11 -s АвтофичиVA.sbsl -m CreateFeatures "AFParams.json"

Write-Host "Press any key to continue..."
[void][System.Console]::ReadKey($true)

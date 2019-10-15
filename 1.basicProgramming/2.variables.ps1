# a variable is created with a label starting with a $
$x = 20

Write-Output $x

# Get-member : gives type of variable being used. 
# $x | Get-Member
$listWin = Get-Process | Where-Object {$_.ProcessName -match "win"}
Clear-Host
$listWin | Get-Member
Write-Output "printing listwin : " $listWin
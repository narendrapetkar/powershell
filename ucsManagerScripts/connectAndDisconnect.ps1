$ucsName = ""
$ucsUserName = ""
$ucsPassword = ""

$ucsCreds = New-Object -TypeName System.Management.Automation.PSCredential `
-ArgumentList $ucsUserName, $(ConvertTo-SecureString -Force -AsPlainText $ucsPassword) 

Write-Host "------------connecting to ucs"
Connect-Ucs -Name $ucsName -Credential $ucsCreds

Write-Host "------------getting ucs blades"
Get-UcsBlade | Select-Object Dn, TotalMemory, NumOfCpus, Ucs

Write-Host "------------getting ucs powertool config"
Get-UcsPowerToolConfiguration

Write-Host "------------default UCS"
$DefaultUcs

Write-Host "------------disconnecting ucs"
Disconnect-Ucs
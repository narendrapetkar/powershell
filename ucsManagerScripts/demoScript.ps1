$ucsName = "10.10.20.113"
$ucsUserName = "ucspe"
$ucsPassword = "ucspe"

$ucsCreds = New-Object -TypeName System.Management.Automation.PSCredential `
-ArgumentList $ucsUserName, $(ConvertTo-SecureString -Force -AsPlainText $ucsPassword)

Write-Host "------------connecting to ucs"
Connect-Ucs -Name $ucsName -Credential $ucsCreds

Write-Host "----------------getting ucs PS session"
$psSession = Get-UcsPSSession
Write-Host $psSession

Write-Host "------------default UCS"
$DefaultUcs

Write-Host "------------  ------------"
# get blades
Write-Host "------------ Getting blade servers ------------"
$bladeList = Get-UcsBlade 
# Write-Host ($bladeList | ForEach-Object {($_.Dn, $_.Rn, $_.Availability)+"\n"} )
$bladeList | ForEach-Object {
    Write-Host $_.Dn $_.Name, $_.Rank, $_.Availability
}
Write-Host "Count : " ($bladeList | Measure-Object).Count
# get rack units
Write-Host "------------ getting rack units ------------"
$rackList = Get-UcsRackUnit
$rackList | ForEach-Object {
    Write-Host $_.Dn $_.Name, $_.Rn, $_.Availability
}
Write-Host "Count : " ($rackList | Measure-Object).Count

# set ucs http 
Write-Host "------------ Sets Managed Object of type CommHttp. ------------"
Set-UcsHttp -Force

Write-Host "testing http for ucsm"
Invoke-WebRequest ("http://"+ $ucsName)

Write-Host "------------disconnecting ucs"
Disconnect-Ucs
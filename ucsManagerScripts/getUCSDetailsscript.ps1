$ucsName = "10.10.20.113"
$ucsUserName = "ucspe"
$ucsPassword = "ucspe"

$ucsCreds = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $ucsUserName, $(ConvertTo-SecureString -Force -AsPlainText $ucsPassword) 

Write-Host "------------connecting to ucs"
Connect-Ucs -Name $ucsName -Credential $ucsCreds

# $list = Get-UcsSoftwareImageList -Credential $ucsCreds 
# Write-Host $list

$osVendor = Get-UcsOsVendor -Id "UCSPE-10-10-20-113"

Write-Host $osVendor

Write-Host "------------disconnecting ucs"
Disconnect-Ucs
$ucsName = ""
$ucsUserName = ""
$ucsPassword = ""

$ucsCreds = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $ucsUserName, $(ConvertTo-SecureString -Force -AsPlainText $ucsPassword) 

Write-Host "------------connecting to ucs"
Connect-Ucs -Name $ucsName -Credential $ucsCreds


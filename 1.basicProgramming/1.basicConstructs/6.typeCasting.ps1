$x = "1000"
$x.GetType()

$y = 10
$y.GetType()

# reading user input with Read-Host cmdlet returns string object.
$in = Read-Host -Prompt "enter anything"
$in.GetType()

Write-Output "changing type : "
$z = [int16]$x

$z.GetType()
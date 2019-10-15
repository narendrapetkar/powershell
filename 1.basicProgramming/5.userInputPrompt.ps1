Write-Output "welcome to user input program"
$name = Read-Host -Prompt "enter your name "
Write-Output ("Hello "+ $name +", welcome again!")
$age = Read-Host -Prompt "Please enter age "

if ([int16]$age -ge 18){
    Write-Output $name", you are adult"
}
else {
    Write-Output $name", you a not an adult"
}
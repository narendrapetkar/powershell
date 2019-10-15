# declare some variables

$var1 = 10
$var2 = 20

Write-Output "variables : " $var1 $var2.ToString()

Write-Output "----------arithmatic operators----------"

Write-Output "addition"
Write-Output ($var1 + $var2)
Write-Output "substraction"
Write-Output ($var1 - $var2)
Write-Output "multiplication"
Write-Output ($var1 * $var2)
Write-Output "division"
Write-Output ($var1 / $var2)
Write-Output "modulus"
Write-Output ($var1 % $var2)

Write-Output "----------comparison operators----------"

# eq (equals)

Write-Output ($var1 -eq $var2)
# ne (not equals)
# gt (greater than)
# ge (greater than or equals to)
# lt (less than) 	
# le (less than or equals to)

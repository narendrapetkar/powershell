<#
Write code that prints Hello if 1 is stored in spam, 
prints Howdy if 2 is stored in spam, 
and prints Greetings! if anything else is stored in spam.
#>

# $spam = 1
# $spam = 2
$spam = 3

if ($spam -eq 1){
    Write-Output "Hello"
}
elseif ($spam -eq 2) {
    Write-Output "Howdy"    
}
else{
    Write-Output "Greetings"
}
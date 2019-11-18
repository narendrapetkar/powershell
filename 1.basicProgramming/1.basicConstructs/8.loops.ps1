<#
Write a short program that prints the numbers 1 to 10 using a for loop. 
Then write an equivalent program that prints the numbers 1 to 10 using a while loop.
#>

# loops are helpful in running a set of statments multiple times.
# reduce code rework

# for loop iterates over values
# following loop prints numbers 1-10

Write-Output $sum

for ($i=1; $i -le 10; $i+=1){
    Write-Output $i
}

Write-Output "printing with while loop"

$x = 1
while($x -le 10){
    Write-Output $x
    $x+=1
} 

# following line of code creates an array of objects
$array = @('this', "is", "one", 3)

# forreach loop iterates over objects
$array | ForEach-Object {
    # $_ points to the current object in context / object in pipeline
    Write-Output $_.GetType()
}

# exercise : 
# find the sum of natural numbers in the range 1-1000 which are completely divisible by 3 or 5
$sum = 0
for ($i=1; $i -lt 1000; $i+=1){
    if (($i%3 -eq 0) -or ($i%5 -eq 0)){
        $sum+=$i
    }
}

Write-Output $sum


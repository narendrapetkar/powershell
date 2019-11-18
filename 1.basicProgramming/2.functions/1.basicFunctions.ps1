# simple function
function printHelloWorld {
    Write-Output "Hello World"    
}

printHelloWorld

# parameterized function

function customWelcomeMessage () {
    param(
        [string] $name
    )
    Write-Host "welcome" $name
}

customWelcomeMessage "narendra"
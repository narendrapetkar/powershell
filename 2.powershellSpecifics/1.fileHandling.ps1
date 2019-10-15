# create a file

New-Item "./createdFile.txt" -ItemType File

Get-ChildItem "."

Write-Output "-----------------------------------------------------"
# deleting a file

Remove-Item "./createdFile.txt"
Write-Output "list of files after removing the created file"
Get-ChildItem "."


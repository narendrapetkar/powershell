$temp = Get-Counter

Write-Output "-------------------Readings"
Write-Output $temp.Readings
Write-Output "-----------------type"
Write-Output $temp.GetType()
Write-Output "--------------counter samples"
Write-Output $temp.CounterSamples

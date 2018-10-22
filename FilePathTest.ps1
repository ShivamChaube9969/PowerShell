Write-Host "Output starts Here"
$FilePath = "D:\Users\schaube\Documents\WindowsPowerShell\Test.txt"
$fileExists = Test-Path "$FilePath"

if($fileExists) {
    $FileContent = Get-Content "$FilePath"
    Write-Host "$FileContent"
    $DateTime = [datetime](Get-ItemProperty -Path $FilePath -Name LastWriteTime).lastwritetime
    $Start = 0
    $End = 10
    $Date = $DateTime.SubString($TrimLength,$FinalLength)
    Write-Host "Time Stamp for the given file is : "$DateTime
    }
else
    {
    Write-Host "The Test file does not exist"  
    exit(0) 
    }


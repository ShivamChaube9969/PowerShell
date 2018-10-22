Write-Host "Output starts Here"
$FilePath = "D:\Users\schaube\Documents\WindowsPowerShell\Test.txt"
$fileExists = Test-Path "$FilePath"

if($fileExists) {
    $FileContent = Get-Content "$FilePath"
    Write-Host "$FileContent"
    $DateTime = [datetime](Get-ItemProperty -Path $FilePath -Name LastWriteTime).lastwritetime
    $Var = "$DateTime"
    $TrimLength = 0
    $FinalLength = 10
    $Date = $Var.SubString($TrimLength,$FinalLength)
    Write-Host "Time Stamp for the given file is : "$Date
    }
else
    {
    Write-Host "The Test file does not exist"  
    exit(0) 
    }


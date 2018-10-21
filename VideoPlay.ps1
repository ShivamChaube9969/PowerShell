Add-Type -AssemblyName presentationCore
 $filepath = "C:\Users\Public\Videos\Sample Videos\Wildlife.wmv"
 $wmplayer = New-Object System.Windows.Media.MediaPlayer
 $wmplayer.Open($filepath)
 Start-Sleep 2 # This allows the $wmplayer time to load the audio file
 $proc = Start-process -FilePath $filepath -ArgumentList  wmplayer.exe -PassThru
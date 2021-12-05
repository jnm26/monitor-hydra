#$stopWatch = [system.diagnostics.stopwatch]::startNew()
    $latestLog = gci "C:\Users\john\Desktop\HYDRA 1.0E PRO\LOGS" | sort LastWriteTime | select -last 1
    #$latestLog = "C:\Users\john\Desktop\HYDRA 1.0E PRO\LOGS\" + $latestLog
    #write-host $latestLog
    $logContent = Get-Content $latestLog
    #Write-Host $logContent
    if ($logContent -like "*CMD_FAILED*")
    {
        #Write-Host "The HYDRA process has died. Kill the HYDRA process"
        Stop-Process -Name "HYDRA" -Force
        #Start-Sleep 2
        #Start-Process -FilePath "C:\Users\john\Desktop\HYDRA 1.0E PRO\HYDRA.EXE"
        #Invoke-Item "C:\Users\john\Desktop\HYDRA 1.0E PRO\HYDRA.EXE"
    }
    else 
    {
        #Write-Host "HYDRA has not encountered a fatal error"    
        #Invoke-Item "C:\Users\john\Desktop\HYDRA 1.0E PRO\HYDRA.EXE"
        #Start-Process -FilePath "C:\Users\john\Desktop\HYDRA 1.0E PRO\HYDRA.EXE"
        #taskkill /IM HYDRA.exe /T /F
        #Stop-Process -Name "HYDRA" -Force
        
    }
#$stopWatch.ElapsedMilliseconds
#Start-Sleep 20
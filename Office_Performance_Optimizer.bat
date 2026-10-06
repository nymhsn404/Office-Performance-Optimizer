@echo off
setlocal EnableExtensions
title Office Performance Optimizer
color 0B

net session >nul 2>&1
if %errorlevel% neq 0 (
 echo Please right-click this file and select "Run as administrator".
 pause
 exit /b 1
)

set "LOG=%~dp0Office_Optimizer_Log.txt"
echo Office Performance Optimizer - %date% %time% > "%LOG%"

echo ==========================================
echo   OFFICE PERFORMANCE OPTIMIZER
echo ==========================================
echo.

echo [1/7] Cleaning temporary files...
del /f /s /q "%TEMP%\*" >nul 2>&1
for /d %%D in ("%TEMP%\*") do rd /s /q "%%D" >nul 2>&1
del /f /s /q "%SystemRoot%\Temp\*" >nul 2>&1
for /d %%D in ("%SystemRoot%\Temp\*") do rd /s /q "%%D" >nul 2>&1

echo [2/7] Cleaning icon and thumbnail cache...
ie4uinit.exe -ClearIconCache >nul 2>&1
del /f /q "%LocalAppData%\Microsoft\Windows\Explorer\thumbcache_*.db" >nul 2>&1

echo [3/7] Optimizing visual effects...
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v VisualFXSetting /t REG_DWORD /d 2 /f >nul

echo [4/7] Stopping common unnecessary background apps...
for %%P in (Teams.exe ms-teams.exe Discord.exe Spotify.exe GoogleDriveFS.exe Dropbox.exe AdobeCollabSync.exe) do taskkill /f /im %%P >nul 2>&1

echo [5/7] Reducing Delivery Optimization activity...
sc stop DoSvc >nul 2>&1
sc config DoSvc start= demand >nul 2>&1

echo [6/7] Turning OFF automatic Windows Update...
sc stop wuauserv >nul 2>&1
sc config wuauserv start= disabled >nul 2>&1
sc stop UsoSvc >nul 2>&1
sc config UsoSvc start= disabled >nul 2>&1
sc stop WaaSMedicSvc >nul 2>&1
sc config WaaSMedicSvc start= disabled >nul 2>&1

echo [7/7] Keeping security and networking services untouched...
sc config bits start= demand >nul 2>&1

echo.
echo ==========================================
echo              COMPLETED
echo ==========================================
echo Automatic Windows Update : OFF
echo Defender                 : NOT disabled
echo Firewall                 : NOT disabled
echo Network services         : NOT disabled
echo.
echo Log: %LOG%
echo.

choice /C YN /M "Restart PC now"
if errorlevel 2 goto END
shutdown /r /t 15 /c "Office Performance Optimizer"
echo Restart scheduled in 15 seconds.
pause
goto :eof

:END
echo Restart skipped.
pause

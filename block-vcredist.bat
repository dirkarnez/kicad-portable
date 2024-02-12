@echo off

REM Disable automatic vcredist installation
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Installer" /v DisableMSI /t REG_DWORD /d 2 /f

REM Disable automatic vcredist repair
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Installer" /v EnableAdminTSRemote /t REG_DWORD /d 0 /f

echo Automatic vcredist installation blocked.

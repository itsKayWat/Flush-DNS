@echo off
mode con: cols=32 lines=12
color 0A
title DNS Flush Utility

:MENU
cls
echo ===============================
echo        DNS Flush Utility
echo ===============================
echo.
echo    [Press any key to Flush DNS]
echo.
echo ===============================
pause > nul

cls
mode con: cols=32 lines=8
echo Processing...
echo.

ipconfig /flushdns
ipconfig /registerdns
ipconfig /release
ipconfig /renew
netsh winsock reset

echo.
mode con: cols=32 lines=8
echo ===============================
echo    DNS Flush Complete!
echo    Please restart your PC
echo ===============================
echo.
pause
exit
@echo off
title READ SPC FOR LG PHONES BY MOHAMMED BAIRAQ MBAIRAQ@GMAIL.COM
:depadrt
cls
echo.
echo.
echo Welcom to SPC READ of LG phones
echo.
echo [*] Waiting your phone to appaire
adb wait-for-device 
echo.
echo [*] Phone found
adb shell input keyevent 5
ping 127.0.0.1 -n 3 | echo off
adb shell input touchscreen swipe 100 500 100 500 500
adb shell input text \##3424#

start SPC.bat >NUL 2>&1
timeout 5  >NUL 2>&1
taskkill /FI "WINDOWTITLE eq MB_SPC_log" >NUL 2>&1
rem adb shell logcat > msl_dev.txt


findstr /c:"0a000000060000003" msl_dev.txt >ttt
set /P _ttt=<ttt
rem echo %_ttt%
cscript //nologo s.vbs "%_ttt%" >Hxbb
echo.
echo.

del ttt
del spc
del msl_dev.txt
Set /P _SPC=<Hxbb
cscript //nologo reserv.vbs %_SPC% >spc
cscript //nologo reserv.vbs %_SPC% | clip
set /P _sss=<spc
del spc
echo SPC is: %_sss%
echo.
adb shell input touchscreen tap 360 590 >NUL 2>&1
adb shell input text %_sss% >NUL 2>&1
adb shell input touchscreen tap 160 220 >NUL 2>&1
adb shell input touchscreen tap 370 570 >NUL 2>&1
echo [*] Finish
start "" https://www.facebook.com/mbairaq
start "" https://mobile-te.blogspot.com/
pause
goto depadrt
echo off
echo search for SPC
title MB_SPC_log
mode con:cols=30 lines=4
adb shell logcat >> msl_dev.txt

@echo off
title mirr0ing
echo mirr0ing ^| v0.1 ^| @mirr0ing

where adb >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] ADB not found in PATH!
    pause
    exit /b 1
)

if not exist "ffplay.exe" (
    echo [ERROR] ffplay.exe not found!
    pause
    exit /b 1
)

echo [?] checking device...
adb devices | findstr /R "device$" >nul
if %errorlevel% neq 0 (
    echo [!] device not connected, exit
    pause
    exit /b 1
)

adb shell input keyevent KEYCODE_WAKEUP
timeout /t 1 /nobreak >nul

adb exec-out screenrecord --output-format=h264 --bit-rate=6000000 - | ffplay -f h264 -probesize 32 -flags low_delay -framedrop -vf setpts=0 -an -sn -x 432 -y 864 -i -
pause
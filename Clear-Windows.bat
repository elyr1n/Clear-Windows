@echo off

set user_path=C:\Users\%USERNAME%

:: recent
del /s /q "%user_path%\Recent"

:: crashdumps
rmdir /s /q "%user_path%\AppData\Local\CrashRpt"
rmdir /s /q "%user_path%\AppData\Local\CrashDumps"
rmdir /s /q "%user_path%\AppData\Local\CrashReportClient"

:: temp
del /s /q "%user_path%\AppData\Local\Temp"
del /s /q "C:\Windows\Temp"

:: nvidia
del /s /q "C:\ProgramData\NVIDIA Corporation\Drs\nvAppTimestamps"

:: recycle
rd /s /q C:\$Recycle.Bin
rd /s /q D:\$Recycle.Bin

:: prefetch
del /s /q "C:\Windows\Prefetch"

:: registry
reg delete "HKCU\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /f

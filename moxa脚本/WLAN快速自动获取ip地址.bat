%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit cd /d "%~dp0"
netsh interface ip set address "WLAN" dhcp
netsh interface ip set dns "WLAN" dhcp	
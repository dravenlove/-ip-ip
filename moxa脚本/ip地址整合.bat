%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit cd /d "%~dp0"
@echo off

echo 1 �����Զ���ȡip��ַ��
echo 2 ���ٸ���ip��ַ��
set /p input1=��������ţ���ENTERȷ����

if "%input1%"=="1" goto a1 
if "%input1%"=="2" goto a2 


:a1
cls
echo 1 ��̫��
echo 2 ��̫��1
echo 3 ��̫��2
echo 4 ��̫��3
echo 5 WLAN
echo 6 ������������
echo 7 ȫ��

set /p input=��������ţ���ENTERȷ����
if "%input%"=="1" goto 1 
if "%input%"=="2" goto 2 
if "%input%"=="3" goto 3 
if "%input%"=="4" goto 4 
if "%input%"=="5" goto 5 
if "%input%"=="6" goto 6 
if "%input%"=="7" goto 7

:1
netsh interface ip set address "��̫��" dhcp
netsh interface ip set dns "��̫��" dhcp	
goto s1

:2
netsh interface ip set address "��̫��1" dhcp
netsh interface ip set dns "��̫��1" dhcp
goto s1	

:3
netsh interface ip set address "��̫��2" dhcp
netsh interface ip set dns "��̫��2" dhcp	
goto s1

:4
netsh interface ip set address "��̫��3" dhcp
netsh interface ip set dns "��̫��3" dhcp	
goto s1

:5
netsh interface ip set address "WLAN" dhcp
netsh interface ip set dns "WLAN" dhcp
goto s1

:6
netsh interface ip set address "������������" dhcp
netsh interface ip set dns "������������" dhcp		
goto s1

:7
netsh interface ip set address "��̫��" dhcp
netsh interface ip set dns "��̫��" dhcp	
netsh interface ip set address "��̫��1" dhcp
netsh interface ip set dns "��̫��1" dhcp
netsh interface ip set address "��̫��2" dhcp
netsh interface ip set dns "��̫��2" dhcp
netsh interface ip set address "��̫��3" dhcp
netsh interface ip set dns "��̫��3" dhcp
netsh interface ip set address "WLAN" dhcp
netsh interface ip set dns "WLAN" dhcp	
goto s1

:a2
set /p ipaddress=������ip��ַ����ENTERȷ����
echo �������ip��ַΪ%ipaddress%��

cls
echo 1 ��̫��
echo 2 ��̫��1
echo 3 ��̫��2
echo 4 ��̫��3
echo 5 WLAN
echo 6 ������������

set /p input=��������ţ���ENTERȷ����
if "%input%"=="1" goto 11 
if "%input%"=="2" goto 22
if "%input%"=="3" goto 33
if "%input%"=="4" goto 44
if "%input%"=="5" goto 55
if "%input%"=="6" goto 66

:11
netsh interface ip set address "��̫��" static %ipaddress% 255.255.255.0
goto s1

:22
netsh interface ip set address "��̫��1" static %ipaddress% 255.255.255.0
goto s1	

:33
netsh interface ip set address "��̫��2" static %ipaddress% 255.255.255.0	
goto s1

:44
netsh interface ip set address "��̫��3" static %ipaddress% 255.255.255.0	
goto s1

:55
netsh interface ip set address "WLAN" static %ipaddress% 255.255.255.0
goto s1

:66
netsh interface ip set address "������������" static %ipaddress% 255.255.255.0		
goto s1


:s1
exit
@echo off
title UPC KMS Activation - Version 2019.1
                              
goto :menu

:menu
cls

echo ---------------------------------------------------------
echo China University of Petroleum (East) KMS Activation
echo 中国石油大学（华东） KMS 激活脚本
echo.
echo                                      by. Liu Mengxiao
echo.
echo Input 1 to Activate Windows Opreating System.
echo 键入1以激活 Windows 操作系统.
echo.
echo Input 2 to Activate Office 2010.
echo 键入2以激活 Office 2010.
echo.
echo Input 3 to Activate Office 2013.
echo 键入3以激活 Office 2013.
echo.
echo Input 4 to Activate Office 2016/2019.
echo 键入4以激活 Office 2016/2019.
echo.
echo Input 0 to exit.
echo 键入0退出.
echo.
echo ---------------------------------------------------------

:cho 
set choice=
set /p choice=Your choice(您选择)：

IF NOT "%Choice%"=="" SET Choice=%Choice:~0,1%
if /i "%choice%"=="1" goto 1
if /i "%choice%"=="2" goto 2
if /i "%choice%"=="3" goto 3
if /i "%choice%"=="4" goto 4
if /i "%choice%"=="0" goto end

echo Your input is incorrect, please press any key to retype
echo 输入不正确，按任意键重试。 & pause
goto menu 

:1
cscript C:\windows\system32\slmgr.vbs -skms 121.251.255.71:1688
cscript C:\windows\system32\slmgr.vbs -ato
echo If no error is displayed, the activation is successful.
echo 若无错误提示，则激活成功. & pause
goto :menu

:2
cscript "C:\Program Files\Microsoft Office\Office14\ospp.vbs" /sethst:121.251.255.71
cscript "C:\Program Files\Microsoft Office\Office14\ospp.vbs" /act
echo If no error is displayed, the activation is successful.
echo 若无错误提示，则激活成功. & pause
goto :menu

:3
cscript "C:\Program Files\Microsoft Office\Office15\ospp.vbs" /sethst:121.251.255.71
cscript "C:\Program Files\Microsoft Office\Office15\ospp.vbs" /act
echo If no error is displayed, the activation is successful.
echo 若无错误提示，则激活成功. & pause
goto :menu

:4
cscript "C:\Program Files\Microsoft Office\Office16\ospp.vbs" /sethst:121.251.255.71
cscript "C:\Program Files\Microsoft Office\Office16\ospp.vbs" /act
echo If no error is displayed, the activation is successful.
echo 若无错误提示，则激活成功. & pause
goto :menu
:END

@echo off
cls
mode con lines=24 cols=82
title ENTER USERNAME AND PASSWORD
set /p user=[40;35mUsername[40;37m: 
cls
set /p pass=[40;35mPassword[40;37m: 
if %user% == futr if %pass% == futr goto good
goto again
:again
cls
echo [40;31mWrong Username or Password!
set /p user=[40;35mUsername[40;37m: 
cls
set /p pass=[40;35mPassword[40;37m: 
if %user% == futr if %pass% == futr goto good
echo [40;31mWrong Username or Password!
goto again
:good
cls
echo [40;35mPlease wait... I am verifying your credentials [40;35m[[40;35mI[40;37m]
echo [42;35m [40;30m 
ping localhost -n 2 >nul
cls
echo [40;35mPlease wait... I am verifying your credentials [40;35m[[40;35m/[40;37m]
echo [42;35m [40;30m 
ping localhost -n 2 >nul
cls
echo [40;35mPlease wait... I am verifying your credentials [40;35m[[40;35m-[40;37m]
echo [42;35m [40;30m 
ping localhost -n 2 >nul
cls
echo [40;35mPlease wait... I am verifying your credentials [40;35m[[40;35m/[40;37m]
echo [42;35m [40;30m 
ping localhost -n 2 >nul
cls
echo [40;35mPlease wait... I am verifying your credentials [40;35m[[40;35m-[40;37m]
echo [42;35m [40;30m 
ping localhost -n 2 >nul
goto main
:main

@echo off
color C

title Futr Pinger v1

:greeting
cls


echo ######## ##     ## ######## ########  
echo ##       ##     ##    ##    ##     ## 
echo ##       ##     ##    ##    ##     ## 
echo ######   ##     ##    ##    ########  
echo ##       ##     ##    ##    ##   ##   
echo ##       ##     ##    ##    ##    ##  
echo ##        #######     ##    ##     ## 

set /p IP=Enter IP::
:top
PING -n 1 %IP% | Find "TTL="
title :: Pinging: %IP% :: 
IF ERRORLEVEL 1 (SET in=0b & echo IP IS DOWN)
set /a num=(%Random%%%9)+1
color %nun%
ping -t 2 0 10 127.0.0.1 >nu1
GoTo top

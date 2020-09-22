echo off
REM Set environment variables
set WT_HOME=D:\ptc\Windchill_11.1\Windchill
set JAVA_HOME=D:\ptc\Windchill_11.1\Java

REM go to the WT_HOME directory
cd /d %WT_HOME%

REM switch to the bin directory
pushd %WT_HOME%\bin

REM set environment variables required for windchill shell
call setvars.bat

REM back to the %WT_HOME% directory
popd
REM Windchill shell is now created
echo on

REM Run xconfmanager windchill shell command
call xconfmanager -p

REM run stop command
%WT_HOME%\bin\windchill.exe stop

REM run start command
%WT_HOME%\bin\windchill.exe start 

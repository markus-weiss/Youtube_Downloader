@setlocal enableextensions enabledelayedexpansion
@echo off
REM color 0A && %R1%

:start
SET /P _inputname= [0;93m Please enter a Youtube Link: [0m 
REM Check Input
echo %_inputname%|find "youtube" >nul
if errorlevel 1 (GOTO :wrongInput) else (GOTO :startYoutubeDownloader)
:end

:wrongInput
ECHO [101;93m  This can't be a youtube link! [0m 
GOTO start
:end	


:startYoutubeDownloader
call activate ytdl 
python ytdl.py %_inputname%
GOTO :start

:end


REM cmd /k
REM pip install pytube3 --upgrade


REM echo python --version|find "3.6" >nul
REM if errorlevel 1 (GOTO :no) else (GOTO :yes)



REM cd C:\_GITHUB\Youtube_Downloader

REM echo %youtubeLink%

REM echo this is a test > listofYoutubeLinks.txt
REM echo %youtubeLink% > listofYoutubeLinks.txt


REM cd C:\_GITHUB\Youtube_Downloader
REM 

REM if %id% != "*youtube*"(
REM echo %id%
REM )

REM @ECHO OFF
REM ECHO %~dp0
REM ECHO %~dp0..\
REM FOR %%A IN ("%~dp0.") DO ECHO %%~dpA





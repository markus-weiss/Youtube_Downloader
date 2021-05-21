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
ECHO %_inputname% > ./YTDL_ProgramFiles/listofYoutubeLinks.txt
call activate ytdl 
ECHO [1;93m  Please wait a moment... [0m 
python ./YTDL_ProgramFiles/ytdl.py %_inputname%
ECHO [1;93m  Finish, look into your folder! [0m     


:end


:WantToConvert
setlocal
SET /P shouldConvertToMp3= [0;93m Do you want to convert to mp3 (Y/N)?: [0m 
IF /I "%shouldConvertToMp3%" NEQ "Y" GOTO :startMp3Convert
:end


:startMp3Convert
ECHO noot
GOTO start
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

@echo off
echo This is a League of Legends language changer
set /p comm=Enter server name(na/lan):
echo All language options (input language all in lower case) & echo.Chinese TW & echo.Chinese China & echo.Japanese& echo.Korean& echo.English& echo.Turkish
set /p lang=What language do u wanna change it to:

if %comm%==na set dir="C:\League of Legends\LeagueClient.exe" 
if %comm%==na set filename=Language Change NA
if %comm%==lan set dir="D:\League of Legends LAN\LeagueClient.exe" 
if %comm%==lan set filename=Language Change LAN

if %lang%==chinese tw set lang=zh_TW
if %lang%==chinese china set lang=zh_CN
if %lang%==japanese set lang=ja_JP
if %lang%==korean set lang=ko_KR
if %lang%==english set lang=en_US
if %lang%==turkish set lang=tr_TR

set SCRIPT="%TEMP%\%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%.vbs"
echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
echo sLinkFile = "%USERPROFILE%\Desktop\%filename%.lnk" >> %SCRIPT%
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
echo oLink.TargetPath = %dir% >> %SCRIPT%
echo oLink.Arguments = "--locale=%lang%" >> %SCRIPT%
echo oLink.Save >> %SCRIPT%

cscript /nologo %SCRIPT%
del %SCRIPT%
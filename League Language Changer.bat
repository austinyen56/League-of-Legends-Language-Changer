@echo off
echo League of Legends Language Changer v1.2 by Austin56
set /p comm=Enter server name(na/lan/brazil/eune/euw/las/oce/russia/turkey/japan):
echo All language options (input language in the parenthesis)  & echo.Czech Republic(czech) & echo.Greece(greek) & echo.Poland(polish) & echo.Romania(romanian) & echo.Hungary(hungarian) & echo.Germany(german) & echo.Spanish(spanish_spain) & echo.Italy(italian) & echo.France(french) & echo.Mexico(spanish_mexico) & echo.Brazil(portuguese) & echo.Malaysia(malay) & echo.Thailand(thai) & echo.Vietnam(vietnamese) & echo.Indonesia(indonesian) & echo.Malaysia(chinese_malaysia) & echo.Chinese(chinese_tw) & echo.Chinese(chinese_china) & echo.Japan(japanese) & echo.Korea(korean) & echo.English(english) & echo.Turkey(turkish) & echo.Russian(russian)
set /p lang=What language do u wanna change it to:

:: Change the directory (dir = "this thing") if you located the client in a different place
if %comm%==na set dir="C:\League of Legends\LeagueClient.exe" 
if %comm%==na set filename=Language Change NA
if %comm%==lan set dir="C:\League of Legends\LeagueClient.exe" 
if %comm%==lan set filename=Language Change LAN
if %comm%==brazil set dir="C:\League of Legends\LeagueClient.exe" 
if %comm%==brazil set filename=Language Change BR
if %comm%==eune set dir="C:\League of Legends\LeagueClient.exe" 
if %comm%==eune set filename=Language Change EUNE
if %comm%==euw set dir="C:\League of Legends\LeagueClient.exe" 
if %comm%==euw set filename=Language Change EUW
if %comm%==las set dir="C:\League of Legends\LeagueClient.exe" 
if %comm%==las set filename=Language Change LAS
if %comm%==oce set dir="C:\League of Legends\LeagueClient.exe" 
if %comm%==oce set filename=Language Change OCE
if %comm%==russia set dir="C:\League of Legends\LeagueClient.exe" 
if %comm%==russia set filename=Language Change RU
if %comm%==turkey set dir="C:\League of Legends\LeagueClient.exe" 
if %comm%==turkey set filename=Language Change TR
if %comm%==japan set dir="C:\League of Legends\LeagueClient.exe" 
if %comm%==japan set filename=Language Change JP

if %lang%==czech set lang=cs_CZ
if %lang%==greek set lang=el_GR
if %lang%==polish set lang=pl_PL
if %lang%==romanian set lang=ro_RO
if %lang%==hungarian set lang=hu_HU
if %lang%==german set lang=de_DE
if %lang%==spanish_spain set lang=es_ES
if %lang%==italian set lang=it_IT
if %lang%==french set lang=fr_FR
if %lang%==spanish_mexico set lang=es_MX
if %lang%==portuguese set lang=pt_BR
if %lang%==malay set lang=ms_MY
if %lang%==thai set lang=th_TH
if %lang%==vietnamese set lang=vn_VN
if %lang%==indonesian set lang=id_ID
if %lang%==chinese_malaysia set lang=zh_MY
if %lang%==chinese_tw set lang=zh_TW
if %lang%==chinese_china set lang=zh_CN
if %lang%==japanese set lang=ja_JP
if %lang%==korean set lang=ko_KR
if %lang%==english set lang=en_US
if %lang%==turkish set lang=tr_TR
if %lang%==russian set lang=ru_RU

set SCRIPT="%TEMP%\%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%.vbs"
echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
echo sLinkFile = "%USERPROFILE%\Desktop\%filename%.lnk" >> %SCRIPT%
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
echo oLink.TargetPath = %dir% >> %SCRIPT%
echo oLink.Arguments = "--locale=%lang%" >> %SCRIPT%
echo oLink.Save >> %SCRIPT%
cscript /nologo %SCRIPT%
del %SCRIPT%

echo A new icon should appear on the desktop
pause

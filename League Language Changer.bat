@echo off
echo League of Legends Language Changer v2.1 by Austin56
echo.

echo All language options (input language in the parenthesis) & echo.Brazil (portuguese) & echo.Chinese (chinese_china) & echo.Chinese (chinese_tw) & echo.Czech Republic (czech) & echo.English (english) & echo.France (french) & echo.Germany (german) & echo.Greece (greek) & echo.Hungary (hungarian) & echo.Indonesia (indonesian) & echo.Italy (italian) & echo.Japan (japanese) & echo.Korea (korean) & echo.Malaysia (chinese_malaysia) & echo.Malaysia (malay) & echo.Mexico (spanish_mexico) & echo.Poland (polish) & echo.Romania (romanian) & echo.Russian (russian) & echo.Spanish (spanish_spain) & echo.Thailand (thai) & echo.Turkey (turkish) & echo.Vietnam (vietnamese)
:langloop
    echo.
    set /p lang=What language do you want to change it to:
    for %%l in ("czech" "greek" "polish" "romanian" "hungarian" "german" "spanish_spain" "italian" "french" "spanish_mexico" "portuguese" "malay" "thai" "vietnamese" "indonesian" "chinese_malaysia" "chinese_tw" "chinese_china" "japanese" "korean" "english" "turkish" "russian") do if /I "%lang%" == "%%~l" goto :next2
    echo Invalid language name, please try again.
goto :langloop
:next2

:: Change the directory (dir = "change this directory") if you located the client in a different place
set dir="C:\League of Legends\LeagueClient.exe" 
set filename=LoL Language Changer

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

echo.
echo A new icon should appear on the desktop
echo Launching League in %lang% ...
start "" "%USERPROFILE%\Desktop\%filename%.lnk"
timeout /t 1 /nobreak >nul

exit

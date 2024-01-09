@ECHO OFF
@echo off
title CSSC V1 - Waiting for Admin Privileges...
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)
title CSSC V1
mode con: cols=70 lines=4
cls && color 01
echo  ====================================================================
echo                        Initializing CSSC...
echo  ====================================================================
timeout /t 5 >nul
mode con: cols=100 lines=30
set releasever=V1
set "batpath=%~dp0"
goto mainmenu
:mainmenu
cls && color a
echo  ==================================================================================================
echo                           Welcome to CSSC(Counter-Strike Skin Changer) %releasever%
echo   				by Atlas Workspace - 09.01.2024
echo  ==================================================================================================
echo.
echo  [34m[1][0m Knife(1)						[34m[23][0m Krieg 550(0)
echo  [34m[2][0m Glock 18(0)					[34m[24][0m G3SG1(0)
echo  [34m[3][0m USP(0)						[34m[25][0m M249(0)
echo  [34m[4][0m P228(0)
echo  [34m[5][0m Desert Eagle(0)
echo  [34m[6][0m Five-Seven(0)
echo  [34m[7][0m Dual Berettas(0)
echo  [34m[8][0m M3 Shotgun(0)
echo  [34m[9][0m XM1014 Shotgun(0)
echo  [34m[10][0m Mac-10(0)
echo  [34m[11][0m TMP(0)
echo  [34m[12][0m MP5(0)
echo  [34m[13][0m UMP45(0)
echo  [34m[14][0m P90(0)
echo  [34m[15][0m Famas(0)
echo  [34m[16][0m Galil-Ar(0)
echo  [34m[17][0m AK-47(0)
echo  [34m[18][0m M4A1(0)
echo  [34m[19][0m AUG(0)
echo  [34m[20][0m SG 552(0)
echo  [34m[21][0m Scout(0)
echo  [34m[22][0m AWP(0)
echo.
echo.
set /p weapontypes=  Choose: 
if %weapontypes%==1 goto knife
if %weapontypes%==2 goto glock
if %weapontypes%==3 goto usp
if %weapontypes%==4 goto p228
if %weapontypes%==5 goto deagle
if %weapontypes%==6 goto fiveseven
if %weapontypes%==7 goto beretta
if %weapontypes%==8 goto m3pomp
if %weapontypes%==9 goto mxpomp
if %weapontypes%==10 goto mac10
if %weapontypes%==11 goto tmp
if %weapontypes%==12 goto mp5
if %weapontypes%==13 goto ump
if %weapontypes%==14 goto p90
if %weapontypes%==15 goto famas
if %weapontypes%==16 goto galil
if %weapontypes%==17 goto ak47
if %weapontypes%==18 goto m4a1
if %weapontypes%==19 goto aug
if %weapontypes%==20 goto sg552
if %weapontypes%==21 goto scout
if %weapontypes%==22 goto awp
if %weapontypes%==23 goto krieg
if %weapontypes%==24 goto g3sg1
if %weapontypes%==25 goto m249

:knife
cls && color a
echo  ==================================================================================================
echo                           Welcome to CSSC(Counter-Strike Skin Changer) %releasever%
echo   			  Select a Skin Number to Get Infos and Actions!
echo  ==================================================================================================
echo.
echo  [34m[1][0m Default Knife                              		[33m[B][0m Back
echo  [34m[2][0m Valorant Champions Butterfly
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
set /p skinknifes=Choose: 
if %skinknifes%==1 goto defknife
if %skinknifes%==2 goto valchampbtf
if %skinknifes%==b goto mainmenu
if %skinknifes%==B goto mainmenu

:defknife
copy /Y "%batpath%\skins\knife\default\models\*" "C:\Program Files (x86)\Steam\steamapps\common\Half-Life\cstrike\models"
pause
goto knife

:valchampbtf
cls && color a
echo  ==================================================================================================
echo                           Welcome to CSSC(Counter-Strike Skin Changer) %releasever%
echo   			  Info - Valorant Champions 2022 Butterfly Knife
echo  ==================================================================================================
echo.
echo  Champions 2022 Butterfly Knife appeared in the game in August 23, 2022.
echo.
echo  [34m[1][0m Install                                        [33m[B][0m Back
echo  [34m[2][0m Video
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
set /p cleanperform= Choose: 
if %cleanperform%==1 goto valcpbtfinstall
if %cleanperform%==2 start https://www.youtube.com/watch?v=0gXkM_x1CJ4
if %cleanperform%==b goto knife
if %cleanperform%==B goto knife

:valcpbtfinstall
copy /Y "%batpath%\skins\knife\valorantchampionsbutterfly\models\*" "C:\Program Files (x86)\Steam\steamapps\common\Half-Life\cstrike\models"
mkdir "C:\Program Files (x86)\Steam\steamapps\common\Half-Life\cstrike\sound\weapons\valorant\butterfly"
copy /Y "%batpath%\skins\knife\valorantchampionsbutterfly\sound\weapons\valorant\butterfly\*" "C:\Program Files (x86)\Steam\steamapps\common\Half-Life\cstrike\sound\weapons\valorant\butterfly"
pause
goto valchampbtf

:messaging
cls && color a
echo  ==================================================================================================
echo                                 Welcome to DarkHub Toolbox %PRVersion%
echo   User: %username% - Machine: %computername% - Main Drive: %HOMEDRIVE%\ - Date: %DATE% - %TIME%
echo  ==================================================================================================
echo.
echo  [34m[1][0m Discord                                                [33m[B][0m Back
echo  [34m[2][0m Whatsapp
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
set /p cleanperform= Choose: 
if %cleanperform%==1 goto discord
if %cleanperform%==2 goto whatsapp
if %cleanperform%==b goto chocolatey
if %cleanperform%==B goto chocolatey

:discord
choco install -y --ignore-checksums discord
goto messaging

:whatsapp
choco install -y --ignore-checksums whatsapp
goto messaging

:system
cls && color a
echo  ==================================================================================================
echo                                 Welcome to DarkHub Toolbox %PRVersion%
echo   User: %username% - Machine: %computername% - Main Drive: %HOMEDRIVE%\ - Date: %DATE% - %TIME%
echo  ==================================================================================================
echo.
echo  [34m[1][0m Power Management(11)                                   [33m[B][0m Back
echo  [34m[2][0m Cleaning and Performance(6)
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
set /p systools=Choose:
if %systools%==1 goto power
if %systools%==2 goto cp
if %systools%==b goto mainmenu
if %systools%==B goto mainmenu

:cp
cls && color a
echo  ==================================================================================================
echo                                 Welcome to DarkHub Toolbox %PRVersion%
echo   User: %username% - Machine: %computername% - Main Drive: %HOMEDRIVE%\ - Date: %DATE% - %TIME%
echo  ==================================================================================================
echo.
echo  [34m[1][0m Clean Temp                                             [33m[B][0m Back
echo  [34m[2][0m Clean Prefetch
echo  [34m[3][0m Defrag(%HOMEDRIVE%)
echo  [34m[4][0m Defrag(All Disks)
echo  [34m[5][0m Clean Manager(%HOMEDRIVE%)
echo  [34m[6][0m Clean Manager(All Disks)
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
set /p cleanperform= Choose: 
if %cleanperform%==1 goto ctemp
if %cleanperform%==2 goto cpfetch
if %cleanperform%==3 goto cdefhome
if %cleanperform%==4 goto cdefall
if %cleanperform%==5 goto cclnmgrhome
if %cleanperform%==6 goto cclnmgrauto
if %cleanperform%==b goto system
if %cleanperform%==B goto system

:ctemp
rd %temp% /s /q
rd C:\Windows\Temp /s /q
goto cp

:cpfetch
rd C:\Windows\Prefetch /s /q
goto cp

:cdefhome
defrag %HOMEDRIVE% /H /M
goto cp

:cdefall
defrag /C /H /M
goto cp

:cclnmgrhome
cleanmgr.exe /d%HOMEDRIVE% /verylowdisk
goto cp

:cclnmgrauto
cleanmgr.exe /AUTOCLEAN /verylowdisk
goto cp

:power
cls && color a
echo  ==================================================================================================
echo                                 Welcome to DarkHub Toolbox %PRVersion%
echo   User: %username% - Machine: %computername% - Main Drive: %HOMEDRIVE%\ - Date: %DATE% - %TIME%
echo  ==================================================================================================
echo.
echo  [34m[1][0m Shutdown(15s)                                          [33m[B][0m Back
echo  [34m[2][0m Shutdown(30s)
echo  [34m[3][0m Shutdown(No Wait)
echo  [34m[4][0m Shutdown(Force)
echo  [34m[5][0m Shutdown(Hybrid)
echo  [34m[6][0m Delete Timed Shutdown
echo  [34m[7][0m Remote Shutdown
echo  [34m[8][0m Restart
echo  [34m[9][0m Restart with Boot Options
echo  [34m[10][0m Hibernate
echo  [34m[11][0m Logout
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
set /p systools= Choose: 
if %systools%==1 goto sd15s
if %systools%==2 goto sd30s
if %systools%==3 goto sdnow
if %systools%==4 goto sdforce
if %systools%==5 goto sdhybrid
if %systools%==6 goto sddelete
if %systools%==7 goto sdremote
if %systools%==8 goto sdrestart
if %systools%==9 goto sdrestartasboot
if %systools%==10 goto sdhibernate
if %systools%==11 goto sdlogout
if %systools%==b goto system
if %systools%==B goto system

:sd15s
shutdown -s -t 15
goto power

:sd30s
shutdown -s -t 30
goto power

:sdnow
shutdown -s
goto power

:sdforce
shutdown -s -f
goto power

:sdhybrid
shutdown -s -hybrid
goto power

:sddelete
shutdown -a
goto power

:sdremote
shutdown -i
goto power

:sdrestart
shutdown -r
goto power

:sdrestartasboot
shutdown -r -o
goto power

:sdhibernate
shutdown -h
goto power

:sdlogout
shutdown -l
goto power
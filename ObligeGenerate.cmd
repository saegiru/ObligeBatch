@echo off
setlocal

set MAPDIR=D:\DOOM\ObligeMaps
SET OBSIDEXE="D:\DOOM\Apps\obsidian\obsidian.exe"
SET OBEXE=D:\DOOM\APPS\OBLIGE-7.70\Oblige64.exe
SET OBLIGEBATCHDIR=D:\DOOM\OBLIGEBATCH
set ZDLDIR=D:\DOOM\Launchers\ZDL
SET DOOMDIR=D:\DOOM

cls

:QuickStart
cls
set quick=
set /p quick="Quick Start (Y/N)? "
If /I "%quick%" == "y" goto quickchoice
if /I "%quick%" == "n" goto length
goto quickstart

:quickchoice
set length=single
set theme=bit_mixed
set /a num1=%random% %%4
if %num1%==0 set size=micro
if %num1%==1 set size=mini
if %num1%==2 set size=tiny
if %num1%==3 set size=small
set /a num1=%random% %%5
if %num1%==0 set game=doom1
if %num1%==1 set game=doom2
if %num1%==2 set game=ultdoom
if %num1%==3 set game=plutonia
if %num1%==4 set game=tnt
set theme=bit_mixed
goto verify





:length
echo Choose Map Type:
echo 0) Random Choice
echo 1) Single
echo 2) Few Maps
echo 3) Episode
echo 4) Full Game
set /p length="Enter Choice: "
If /I "%length%"=="0" goto randmap
If /I "%length%"=="1" set length=single& goto size
If /I "%length%"=="2" set length=few& goto size
If /I "%length%"=="3" set length=episode& goto size
If /I "%length%"=="4" set length=game& goto size
CLS
ECHO PLEASE ENTER VALID CHOICE
goto length

:randmap
set /a num1=%random% %%4
if %num1%==0 set length=single
if %num1%==1 set length=few
if %num1%==2 set length=episode
if %num1%==3 set length=game

:size
echo Choose Size:
echo 0) Random Choice
echo 1) Microscopic (micro)
echo 2) Miniscule (mini)
echo 3) Tiny (tiny)
echo 4) Small (small)
echo 5) Average (average)
echo 6) Large (large)
echo 7) Huge (huge)
echo 8) Colossal (colossal)
echo 9) Gargantuan (gargan)
echo 10) Transcendent (trans)
echo 11) Episodic (epi)
echo 12) Progressive (prog)
echo 13) Mix It Up (mixed)
set /p size="Enter Choice: "
If /I "%size%"=="0" goto randsize
If /I "%size%"=="1" set size=micro& goto game
If /I "%size%"=="2" set size=mini& goto game
If /I "%size%"=="3" set size=tiny& goto game
If /I "%size%"=="4" set size=small& goto game
If /I "%size%"=="5" set size=average& goto game
If /I "%size%"=="6" set size=large& goto game
If /I "%size%"=="7" set size=huge& goto game
If /I "%size%"=="8" set size=colossal& goto game
If /I "%size%"=="9" set size=gargan& goto game
If /I "%size%"=="10" set size=trans& goto game
If /I "%size%"=="11" set size=epi& goto game
If /I "%size%"=="12" set size=prog& goto game
If /I "%size%"=="13" set size=mixed& goto game
CLS
ECHO PLEASE ENTER VALID CHOICE
goto size

:randsize
set /a num1=%random% %%13
if %num1%==0 set size=micro
if %num1%==1 set size=mini
if %num1%==2 set size=tiny
if %num1%==3 set size=small
if %num1%==4 set size=average
if %num1%==5 set size=large
if %num1%==6 set size=huge
if %num1%==7 set size=colossal
if %num1%==8 set size=gargan
if %num1%==9 set size=trans
if %num1%==10 set size=epi
if %num1%==11 set size=prog
if %num1%==12 set size=mixed

:game
echo Choose Game:
echo 0) Random Choice
echo 1) DOOM
echo 2) DOOM 2
echo 3) Ultimate DOOM
echo 4) Plutonia
echo 5) TNT
set /p game="Enter Choice: "
If /I "%game%"=="0" goto randtype
If /I "%game%"=="1" set game=doom1& goto themed1
If /I "%game%"=="2" set game=doom2& goto themed2
If /I "%game%"=="3" set game=ultdoom& goto themeud
If /I "%game%"=="4" set game=plutonia& goto themed2
If /I "%game%"=="5" set game=tnt& goto themetnt
CLS
ECHO PLEASE ENTER VALID CHOICE
goto game

:randtype
set /a num1=%random% %%5
if %num1%==0 set game=doom1& goto themed1
if %num1%==1 set game=doom2& goto themed2
if %num1%==2 set game=ultdoom& goto themeud
if %num1%==3 set game=plutonia& goto themed2
if %num1%==4 set game=tnt& goto themetnt

:themed1
ECHO Choose Theme:
echo 0) Random Choice
echo 1) Original
echo 2) Original-ish
echo 3) Episodic
echo 4) Episodic-ish
echo 5) Bit Mixed
echo 6) Jumbled Up
echo 7) Tech
echo 8) Tech-ish
echo 9) Deimos
echo 10) Deimos-ish
echo 11) Hell
echo 12) Hell-ish
echo 13) Psychedelic
set /p theme="Enter Choice: "
If /I "%theme%"=="0" goto randd1
If /I "%theme%"=="1" set theme=original& goto verify
If /I "%theme%"=="2" set theme=mostly_original&  goto verify
If /I "%theme%"=="3" set theme=epi&  goto verify
If /I "%theme%"=="4" set theme=mostly_epi&  goto verify
If /I "%theme%"=="5" set theme=bit_mixed&  goto verify
If /I "%theme%"=="6" set theme=jumble&  goto verify
If /I "%theme%"=="7" set theme=tech&  goto verify
If /I "%theme%"=="8" set theme=mostly_tech&  goto verify
If /I "%theme%"=="9" set theme=deimos&  goto verify
If /I "%theme%"=="10" set theme=mostly_deimos&  goto verify
If /I "%theme%"=="11" set theme=hell&  goto verify
If /I "%theme%"=="12" set theme=mostly_hell&  goto verify
If /I "%theme%"=="13" set theme=psycho&  goto verify
CLS
ECHO PLEASE ENTER VALID CHOICE
goto themed1

:randd1
set /a num1=%random% %%13
if %num1%==0 set theme=original
if %num1%==1 set theme=mostly_original
if %num1%==2 set theme=epi
if %num1%==3 set theme=mostly_epi
if %num1%==4 set theme=bit_mixed
if %num1%==5 set theme=jumble
if %num1%==6 set theme=tech
if %num1%==7 set theme=mostly_tech
if %num1%==8 set theme=deimos
if %num1%==9 set theme=mostly_deimos
if %num1%==10 set theme=hell
if %num1%==11 set theme=mostly_hell
if %num1%==12 set theme=psycho
goto verify

:themed2
ECHO Choose Theme:
echo 0) Random Choice
echo 1) Original
echo 2) Original-ish
echo 3) Episodic
echo 4) Episodic-ish
echo 5) Bit Mixed
echo 6) Jumbled Up
echo 7) Tech
echo 8) Tech-ish
echo 9) Urban
echo 10) Urban-ish
echo 11) Hell
echo 12) Hell-ish
echo 13) Psychedelic
set /p theme="Enter Choice: "
If /I "%theme%"=="0" goto randd2
If /I "%theme%"=="1" set theme=original& goto verify
If /I "%theme%"=="2" set theme=mostly_original&  goto verify
If /I "%theme%"=="3" set theme=epi&  goto verify
If /I "%theme%"=="4" set theme=mostly_epi&  goto verify
If /I "%theme%"=="5" set theme=bit_mixed&  goto verify
If /I "%theme%"=="6" set theme=jumble&  goto verify
If /I "%theme%"=="7" set theme=tech&  goto verify
If /I "%theme%"=="8" set theme=mostly_tech&  goto verify
If /I "%theme%"=="9" set theme=urban&  goto verify
If /I "%theme%"=="10" set theme=mostly_urban&  goto verify
If /I "%theme%"=="11" set theme=hell&  goto verify
If /I "%theme%"=="12" set theme=mostly_hell&  goto verify
If /I "%theme%"=="13" set theme=psycho&  goto verify
CLS
ECHO PLEASE ENTER VALID CHOICE
goto themed2

:randd2
set /a num1=%random% %%13
if %num1%==0 set theme=original
if %num1%==1 set theme=mostly_original
if %num1%==2 set theme=epi
if %num1%==3 set theme=mostly_epi
if %num1%==4 set theme=bit_mixed
if %num1%==5 set theme=jumble
if %num1%==6 set theme=tech
if %num1%==7 set theme=mostly_tech
if %num1%==8 set theme=urban
if %num1%==9 set theme=mostly_urban
if %num1%==10 set theme=hell
if %num1%==11 set theme=mostly_hell
if %num1%==12 set theme=psycho
goto verify

:themeud
ECHO Choose Theme:
echo 0) Random Choice
echo 1) Original
echo 2) Original-ish
echo 3) Episodic
echo 4) Episodic-ish
echo 5) Bit Mixed
echo 6) Jumbled Up
echo 7) Tech
echo 8) Tech-ish
echo 9) Deimos
echo 10) Deimos-ish
echo 11) Hell
echo 12) Hell-ish
echo 13) Thy Flesh
echo 14) Thy Flesh-ish
echo 13) Psychedelic
set /p theme="Enter Choice: "
If /I "%theme%"=="0" goto randud
If /I "%theme%"=="1" set theme=original& goto verify
If /I "%theme%"=="2" set theme=mostly_original&  goto verify
If /I "%theme%"=="3" set theme=epi&  goto verify
If /I "%theme%"=="4" set theme=mostly_epi&  goto verify
If /I "%theme%"=="5" set theme=bit_mixed&  goto verify
If /I "%theme%"=="6" set theme=jumble&  goto verify
If /I "%theme%"=="7" set theme=tech&  goto verify
If /I "%theme%"=="8" set theme=mostly_tech&  goto verify
If /I "%theme%"=="9" set theme=deimos&  goto verify
If /I "%theme%"=="10" set theme=mostly_deimos&  goto verify
If /I "%theme%"=="11" set theme=hell&  goto verify
If /I "%theme%"=="12" set theme=mostly_hell&  goto verify
If /I "%theme%"=="13" set theme=flesh&  goto verify
If /I "%theme%"=="14" set theme=mostly_flesh&  goto verify
If /I "%theme%"=="15" set theme=psycho&  goto verify
CLS
ECHO PLEASE ENTER VALID CHOICE
goto themeud

:randud
set /a num1=%random% %%15
if %num1%==0 set theme=original
if %num1%==1 set theme=mostly_original
if %num1%==2 set theme=epi
if %num1%==3 set theme=mostly_epi
if %num1%==4 set theme=bit_mixed
if %num1%==5 set theme=jumble
if %num1%==6 set theme=tech
if %num1%==7 set theme=mostly_tech
if %num1%==8 set theme=deimos
if %num1%==9 set theme=mostly_deimos
if %num1%==10 set theme=hell
if %num1%==11 set theme=mostly_hell
if %num1%==12 set theme=flesh
if %num1%==13 set theme=mostly_flesh
if %num1%==14 set theme=psycho
goto verify

:themetnt
ECHO Choose Theme:
echo 1) Original
echo 2) Original-ish
echo 3) Episodic
echo 4) Episodic-ish
echo 5) Bit Mixed
echo 6) Jumbled Up
echo 7) Tech
echo 8) Tech-ish
echo 9) Urban
echo 10) Urban-ish
echo 11) Hell
echo 12) Hell-ish
echo 13) Egypt
echo 14) Psychedelic
set /p theme="Enter Choice: "
If /I "%theme%"=="0" goto randd2
If /I "%theme%"=="1" set theme=original& goto verify
If /I "%theme%"=="2" set theme=mostly_original&  goto verify
If /I "%theme%"=="3" set theme=epi&  goto verify
If /I "%theme%"=="4" set theme=mostly_epi&  goto verify
If /I "%theme%"=="5" set theme=bit_mixed&  goto verify
If /I "%theme%"=="6" set theme=jumble&  goto verify
If /I "%theme%"=="7" set theme=tech&  goto verify
If /I "%theme%"=="8" set theme=mostly_tech&  goto verify
If /I "%theme%"=="9" set theme=urban&  goto verify
If /I "%theme%"=="10" set theme=mostly_urban&  goto verify
If /I "%theme%"=="11" set theme=hell&  goto verify
If /I "%theme%"=="12" set theme=mostly_hell&  goto verify
If /I "%theme%"=="13" set theme=egypt&  goto verify
If /I "%theme%"=="14" set theme=psycho&  goto verify
CLS
ECHO PLEASE ENTER VALID CHOICE
goto themetnt

:randtnt
set /a num1=%random% %%14
if %num1%==0 set theme=original
if %num1%==1 set theme=mostly_original
if %num1%==2 set theme=epi
if %num1%==3 set theme=mostly_epi
if %num1%==4 set theme=bit_mixed
if %num1%==5 set theme=jumble
if %num1%==6 set theme=tech
if %num1%==7 set theme=mostly_tech
if %num1%==8 set theme=urban
if %num1%==9 set theme=mostly_urban
if %num1%==10 set theme=hell
if %num1%==11 set theme=mostly_hell
if %num1%==12 set theme=egypt
if %num1%==13 set theme=psycho
goto verify


:verify
cls
::Echo Mod = %mod%
ECHO Length = %length%
echo Size = %size%
echo Game = %game%
echo Theme = %theme%
set /p Input="Is this correct?(Y/N) "
If /I "%input%" == "y" goto generate
IF /I "%input%" == "n" goto quickstart
goto verify

:generate
set DATESTAMP=%DATE:~10,4%%DATE:~4,2%%DATE:~7,2%
 
set TIMESTAMP=%TIME:~0,2%%TIME:~3,2%%TIME:~6,2%
 
::set MAPNAME="%MAPDIR%\%DATESTAMP%_%TIMESTAMP: =0%_OBLIGE_%length%_%game%_%size%_%theme%.WAD"
@ECHO ON
::Uncomment this section to use Oblige 7.70
%OBEXE% --verbose --batch %obligebatchdir%\tempmap.wad --load %OBLIGEBATCHDIR%\ObligeBatchConfig.txt game=%game% length=%length% theme=%theme% size=%size% --log %OBLIGEBATCHDIR%\BatchLog.txt --addon ObAddon.pk3 ExtraArmor.pk3 UniversalIntermission.pk3
::Uncomment this section to use obsidian level generator
::pushd d:\doom\apps\obsidian
::%OBSIDEXE% --verbose --batch %MAPNAME% --load %OBLIGEBATCHDIR%\ObsidianConfig.txt game=%game% length=%length% theme=%theme% size=%size% --log BatchLog.txt
::popd
@ECHO OFF
for /f "tokens=2 delims=:" %%y in ('type "%OBLIGEBATCHDIR%\BatchLog.txt"^|find "Game title: "') do ( 
set MTITLE=%%y
)
set MTITLE=%MTITLE: =%
set MTITLE=%MTITLE:'=%
set MAPNAME="%MAPDIR%\%DATESTAMP%_%TIMESTAMP: =0%_OBLIGE_%MTITLE%_%length%_%game%_%size%_%theme%.WAD"
move %obligebatchdir%\tempmap.wad %MAPNAME% > NUL

::timeout /t 2 > NUL
if /I exist %mapname% (
echo %MAPNAME% successfully created.
echo %MAPNAME% successfully created. >> %MAPDIR%\GenerateLog.txt
) else (
echo creation failed...
pause
goto quit
)

:ask
set /p Launch="Launch ZDL and play map?(Y/N) "
If /I "%launch%" == "y" goto mod
if /I "%launch%" == "n" goto delete
goto ask


:mod
cls
set "mod="
set "LaunchQ="
echo Choose ZDL (0-6 or Custom ZDL Name):
echo 0) Random Choice
echo 1) BPV9
echo 2) PB3
echo 3) BDv21
echo 4) Vanilla
echo 5) Beautiful Doom
echo 6) BD Platinum
::echo 6) Custom...
set /p mod="Enter Choice: "
If /I "%mod%"=="0" goto randmod
If /I "%mod%"=="1" set mod=BPV9& goto launch
if /I "%mod%"=="2" set mod=PB3& goto launch
if /I "%mod%"=="3" set mod=BDv21& goto launch
if /I "%mod%"=="4" set mod=Vanilla& goto launch
if /I "%mod%"=="5" set mod=BeautifulDoom& goto launch
if /I "%mod%"=="6" set mod=BDPlatinum& goto launch
goto launch
::If /I "%mod%"=="6" goto customzdl
CLS
ECHO PLEASE ENTER VALID CHOICE
goto mod

:customzdl
set "mod="
set /p mod="Enter ZDL name: "
if not defined mod goto customzdl
goto launch

:randmod
set "mod="
set /a num1=%random% %%5
if %num1%==0 set mod=BPV9
if %num1%==1 set mod=PB3
if %num1%==2 set mod=BDv21
if %num1%==3 set mod=Vanilla
if %num1%==4 set mod=BeautifulDoom
if %num1%==4 set mod=BDPlatinum

:launch
Echo ZDL = %mod%
set "skill=UDVBrutal"
Echo Default Skill = "UDVBrutal"
set /p skill="Enter Skill Level (0-9 or Name): "
IF "%game%" == "doom1" ( 
  %ZDLDIR%\ZDL.exe %DOOMDIR%\%mod%.ZDL %MAPNAME% +MAP E1M1 -SKILL %skill%
) ELSE IF "%game%" == "ultdoom" (
  %ZDLDIR%\ZDL.exe %DOOMDIR%\%mod%.ZDL %MAPNAME% +MAP E1M1 -SKILL %skill% 
) ELSE (
  %ZDLDIR%\ZDL.exe %DOOMDIR%\%mod%.ZDL %MAPNAME% +MAP MAP01 -SKILL %skill%
)

:launch2
set /p LaunchQ="Play %MAPNAME% again?(Y/N) "
If /I "%LaunchQ%" == "y" goto mod
if /I "%LaunchQ%" == "n" goto delete
goto launch2

:delete
set /p keep="Keep %MAPNAME%?(Y/N) "
If /I "%keep%" == "y" goto restart
if /I "%keep%" == "n" del %mapname% && goto restart
goto delete


:restart
set /p restart="Make another?(Y/N) "
If /I "%restart%" == "y" goto verify
If /I "%restart%" == "n" goto quit
goto restart

:quit
exit /b
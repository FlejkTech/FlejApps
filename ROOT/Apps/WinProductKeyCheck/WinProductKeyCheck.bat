@echo off
color 0B
title WinProductKeyCheck

:menu
echo 1. English
echo 2. Polish (Polski)
echo 3. Manually
echo 4. Exit
set /p wybieram:={1,2,3}:
if %wybieram:%==1 goto en
if %wybieram:%==2 goto pl
if %wybieram:%==3 goto manually
if %wybieram:%==4 goto exit


:en
cls
title WinProductKeyCheck EN \ US
color 1F
echo --------------------------------------
echo ------- WinProductKeyCheck -----------
echo --------------Author -----------------
echo ----------- Flejkersik ---------------
echo.
echo.
echo.
echo 1. Check Key
echo 2. Exit
set /p wybieram:={1,2}:
if %wybieram:%==1 goto CK
if %wybieram:%==2 goto exit


:CK
cls
wmic path softwarelicensingservice get OA3xOriginalProductKey
echo click random key in keyboard to exit
pause>nul
exit


:pl
cls
title WinProductKeyCheck PL
color 4F
echo --------------------------------------
echo ------- WinProductKeyCheck -----------
echo --------------Author -----------------
echo ----------- Flejkersik ---------------
echo.
echo.
echo.
echo 1. Sprawdz Klucz
echo 2. Exit
set /p wybieram:={1,2}:
if %wybieram:%==1 goto CK2
if %wybieram:%==2 goto exit


:CK2
cls
wmic path softwarelicensingservice get OA3xOriginalProductKey
echo Kliknij byle jaki klawisz aby wyjsc
pause>nul
exit

:manually
cls
echo PL
echo kliknij Win + R Na Klawiaturze
echo Nastepnie wpisz CMD
echo i skopiuj to wmic path softwarelicensingservice get OA3xOriginalProductKey
echo i nastepnie wklej do cmd i klinij enter
echo.
echo EN \ US
echo Click Win + R In Keyboard
echo next type CMD
echo And Copy this wmic path softwarelicensingservice get OA3xOriginalProductKey
echo And Next Paste to cmd And Enter
pause>nul

:: start macro
@echo off
setlocal enabledelayedexpansion
chcp 65001 > nul
cd %~dp0

:: Echo colours
set "grey=[90m"
set "red=[91m"
set "green=[92m"
set "yellow=[93m"
set "blue=[94m"
set "magenta=[95m"
set "cyan=[96m"
set "white=[97m"

set "repo_link=https://github.com/NegativeZero01/SkibiDefenseMacro-v2"


:: if script and executable exist, run the macro
if exist "macros\sdm-v2.ahk" (
	if exist "ahk\AutoHotkey364.exe" (
		start "" "%~dp0ahk\AutoHotkey64.exe" "%~dp0macros\sdm-v2.ahk" %*
		exit
	) else (set "exe-missing=1")
) else (set "sdm-missing=1")

:: missing files
if "%exe-missing%" == "1" (
	echo %red%Failed to find the "AutoHotkey64" (or AutoHotkey64.exe) file in the "ahk" folder^^!
	echo This is most likely due to a third-party antivirus deleting the file, or a corrupted .zip file. Try following these steps to fix the issue:
	echo 1. Re-install the macro from the official GitHub (%repo_link%) and check that "AutoHotkey64.exe" exists in the submacros folder
	echo 2. Disable any third-party antivirus software ^(or add the Skibi Defense Macro folder as an exception^)
	echo 3. Run Start (or Start.bat)
	echo.
	echo Note: Both Skibi Defense Macro and AutoHotkey are safe and should work fine with Microsoft Defender.%reset%^>
	echo Join the Discord server for support: discord.gg/Nfn6czrzbv/%reset%
	echo.
	<nul set /p "=%grey%Press any key to exit . . . %reset%"
		pause >nul
	exit
)

if "%sdm-missing%" == "1" (
	echo %red%Failed to find the "sdm-v2.ahk" file in the "macros" folder^^!
	echo This is most likely due to a third-party antivirus deleting the file, or a corrupted .zip file. Try following these steps to fix the issue:
	echo 1. Re-install the macro from the official GitHub (%repo_link%) and check that "sdm-v2.ahk" exists in the submacros folder
	echo 2. Disable any third-party antivirus software ^(or add the Skibi Defense Macro folder as an exception^)
	echo 3. Run Start (or Start.bat)
	echo.
	echo Note: Both Skibi Defense Macro and AutoHotkey are safe and should work fine with Microsoft Defender.%reset%^>
	echo Join the Discord server for support: discord.gg/Nfn6czrzbv/%reset%
	echo.
	<nul set /p "=%grey%Press any key to exit . . . %reset%"
		pause >nul
	exit
)

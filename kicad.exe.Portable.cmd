@echo off

echo %PATH%

set USERPROFILE=%~dp0USERPROFILE
set DESKTOP=%USERPROFILE%\Desktop
set APPDATA=%USERPROFILE%\AppData\Roaming
set LOCALAPPDATA=%USERPROFILE%\AppData\Local

set KICAD_CONFIG_HOME=%~dp0KICAD_CONFIG_HOME
set KICAD_DOCUMENTS_HOME=%~dp0KICAD_DOCUMENTS_HOME

echo %USERPROFILE%
echo %DESKTOP%
echo %APPDATA%
echo %LOCALAPPDATA%
echo %KICAD_CONFIG_HOME%
echo %KICAD_DOCUMENTS_HOME%

if not exist %USERPROFILE% (
	mkdir %USERPROFILE%
)

if not exist %DESKTOP% (
	mkdir %DESKTOP%
)

if not exist %APPDATA% (
	mkdir %APPDATA%
)

if not exist %LOCALAPPDATA% (
	mkdir %LOCALAPPDATA%
)

if not exist %KICAD_CONFIG_HOME% (
	mkdir %KICAD_CONFIG_HOME%
)

if not exist %KICAD_DOCUMENTS_HOME% (
	mkdir %KICAD_DOCUMENTS_HOME%
)

start kicad.exe

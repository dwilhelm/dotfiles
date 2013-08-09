@echo off

setlocal

for %%i in (mercurial.ini .hgignore .vimrc .gitconfig .gitignore) do @(
	copy /Y %%i "%USERPROFILE%"
)

set PSPROFILEDIR=%USERPROFILE%\My Documents\WindowsPowerShell
if not exist "%PSPROFILEDIR%" (
    mkdir "%PSPROFILEDIR%"
)
copy /Y Microsoft.PowerShell_profile.ps1 "%PSPROFILEDIR%"

endlocal

@echo off

for %%i in (mercurial.ini .vimrc) do @(
	copy /Y %%i "%USERPROFILE%"
)

@echo off

for %%i in (mercurial.ini .hgignore .vimrc) do @(
	copy /Y %%i "%USERPROFILE%"
)

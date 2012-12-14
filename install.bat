@echo off

for %%i in (mercurial.ini .hgignore .vimrc .gitconfig .gitignore) do @(
	copy /Y %%i "%USERPROFILE%"
)

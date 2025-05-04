@echo off
setlocal enabledelayedexpansion

for /f "delims=" %%d in ('dir /b /ad "question*" ^| findstr /r "question[0-9]$"') do (
    set "folder=%%d"
    set "num=!folder:~-1!"
    if !num! LEQ 9 (
        ren "!folder!" "question0!num!"
    )
)

echo Successfully renamed folders (question1 → question01, etc.).
pause
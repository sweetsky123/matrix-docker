@echo off
set /p commitMessage="Enter commit message: "

git add .
git commit -m "%commitMessage%"
git push -u origin main
git push -u cnb HEAD:main

if %errorlevel% neq 0 (
    echo "Git operation failed. Please check for errors."
) else (
    echo "Git operation successful."
)

pause

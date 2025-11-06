@echo off
:: ================================================
:: Upload ClickOnce publish to GitHub Pages
:: ================================================
cd /d "D:\Shadi\PUBLISHED_SOFTWARE"

:: Optional version prompt
set /p VERSION=Enter version number (e.g. 1.6.0.0): 

echo ================================================
echo Committing and pushing version %VERSION% ...
echo ================================================

git add -A
git commit -m "Publish v%VERSION%"
git push origin main

echo ================================================
echo ✅ Done! Your update is now live at:
echo https://shadielshazly.github.io/3DCP/
echo ================================================
pause
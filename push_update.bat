@echo off
setlocal enabledelayedexpansion

echo ================================================
echo Deploying new version to GitHub Pages
echo ================================================

:: Set your local publish folder path
set PUBLISH_FOLDER=D:\Shadi\PUBLISHED_SOFTWARE

:: Navigate to the publish folder
cd /d "%PUBLISH_FOLDER%"

:: === Step 1: Auto-detect version from .application file ===
for /f "tokens=2 delims== " %%a in ('findstr /i "version=" *.application') do (
    set ver=%%a
    set ver=!ver:"=!
    set ver=!ver:>=!
    set ver=!ver:<=!
)
echo Detected version: %ver%

:: === Step 2: Commit and push ===
echo.
echo Committing and pushing version %ver% ...
echo ================================================================

git add .
git commit -m "Auto update: version %ver%"
git push -u origin main

echo ================================================================
echo ✅ Done! Version %ver% is now live at:
echo https://shadielshazly.github.io/3DCP/
echo ================================================================

pause
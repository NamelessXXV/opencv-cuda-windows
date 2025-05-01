@echo off
setlocal EnableDelayedExpansion

:: Prompt for the username
set /p username=Enter your Windows username:

:: Build the full lines
set "line1=import os"
set "line2="
set "line3=BINARIES_PATHS = ["
set "line4=    os.path.join('C:/Users/!username!/Downloads/opencv-build/install', 'x64/vc17/bin'),"
set "line5=    os.path.join(os.getenv('CUDA_PATH', 'C:/Program Files/NVIDIA GPU Computing Toolkit/CUDA/v12.8'), 'bin')"
set "line6=] + BINARIES_PATHS"

:: Write to cv2/config.py
(
    echo !line1!
    echo !line2!
    echo !line3!
    echo !line4!
    echo !line5!
    echo !line6!
) > "cv2\config.py"

echo File written to cv2\config.py successfully.

:: Build the full line using delayed expansion
set "line1=PYTHON_EXTENSIONS_PATHS = ["
set "line2=    os.path.join('C:/Users/!username!/AppData/Local/Programs/Python/Python311/Lib/site-packages/cv2', 'python-3.11')"
set "line3=] + PYTHON_EXTENSIONS_PATHS"

:: Write to the file line by line
(
    echo !line1!
    echo !line2!
    echo !line3!
) > "cv2\config-3.11.py"

echo File written to cv2\config-3.11.py successfully.
:: Copy cv2 folder to site-packages
xcopy /E /I /Y cv2 "C:\Users\%username%\AppData\Local\Programs\Python\Python311\Lib\site-packages\cv2"
echo Installed cv2 to C:\Users\%username%\AppData\Local\Programs\Python\Python311\Lib\site-packages\cv2

:: Copy opencv-build folder to user's home directory
xcopy /E /I /Y opencv-build "C:\Users\%username%\opencv-build"
echo Installed opencv-build to C:\Users\%username%\opencv-build
pause


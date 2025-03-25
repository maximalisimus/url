@echo off
cd /d "%~dp0fish-speech"
call "..\fishenv\conda\condabin\conda.bat" activate "..\fishenv\env"
 
REM Удаляем текущую версию numpy (если установлена) и устанавливаем требуемую версию (<2)
pip uninstall -y numpy
pip install "numpy<2"
 
python app.py
pause



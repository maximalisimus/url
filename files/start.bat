@echo off
cd /d "%~dp0fish-speech"
call "..\fishenv\conda\condabin\conda.bat" activate "..\fishenv\env"
 
REM ������� ������� ������ numpy (���� �����������) � ������������� ��������� ������ (<2)
pip uninstall -y numpy
pip install "numpy<2"
 
python app.py
pause



@echo off
setlocal enabledelayedexpansion

TITLE ooba-booga
cd /d "E:\text-generation-webui"
call conda activate textgen
call python -c "import sys; print('Python ' + sys.version)"
echo %CONDA_PREFIX%
call python server.py --model-menu --api --chat-buttons --api-port 5101
call conda deactivate

pause

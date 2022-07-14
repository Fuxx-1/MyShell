chcp 65001
call cls
@echo off
echo -----按任意键开始-----
pause > nul
cd  %~dp0
call hexo clean
echo -----命令执行结束-----
pause > nul
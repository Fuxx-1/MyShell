@echo off
chcp 65001 > nul
cd  %~dp0
call hexo clean
call hexo g
call hexo s
echo -----命令执行结束-----
pause > nul
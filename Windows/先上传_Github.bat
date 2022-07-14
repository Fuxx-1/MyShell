chcp 65001
call cls
@echo off
echo -----按任意键开始-----
pause > nul
call xcopy D:\Programing\MyMarkdown\MyBlog\ D:\Programing\Blog\source\_posts\ /Y
echo -----上传中。。。-----
setlocal enabledelayedexpansion
set file=D:\Programing\Blog\_config.yml
set file_tmp=D:\Programing\Blog\_config_tmp.yml
set source1=#repo: git@github.com:
set source2=repo: git@Fuxx:fuxx-1/fuxx-1.git

set replaced1=repo: git@github.com:Fuxx-1/fuxx-1.github.io.git
set replaced2=#repo: git@gitee.com:

cd D:\Programing\Blog\
for /f "delims=" %%i in (%file%) do (
    set str=%%i
        set "str=!str:%source1%=%replaced1%!"
        set "str=!str:%source2%=%replaced2%!"
        echo !str!>>%file_tmp%
)
move "%file_tmp%" "%file%"
call hexo clean
call hexo g -d
echo -----命令执行结束-----
pause > nul
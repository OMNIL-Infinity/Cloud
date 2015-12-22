@echo off
cd %~dp0
if [%~2] != [] goto arg
:returnarg
git sync
git add -A
git commit -m %~1%~2
git push origin master
goto eof

:arg
set arg=" -m %~2"
echo " -m %~2"
goto returnarg

:eof

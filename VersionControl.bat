@echo off
cd %~dp0
git sync
git add -A
git commit -m %~1 %~2
git push origin master

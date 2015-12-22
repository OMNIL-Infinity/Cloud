@echo off
cd %~dp0
cp -r "Local/]RobotC" .
git sync
git add -A
git commit -m %1
git push origin master

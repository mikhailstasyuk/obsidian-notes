cd /D "%~dp0"
git status
git add --all
git commit -m "$(date)"
git push
pause
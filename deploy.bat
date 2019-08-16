@echo off
npm run build&&cd dist&&git init&&git add -A&&git commit -m 'deploy'&&git push -f https://github.com/dealenx/task-frontend-makeagency.git master:gh-pages&&cd ..
npm run build

cd dist

git init
git add -A
git commit -m 'deploy'


git push -f git@github.com:delaenx/task-frontend-makeagency.git master:gh-pages

cd -
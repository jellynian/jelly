rm -fr ./docs/   ./public/
hugo --theme=jelly
mv ./public/   ./docs/
git add --all
git commit -m "add new post"
git push origin master




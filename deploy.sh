rm -fr ./doc/   ./public/
hugo --theme=jelly
mv ./public/   ./doc/
git add --all
git commit -m "add new post"
git push origin master




cd ./public
ls  | grep -v CNAME | xargs rm -fr
cd ..
hugo --theme=jelly
git add --all
git commit -m "update blog by deply script"
git push origin develop
git subtree push --prefix=public  origin master
rsync -avzH --delete  ./public/  /usr/share/nginx/blog.labchan.com/   

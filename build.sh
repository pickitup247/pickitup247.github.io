git checkout master
mdbook build
mv book/* . -r
git add .; git commit -m 'init'; git push origin master


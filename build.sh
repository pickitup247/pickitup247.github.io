git checkout master
mdbook build
mv book/* .
git add .; git commit -m 'init'; git push origin master


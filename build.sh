git checkout master
mdbook build
mv book/* . -R
git add .; git commit -m 'init'; git push origin master


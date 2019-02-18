git checkout master
mdbook build
mv -R book/* .
git add .; git commit -m 'init'; git push origin master


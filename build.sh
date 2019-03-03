git checkout master
mdbook build
cp -R book/* .
git add .; git commit -m 'init'; git push origin master


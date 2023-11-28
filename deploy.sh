#!/usr/bin/env sh

# abort on errors
set -e

# build
yarn build

# navigate into the build output directory
cd dist

# deploying to a custom domain
echo 'www.jannisce.com' > CNAME

git init
git checkout -b main
git add -A
git commit -m 'deploy'

# deploying to https://<USERNAME>.github.io
git push -f git@github.com:jannisce/jannisce.github.io.git main

cd -
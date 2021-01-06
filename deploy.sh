#!/usr/bin/env sh

# abort on errors
set -e

# increase node space allocation
export NODE_OPTIONS="--max-old-space-size=16384"

# build
yarn docs:build

# navigate into the build output directory
cd docs/.vuepress/dist

echo 'User-agent: *
Disallow:
Sitemap: https://nonasoftware.github.io/sitemap.xml
Host: https://nonasoftwae.github.io' > robots.txt

git init
git add -A
git commit -m 'deploy'

git push -f git@github.com:nonasoftware/nonasoftware.github.io.git master

cd -
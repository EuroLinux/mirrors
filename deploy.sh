#!/bin/bash
# description: EuroLinux content deployment tool.

set -e

npm run docs:build || yarn run docs:build || yarnpkg run docs:build

pushd docs/.vuepress/dist

git init
git add -A
git commit -m 'deploy test'

#git push -f git@github.com:EuroLinux/mirrors.git master:gh-pages

popd

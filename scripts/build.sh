#!/bin/bash
set -eo pipefail

yarn build

cd build

git init
git remote add origin git@github.com:thockco/docs.git
git add .
git commit -m 'Deploy docs'
git push -f origin HEAD:refs/heads/gh-pages

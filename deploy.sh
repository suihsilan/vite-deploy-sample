#!/usr/bin/env sh

# 当发生错误时中止脚本
set -e

# 构建
npm run build

# cd 到构建输出的目录下
cd dist

# place .nojekyll to bypass Jekyll processing
echo > .nojekyll

# 部署到自定义域域名
# echo 'www.example.com' > CNAME

git init
git checkout -B main
git add -A
git commit -m 'deploy'

# 部署到 https://suihsilan.github.io
# git push -f https://github.com/suihsilan/vite-deploy-sample.git main

# 部署到 https://suihsilan.github.io/vite-deploy-sample
git push -f https://github.com/suihsilan/vite-deploy-sample.git main:gh-pages



cd -
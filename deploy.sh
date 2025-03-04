#!/usr/bin/env sh

# 에러가 발생될 경우 스크립트 실행을 중지
set -e

# 앱 빌드
npm run build

# 빌드된 파일이 존재하는 dist 디렉터리로 이동
cd dist

# CNAME 파일을 이용해 커스텀 도메인을 지정할 수도 있습니다.
# echo 'www.example.com' > CNAME

# git init
# git checkout main
git add --all
git commit -m 'deploy'

# https://<USERNAME>.github.io 에 배포
git push origin main

# https://<USERNAME>.github.io/<REPO> 에 배포
# git push -f git@github.com:<USERNAME>/<REPO>.git main:gh-pages

cd -
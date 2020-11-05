#!/bin/sh
export GIT_COMMITTER_EMAIL="flonowa@outlook.com"
export GIT_COMMITTER_NAME="florian"
git config --add remote.origin.fetch +refs/heads/*:refs/remotes/origin/* 
git fetch --all 
git checkout main 
git merge --no-ff "test"
git push @github.com/">https://9afdf03c87a082a531cbed1e7c19e380ae0eb1ac@github.com/vegantofuboy/ansible_role_baseline>.git

if [ "$TRAVIS_BRANCH" != "dev" ]; then 
    exit 0;
fi
export GIT_COMMITTER_EMAIL="flo@out.com"
export GIT_COMMITTER_NAME="florian"
git config --add remote.origin.fetch +refs/heads/*:refs/remotes/origin/* || exit
git fetch --all || exit
git checkout main || exit
git merge --no-ff "$TRAVIS_COMMIT" || exit
git push https://travisci:${GITHUB_TOKEN}@github.com/vegantofuboy/ansible_role_baseline.git

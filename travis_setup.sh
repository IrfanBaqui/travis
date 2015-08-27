#!/bin/bash

# - CURR_BRANCH=git rev-parse --abbrev-ref HEAD
$CURR_BRANCH=$(git rev-parse HEAD) #SHA of current branch (not deploy branch)
git rev-parse develop
if [[ "$var2" =~ "$var1" ]]; then
   echo "pass"
else
   echo "fail"
fi
git show --name-only --pretty=oneline
#- git show --pretty --name-only $CURR_BRANCH
git clone https://github.com/IrfanBaqui/travis
pwd
cd travis
pwd
echo $TRAVIS_BRANCH
echo $TRAVIS_BUILD_DIR
echo $TRAVIS_COMMIT
echo $TRAVIS_PULL_REQUEST
echo $TRAVIS_REPO_SLUG
git checkout master #should be latest release
git checkout -b migration_test_branch_latest_release
git rm -r migrations
git branch -a
git checkout remotes/origin/latest_release -- migrations
#- git --no-pager diff --name-only FETCH_HEAD $(git merge-base FETCH_HEAD master)
cat .git/config
#- git checkout ${CURR_BRANCH} -- migrations
npm install
npm test
# - git clone -b test_branch --single-branch https://github.com/IrfanBaqui/travis
# after_script:
#   - git config credential.helper "store --file=.git/credentials"
#   - echo "https://${GH_TOKEN}:@github.com" > .git/credentials
#   - node ./node_modules/grunt-cli/bin/grunt release
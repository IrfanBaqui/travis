#!/bin/bash

# mkdir testdir;
# git add .;
# git commit -m "made dir";
# git push origin master;

# echo "Hello there!";

git clone -b test_branch --single-branch git@github.com:IrfanBaqui/travis.git

# if [[ $TRAVIS_BRANCH == '1.0.-stable' ]]
#   cd test/dummy
#   rake db:schema:load
# else
#   cd spec/dummy
#   rake db:schema:load
# fi
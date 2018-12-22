#!/bin/sh

cd $HOME
git clone --recurse-submodules --branch $TRAVIS_BRANCH https://github.com/gerardo-junior/asterismo.git
cd asterismo
git config user.email "bot@gerardo-junior.com"
git config user.name "Bot of gerardo"
git submodule update --remote api
git add api
git commit -m "TRAVIS asterismo api #${TRAVIS_BUILD_NUMBER} - Updating submodule api on ${TRAVIS_BRANCH} branch"
git push --force --repo https://bot-of-gerardo:${GITHUB_BOT_AUTH_TOKEN}@github.com/gerardo-junior/asterismo
cd ../ 
rm -rf asterismo
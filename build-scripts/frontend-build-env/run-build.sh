#!/bin/bash
set -e

# install nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# build frontend
cd home-assistant-polymer
nvm install
nvm use
yarn
./node_modules/.bin/bower install --allow-root
npm install -g gulp-cli
gulp hassio-es5

# prepare data
mkdir -p ../hassio/api/panel

cp -f build-hassio/index.html ../hassio/api/panel/index.html
gzip -f -k -9 ../hassio/api/panel/index.html

cp -f build-hassio/hassio-app.html ../hassio/api/panel/hassio-app.html
gzip -f -k -9 ../hassio/api/panel/hassio-app.html

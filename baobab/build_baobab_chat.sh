#!/bin/bash
cd ..
source ~/.nvm/nvm.sh
nvm install 8.8.1 && nvm use 8.8.1
meteor npm install && meteor build --headless --architecture os.linux.x86_64 --directory ~/build
cp ./baobab/build_assets/* ./baobab/build_assets/.[!.]* ~/build/bundle/ -r
cd ~/build/bundle/programs/server && npm i
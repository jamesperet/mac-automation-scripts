# Set permissions to the node modules folder
sudo chown -R $(whoami) ~/.npm
sudo chown -R $(whoami) /usr/local/lib/node_modules/
# more info: https://docs.npmjs.com/getting-started/fixing-npm-permissions

npm install -g grunt-cli
npm install -g serve


# Ruby configured
brew install redis
brew install pgcli
#brew install go

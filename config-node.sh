# Load installer script dependencies
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
source $DIR/core.sh

# Set permissions to the node modules folder
# sudo chown -R $(whoami) ~/.npm
# sudo chown -R $(whoami) /usr/local/lib/node_modules/
# more info: https://docs.npmjs.com/getting-started/fixing-npm-permissions

install_npm_package "grunt"
install_npm_package "grunt-cli"
install_npm_package "grunt-contrib-concat"
install_npm_package "grunt-contrib-copy"
install_npm_package "grunt-contrib-cssmin"
install_npm_package "grunt-contrib-jshint"
install_npm_package "grunt-contrib-nodeunit"
install_npm_package "grunt-contrib-qunit"
install_npm_package "grunt-contrib-uglify"
install_npm_package "grunt-contrib-watch"
install_npm_package "grunt-filerev"
install_npm_package "grunt-serve"
install_npm_package "grunt-sftp-deploy"
install_npm_package "grunt-usemin"
install_npm_package "grunt-wiredep"
install_npm_package "jshint-stylish"
install_npm_package "bower"
install_npm_package "grunt-bower"
install_npm_package "yo"
install_npm_package "serve"
install_npm_package "testacular"
install_npm_package "uglifyjs"
install_npm_package "requirejs"
install_npm_package "slap"
install_npm_package "peerflix"
install_npm_package "speed-test"
install_npm_package "ionic"

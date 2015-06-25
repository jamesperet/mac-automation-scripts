printf "\n\033[104mInstall Script\033[49m\n"
printf "by James Peret - http://jamesperet.com\n\n"

# Load installer script dependencies
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
source $DIR/core.sh

# Install xCode Command Line Tools
echo "- Intalling command line tools"
xcode-select --install

# Install all Max OS X Updates
echo "- Installing Mac OSX Updates"
sw_vers |grep ProductVersion
sudo softwareupdate -i -a
sw_vers |grep ProductVersion


# command line programs

# Atom
tput civis -- invisible
install_app atom Atom.app
install_app craxxxp Crap.app

echo "node\t\t\t\t$(echo_if $(program_is_installed node))"
#echo "grunt\t\t\t\t$(echo_if $(program_is_installed grunt))"
#echo "testacular\t\t\t$(echo_if $(program_is_installed testacular))"
#echo "uglifyjs\t\t\t$(echo_if $(program_is_installed uglifyjs))"
#echo "requirejs\t\t\t$(echo_if $(program_is_installed r.js))"

# local npm packages
echo "grunt\t\t\t\t$(echo_if $(npm_package_is_installed grunt))"
echo "serve\t\t\t\t$(echo_if $(npm_package_is_installed serve))"

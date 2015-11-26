clear
printf "\n\033[104mInstall Script\033[49m\n"
printf "by James Peret - http://jamesperet.com\n\n"

# Load installer script dependencies
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
source $DIR/core.sh

install_command_line_tools
install_mac_osx_updates


# command line programs

# Atom
tput civis -- invisible
install_app atom Atom.app
install_app craxxxp Crap.app

echo "node$(echo_if $(program_is_installed node))"
echo "grunt$(echo_if $(program_is_installed grunt))"
echo "testacular$(echo_if $(program_is_installed testacular))"
echo "uglifyjs$(echo_if $(program_is_installed uglifyjs))"
echo "requirejs$(echo_if $(program_is_installed r.js))"

# local npm packages
echo "grunt\t\t\t\t$(echo_if $(npm_package_is_installed grunt))"
echo "serve\t\t\t\t$(echo_if $(npm_package_is_installed serve))"

function install_command_line_tools {
  echo "- Intalling command line tools"
  xcode-select --install
}

function install_mac_osx_updates {
  echo "- Installing Mac OSX Updates"
  sw_vers |grep ProductVersion
  sudo softwareupdate -i -a
  sw_vers |grep ProductVersion
}

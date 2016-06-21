clear
printf "\n\033[104mInstall Script\033[49m\n"
printf "by James Peret - http://jamesperet.com\n\n"

# Load installer script dependencies
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
source $DIR/core.sh

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

function install_homebrew {
  echo "- Installing homebrew"
  ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"
  brew update
}

function install_git {
  echo "- Installing git"
  #sudo port install git-core +svn +doc +bash_completion +gitweb
  brew install git
}

function install_cask {
  echo "- Installing brew cask"
  brew tap phinze/cask
  brew install brew-cask
}

function install_rvm {
  echo "- Installing RVM - Ruby Version Manager"
  \curl -L https://get.rvm.io | bash -s stable
}

function install_nvm {
  echo "Installing NVM - Node Version Manager"
  #curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.25.4/install.sh | bash
  brew install nvm
  source $(brew --prefix nvm)/nvm.sh
}

function install_node {
  echo "- Installing node.js 0.10"
  # brew cask install --caskroom="/opt/homebrew-cask/Caskroom" node
  nvm install 0.10
  nvm use 0.10
}

function install_zShell {
  echo "- Installing zShell with dotfiles"
  cd
  git clone https://github.com/jamesperet/dotfiles.git
  cd dotfiles
  sh makesymlinks.sh
}

function install_youtube_dl {
  echo "- Installing youtube-dl"
  sudo curl https://yt-dl.org/downloads/2013.09.24.2/youtube-dl -o /usr/local/bin/youtube-dl
  sudo chmod a+x /usr/local/bin/youtube-dl
}


function install_ImageMagik {
  echo "- Installing ImageMagik"
  brew install pkgconfig
  brew install imagemagick
}

function install_tmux {
  echo "- Installing tmux"
  brew install tmux
}

function install_teamocil {
  echo "- Installing teamocil"
  gem install teamocil
  mkdir $HOME/.teamocil
  cp teamocil/avalanche.yml $HOME/.teamocil/avalanche.yml
}

function install_redis {
  echo "- Installing Redis"
  brew install redis
}

function install_pgcli {
  echo "- Installing PostGres CLI"
  brew install pgcli
}

# Run Functions
tput civis -- invisible
install_command_line_tools
install_mac_osx_updates
install_git
install_homebrew
install_cask
install_rvm
install_nvm
install_node
install_youtube_dl
install_ImageMagik
install_tmux
install_teamocil
install_redis
install_pgcli
tput cnorm

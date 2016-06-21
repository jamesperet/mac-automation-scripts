#!/bin/bash

# Functions ==============================================

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
LOG=$DIR/log.txt
function app_is_installed {
  local file1="/Applications/$1/"
  local file2="/opt/homebrew-cask/Caskroom/$2/latest/$1/"
  if [ -d  "$file1" ] || [ -d  "$file2" ]
  then
  	local return_=1
  else
    local return_=0
  fi
  echo "$return_"
}


# return 1 if global command line program installed, else 0
# example
# echo "node: $(program_is_installed node)"
function program_is_installed {
  # set to 1 initially
  local return_=1
  # set to 0 if not found
  type $1 >/dev/null 2>&1 || { local return_=0; }
  # return value
  echo "$return_"
}

# return 1 if local npm package is installed at ./node_modules, else 0
# example
# echo "gruntacular : $(npm_package_is_installed gruntacular)"
function npm_package_is_installed {
  # set to 1 initially
  local return_=1
  # set to 0 if not found
  ls /usr/local/bin | grep $1 >/dev/null 2>&1 || { local return_=0; }
  # return value
  echo "$return_"
}

# display a message in red with a cross by it
# example
# echo echo_fail "No"
function echo_fail {
  # echo first argument in red
  printf "\e[31m✘ ${1}"
  # reset colours back to normal
  echo "\033[0m"
}

# display a message in green with a tick by it
# example
# echo echo_fail "Yes"
function echo_pass {
  # echo first argument in green
  printf "\e[32m✔ ${1}"
  # reset colours back to normal
  echo "\033[0m"
}

# echo pass or fail
# example
# echo echo_if 1 "Passed"
# echo echo_if 0 "Failed"
function echo_if {
  if [ $1 == 1 ]; then
    echo_pass $2
  else
    echo_fail $2
  fi
}

function install_app {
  tput sc
  tput rc
  tput ed
  app_name_tabs "$1"
  echo "$1$tabs$(echo_if $(app_is_installed "$2"))                   "
  if [ $(app_is_installed "$1") == 0 ] && [ $(app_is_installed "$2") == 0 ]; then
    sleep 0.1
    tput cuu 1
    tput ed
    sleep 0.2
    if [[ "$2" == *".app" ]] || [[ "$2" == *".pkg" ]]; then
      echo "$1$tabs$(echo_if $(app_is_installed "$1"))   Cannot Install"
      sleep 0.1
      tput ed
    else
      echo "$1$tabs$(echo_if $(app_is_installed "$1"))   Installing... "
      echo "Installing $1" >> "$LOG"
      brew cask install "$2" >> "$LOG"
      echo "\n" >> "$LOG"
      tput cuu 1
      tput ed
      if [ $(app_is_installed "$1") == 0 ] && [ $(app_is_installed "$2") == 0 ]; then
        echo "$1$tabs$(echo_if $(app_is_installed "$1"))   Error        "
      else
        echo "$1$tabs$(echo_if $(app_is_installed "$2"))   Installed    "
      fi
      sleep 0.1
      tput ed
    fi
  fi
}

function install_program {
  tput sc
  tput rc
  tput ed
  app_name_tabs "$1"
  echo "$1$tabs$(echo_if $(program_is_installed "$1"))                   "
  if [ $(program_is_installed "$1") == 0 ]; then
    sleep 0.1
    tput cuu 1
    tput ed
    echo "$1$tabs$(echo_if $(program_is_installed "$1"))   Installing... "
    sleep 0.2
    tput cuu 1
    tput ed
    echo "$1$tabs$(echo_if $(program_is_installed "$1"))                 "
    sleep 0.1
    tput ed
  fi
}

function install_npm_package {
  tput sc
  tput rc
  tput ed
  app_name_tabs "$1"
  echo "$1$tabs$(echo_if $(npm_package_is_installed "$1"))                   "
  if [ $(npm_package_is_installed "$1") == 0 ]; then
    sleep 0.1
    tput cuu 1
    tput ed
    echo "$1$tabs$(echo_if $(npm_package_is_installed "$1"))   Installing... "
    sleep 0.2
    tput cuu 1
    tput ed
    echo "$1$tabs$(echo_if $(npm_package_is_installed "$1"))                 "
    sleep 0.1
    tput ed
  fi
}


function app_name_tabs {
  name="$1"
  size="${#name}"
  if (( $size < 8 )) ; then
    tabs="\t\t\t\t"
  fi
  if (( $size >= 8 )) && (( $size < 16 )) ; then
    tabs="\t\t\t"
  fi
  if (( $size >= 16 )) && (( $size < 24 )) ; then
    tabs="\t\t"
  fi
  if (( $size >= 24 )) && (( $size < 32 )) ; then
    tabs="\t"
  fi
}

function test {
  echo "\nALL DONE\n\n"

  {
    echo "Does it work?"
  } &> log.txt

  if hash redis-server 2>/dev/null; then
      echo "   - Redis already installed"
  else
      brew install redis
      echo "   - Redis  installed"
  fi
}

# ============================================== Functions

#!/bin/bash

clear
printf "\n\033[104mAtom IDE Installer & Configuration Script\033[49m\n"
printf "by James Peret - http://jamesperet.com\n\n"

# Load installer script dependencies
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
source $DIR/core.sh

function install_plugins {
  # install Atom Plugins
  echo "Installing Atom Plugins:"
  apm install graphite-ui
  apm install railscast-theme
  apm install browser-plus
  apm install term2
  apm install file-icons
  apm install pane-layout-plus
  apm install pigments
  apm install project-manager
  apm install project-sidebar
  #apm install git-tab-status
  apm install less-than-slash
  apm install wordcount
  apm install markdown-preview-opener
  apm install markdown-scroll-sync
  apm install maybs-quit
  apm install time-status
  apm install wakatime
  #apm install toggle-tabs
  apm install pane-info
  apm install rails-partials
}

function configure_keymap {
  echo "Configuring keymap"
  printf "
  'body':
    'f6': 'status-bar:toggle'
    'ctrl-tab': 'pane:show-next-item'
    'ctrl-shift-tab': 'pane:show-previous-item'
    'ctrl-alt-tab' : 'window:focus-next-pane'
    'ctrl-alt-shift-tab' : 'window:focus-previous-pane'
    'ctrl-alt-cmd-p' : 'project-sidebar:toggle'
  " > $HOME/.atom/keymap.cson
}

function configure_styles {
  echo "Configuring sytles"
  printf "
atom-workspace .browser-page webview {
  margin: 0px;
}

webview {
  margin: 0px;
}

.pane-info {
  margin-right: 12px;
  margin-top: 8px;
}

.right.tool-panel.panel-right {
  background-color: #2B2E31;
}

.project-sidebar.padded {
  background-color: #3a3e42;
  line-height: 32px;
  height: 40px;
  padding: 0px;
  color: #ffffff;
}

.project-sidebar.padded h1 {
  margin: 0px;
  padding: 0px;
  height: 40px;
  font-size: 13px;
  font-weight: 400;
  padding-top: 16px;
  padding-left: 8px;
}

.project-sidebar.padded li {
  padding-left: 8px;
  padding-right: 10px;
}

body {
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  /*text-rendering: optimizeLegibility; */
}

.tree-view-resizer, .editor {
  ::-webkit-scrollbar {
    width: 0.5em;
    height: 0.5em;
  }
  ::-webkit-scrollbar-track {
    background-color: #303030;
  }

  ::-webkit-scrollbar-thumb {
    background-color: lighten(#303030, 15%%);
  }
}
\n
" > $HOME/.atom/styles.less
}

function check_dependencies {
  if [ $(program_is_installed atom) ] ; then
    if [ $(program_is_installed node) ] ; then
      if [ ! $(program_is_installed apm) ] ; then
        echo "APM is not installed. Opening the Atom editor and click on Install Shell Commands."
        return false
      fi
      return true
    else
      echo "Node is not installed. Please make sure it is intalled before procedding with this script."
      return false
    fi
  else
    echo "Atom is not installed. Please make sure it is intalled before procedding with this script."
    return false
  fi
}

# Run Program
if [ check_dependencies ] ; then
  install_plugins
  configure_keymap
  configure_styles
  echo "\n\n\033[32mATOM CONFIGURED SUCCESFULLY\n\n"
fi

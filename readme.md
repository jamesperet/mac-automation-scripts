# Mac Automation Scripts

*by [James Peret](http://jamesperet.com)*

Scripts for migrating and installing software on a fresh OSX install.

### Scripts

On a fresh install, run the scripts in this order:

1. ``install.sh`` - Upgrades the system and installs dependecies like xCode command line tools and git.
2. ``config-mac.sh`` - Configures several Mac OS X settings like the dock, timezone and wallpaper.
3. ``config-node.sh`` - Installs and configures node with NVM and installs a list of packages thru NPM.
4. ``config-atom.sh`` - Install the Atom IDE, installs a plugin list and sets up several configuration files.
5. ``config-apps.sh`` - Reads a list of apps and checks if each one is installed. If the app is not installed, it trys to install it using Cask, Homebrew or NPM.

To run one of the scripts:

```bash
sh install.sh
```

### Dependecies

Install all dependecies before runing these scripts!

- xCode

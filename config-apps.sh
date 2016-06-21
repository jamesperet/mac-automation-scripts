#!/bin/bash

# Load installer script dependencies
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
source $DIR/core.sh

# Browsers
install_app "Google Chrome" "Google Chrome.app" "google-chrome"
install_app "Firefox" "Firefox.app" "firefox"
install_app "Safari" "Safari.app"
install_app "Opera" "Opera.app" "opera"

# COMMs
install_app "Skype" "Skype.app" "skype"
install_app "Slack" "Slack.app" "slack"
install_app "WhatsApp" "WhatsApp.app" "whatsapp"

# Office
install_app "Pages" "Pages.app"
install_app "Numbers" "Numbers.app"
install_app "Keynote" "Keynote.app"
install_app "Microsoft Excel" "Microsoft Excel.app"
install_app "Microsoft PowerPoint" "Microsoft PowerPoint.app"
install_app "Microsoft Word" "Microsoft Word.app"
#install_app "Gitbook Editor" "Gitbook Editor.app" "gitbook-editor"

# Design
install_app "Adobe Acrobat X Pro" "Adobe Acrobat X Pro/Adobe Acrobat Pro.app"
install_app "Adobe Bridge CS6" "Adobe Bridge CS6/Adobe Bridge CS6.app"
install_app "Adobe Illustrator CS6" "Adobe Illustrator CS6"
install_app "Adobe InDesign CS6" "Adobe InDesign CS6/Adobe InDesign CS6.app"
install_app "Adobe Photoshop CS6" "Adobe Photoshop CS6/Adobe Photoshop CS6.app"
#install_app "BrushPilot" "BrushPilot.app"
install_app "xScope" "xScope.app"
install_app "Pickr" "Pickr.app"
install_app "Sketch" "Sketch.app"
#install_app "Sketch Toolbox" "Sketch Toolbox.app"
install_app "OmniGraffle" "OmniGraffle.app"
install_app "FontLab" "FontLab VI.app"

# Libraries
install_app "Evernote" "Evernote.app" "evernote"
install_app "Google Photos Backup" "Google Photos Backup.app" "google-photos-backup"
#install_app "Aperture" "Aperture.app"
#install_app "FontCase" "FontCase.app"
#install_app "Ember" "Ember.app"

# Dev
install_app "Xcode" "Xcode.app"
install_app "Atom" "Atom.app" "atom"
install_app "Dash" "Dash.app" "dash"
install_app "iTerm" "iTerm.app" "iterm2"
install_app "Mou" "Mou.app" "mou"
install_app "Transmit" "Transmit.app" "transmit"
install_app "Postgres" "Postgres.app" "postgres"
install_app "Monodraw" "Monodraw.app" "monodraw"
install_app "Go2Shell" "Go2Shell.app" "go2shell"

# Video
install_app "Final Cut Pro" "Final Cut Pro.app"
install_app "Compressor" "Compressor.app"
install_app "Adobe After Effects CC" "Adobe After Effects CC 2014/Adobe After Effects CC 2014.app"
install_app "Adobe Premiere Pro CS6" "Adobe Premiere Pro CS6/Adobe Premiere Pro CS6.app"
install_app "ScreenFlow" "ScreenFlow.app"
install_app "Screenflick" "ScreenFlick.app"
install_app "HandBrake" "HandBrake.app" "handbrake"
install_app "HitFilm 4 Express" "HitFilm 4 Express.app"
install_app "Shotcut" "Shotcut.app" "shotcut"
install_app "Lumen" "Lumen.app"
install_app "Livestream Producer" "Livestream Producer.app" "livestream-producer"

# Audio
install_app "Logic Pro X" "Logic Pro X.app"
install_app "Main Stage" "Main Stage.app"
install_app "Arturia Moog Modular" "Arturia/Modular V2.app"
install_app "Arturia ARP 2600" "Arturia/ARP 2600 V2.app"
install_app "Arturia CS-80" "Arturia/CS-80 V2.app"
install_app "Arturia Jupiter-8" "Arturia/Jupiter-8 V2.app"
install_app "Audio Hijack" "Audio Hijack.app"
install_app "Sonic Pi" "Sonic Pi.app" "sonic-pi"
install_app "Bfxr" "Bfxr.app" "bfxr"
install_app "xAct" "xAct.app" "xact"
install_app "Soundflower" "Soundflower" "soundflower"
install_app "Reason" "Reason 8/Reason.app"
install_app "Mixlr" "Mixlr.app" "mixlr"

# Game Design/ 3D
install_app "Cinema 4D" "Cinema 4D.app"
install_app "Unity 3D" "Unity/Unity.app" "unity"
install_app "Unity Web Player" "unity-web-player" "unity-web-player"
install_app "Substance Designer" "Substance Designer.app"
install_app "Z-Brush" "zBrush.app"
install_app "Hexels" "Hexels.app"
install_app "Twine" "Twine.app" "twine"

# Utilities
install_app "1Password" "1Password.app"
install_app "Alfred 2" "Alfred 2.app"
install_app "AppCleaner" "AppCleaner.app" "appcleaner"
install_app "Dropbox" "Dropbox.app" "dropbox"
install_app "Nylas N1" "Nylas N1.app" "nylas-n1"
install_app "HyperSwitch" "HyperSwitch.app" "hyperswitch"
install_app "iScrobbler" "iScrobbler.app"
install_app "iStat Menus" "iStat Menus.app"
install_app "Sunrise" "Sunrise.app"
install_app "The Unarchiver" "The Unarchiver.app" "the-unarchiver"
install_app "Transmission" "Transmission.app" "transmission"
install_app "VLC" "VLC.app" "vlc"
install_app "VLC Remote" "VLC Remote Setup.app" "vlc-remote"
install_app "DaisyDisk" "DaisyDisk.app"
install_app "Soulver" "Soulver.app"
install_app "SerialSeeker" "SerialSeeker.app"
install_app "Wifi Explorer" "Wifi Explorer.app"
install_app "Network Radar" "Network Radar.app"
install_app "OmniPlan" "OmniPlan.app"
install_app "SiteSucker" "SiteSucker.app" "sitesucker"
install_app "OmniFocus" "OmniFocus.app"
install_app "PopcornTime" "PopcornTime.app"
install_app "RescueTime" "RescueTime.app" "rescuetime"
install_app "SleepDisplay" "SleepDisplay.app"
install_app "Spectacle" "spectacle" "spectacle"
install_app "Awaken" "Awaken.app"
install_app "ControllerMate" "ControllerMate.app" "controllermate"
install_app "iExplorer" "iExplorer.app" "iexplorer"
install_app "Path Finder" "Path Finder.app"
install_app "Lightgallery" "Lightgallery.app"

install_app "Quicklook Markdown" "qlmarkdown" "qlmarkdown"
install_app "Quicklook JSON" "quicklook-json" "quicklook-json"

# Games
install_app "Minecraft" "Minecraft.jar" "minecraft"
install_app "Kerbal Space Program" "ksp.app"

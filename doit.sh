#!/bin/sh

# Copyright (c) 2017, rockyluke
#
# Permission  to use,  copy, modify,  and/or distribute  this software  for any
# purpose  with or  without  fee is  hereby granted,  provided  that the  above
# copyright notice and this permission notice appear in all copies.
#
# THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH
# REGARD TO THIS  SOFTWARE INCLUDING ALL IMPLIED  WARRANTIES OF MERCHANTABILITY
# AND FITNESS.  IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT,
# INDIRECT, OR CONSEQUENTIAL  DAMAGES OR ANY DAMAGES  WHATSOEVER RESULTING FROM
# LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR
# OTHER  TORTIOUS ACTION,  ARISING OUT  OF  OR IN  CONNECTION WITH  THE USE  OR
# PERFORMANCE OF THIS SOFTWARE.

# https://developer.apple.com/opensource/
# https://github.com/apple
# https://www.apple.com/opensource/

# Ask for the administrator password once
sudo -v

# xcode
# https://developer.apple.com/xcode/
if [ ! -d /Library/Developer/CommandLineTools ]
then
    xcode-select --install
fi

# homebrew
# http://brew.sh/
if [ ! -x /usr/local/bin/brew ]
then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew update
    brew upgrade
    brew tap rockyluke/devops
fi

if [ -x /usr/local/bin/brew ]
then
    # csshx
    # https://github.com/brockgr/csshx
    brew list csshx > /dev/null 2>&1
    if [ ${?} -ne 0 ]
    then
	brew install csshx
    fi

    # curl
    # https://curl.haxx.se/
    brew list curl > /dev/null 2>&1
    if [ ${?} -ne 0 ]
    then
	brew install curl
    fi

    # dos2unix
    # http://waterlan.home.xs4all.nl/dos2unix.html
    brew list dos2unix > /dev/null 2>&1
    if [ ${?} -ne 0 ]
    then
	brew install dos2unix
    fi

    # emacs
    # https://www.gnu.org/software/emacs/
    brew list emacs > /dev/null 2>&1
    if [ ${?} -ne 0 ]
    then
	brew install emacs
    fi

    # gnupg2
    # https://www.gnupg.org/
    brew list gnupg2 > /dev/null 2>&1
    if [ ${?} -ne 0 ]
    then
	brew install gnupg2
	brew install gpg-agent
	brew install pinentry-mac
	cat <<EOF
################################################################################
#
#
# You need to add te following line in ${HOME}/.gnupg/gpg-agent.conf
#
# => pinentry-program /usr/local/bin/pinentry-mac
#
#
################################################################################
EOF
    fi

    # htop
    # http://hisham.hm/htop/
    brew list htop > /dev/null 2>&1
    if [ ${?} -ne 0 ]
    then
	brew install htop
    fi

    # httpie
    # http://httpie.org/
    brew list httpie > /dev/null 2>&1
    if [ ${?} -ne 0 ]
    then
	brew install httpie
    fi

    # mtr
    # https://www.bitwizard.nl/mtr/
    brew list mtr > /dev/null 2>&1
    if [ ${?} -ne 0 ]
    then
	brew search mtr
    fi

    # nmap
    # https://nmap.org/
    brew list nmap > /dev/null 2>&1
    if [ ${?} -ne 0 ]
    then
	brew install nmap
    fi

    # unrar
    # http://www.rarlab.com
    brew list unrar > /dev/null 2>&1
    if [ ${?} -ne 0 ]
    then
	brew install unrar
    fi

    # wget
    # https://www.gnu.org/software/wget/
    brew list wget > /dev/null 2>&1
    if [ ${?} -ne 0 ]
    then
	brew install wget
    fi
fi
# EOF

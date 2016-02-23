#!/bin/sh

# Copyright (c) 2016, rockyluke <rockyluke@offline.net>
#
# Permission  to use,  copy, modify,  and/or  distribute this  software for  any
# purpose  with  or without  fee  is hereby  granted,  provided  that the  above
# copyright notice and this permission notice appear in all copies.
#
# THE SOFTWARE IS PROVIDED "AS IS"  AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH
# REGARD TO  THIS SOFTWARE INCLUDING  ALL IMPLIED WARRANTIES  OF MERCHANTABILITY
# AND FITNESS.  IN NO EVENT SHALL  THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT,
# INDIRECT, OR  CONSEQUENTIAL DAMAGES OR  ANY DAMAGES WHATSOEVER  RESULTING FROM
# LOSS OF USE, DATA OR PROFITS,  WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR
# OTHER  TORTIOUS ACTION,  ARISING  OUT OF  OR  IN CONNECTION  WITH  THE USE  OR
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
fi

if [ -x /usr/local/bin/brew ]
then
    # apg
    # http://www.adel.nursat.kz/apg/
    brew list apg > /dev/null 2>&1
    if [ ${?} -ne 0 ]
    then
	brew install apg
    fi

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
	brew install homebrew/emacs/json-mode
	brew install homebrew/emacs/markdown-mode
	brew install homebrew/emacs/php-mode
    fi

    # gnupg
    # https://www.gnupg.org/
    brew list gnupg > /dev/null 2>&1
    if [ ${?} -ne 0 ]
    then
	brew install gnupg
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

    # shellcheck
    # http://www.shellcheck.net
    brew list shellcheck > /dev/null 2>&1
    if [ ${?} -ne 0 ]
    then
	brew install shellcheck
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

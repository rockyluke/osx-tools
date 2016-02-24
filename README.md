# osx-tools ![License][license-img] [![Build Status][build-img]][build-url] ![Yosemite][10-10-img] ![El Capitan][10-11-img]

# Disclaimer

Read carefully the manual before using any commands on OS X.

```bash
$ man brew
$ man man
$ man sudo
```

# Usage

It's quite simple :)

```bash
$ ./doit.sh
```

# Tools Installed

- [apg](http://www.adel.nursat.kz/apg/)
- [brew](http://brew.sh/)
- [csshx](https://github.com/brockgr/csshx)
- [curl](https://curl.haxx.se/)
- [emacs](https://www.gnu.org/software/emacs/)
- [emacs](https://www.gnu.org/software/emacs/) [dockerfile-mode](https://github.com/spotify/dockerfile-mode)
- [emacs](https://www.gnu.org/software/emacs/) [json-mode](https://github.com/joshwnj/json-mode)
- [emacs](https://www.gnu.org/software/emacs/) [markdown-mode](http://jblevins.org/projects/markdown-mode/)
- [emacs](https://www.gnu.org/software/emacs/) [php-mode](https://github.com/ejmr/php-mode)
- [gnupg](https://www.gnupg.org/)
- [htop](http://hisham.hm/htop/)
- [httpie](http://httpie.org/)
- [mtr](https://www.bitwizard.nl/mtr/)
- [nmap](https://nmap.org/)
- [shellcheck](http://www.shellcheck.net)
- [unrar](http://www.rarlab.com)
- [wget](https://www.gnu.org/software/wget/)

# Configuration

## emacs

Add to following lines to your ~/.emacs:

```lisp
(let ((default-directory  "/usr/local/share/emacs/site-lisp/"))
  (normal-top-level-add-subdirs-to-load-path))

  (autoload 'json-mode "json-mode" t)
  (add-to-list 'auto-mode-alist '("\.json$" . json-mode))

  (autoload 'markdown-mode "markdown-mode" t)
  (add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

  (autoload 'php-mode "php-mode" t)
  (add-to-list 'auto-mode-alist '("\.php$" . php-mode))
```

# Millipede

```
    ╚⊙ ⊙╝
  ╚═(███)═╝
 ╚═(███)═╝
╚═(███)═╝
 ╚═(███)═╝
  ╚═(███)═╝
   ╚═(███)═╝
```

- [developer.apple.com/opensource](https://developer.apple.com/opensource/)
- [github.com/apple](https://github.com/apple)
- [www.apple.com/opensource](https://www.apple.com/opensource/)

[license-img]: https://img.shields.io/badge/license-ISC-blue.svg
[build-img]: https://travis-ci.org/rockyluke/osx-tools.svg?branch=master
[build-url]: https://travis-ci.org/rockyluke/osx-tools
[10-10-img]: https://img.shields.io/badge/osx-10.10-green.svg
[10-11-img]: https://img.shields.io/badge/osx-10.11-green.svg

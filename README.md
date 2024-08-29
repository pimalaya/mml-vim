# 📫 MIME Meta Language [![Matrix](https://img.shields.io/matrix/pimalaya:matrix.org?color=success&label=chat)](https://matrix.to/#/#pimalaya:matrix.org)

Vim plugin for email messages written in MML, base on [MML CLI](https://github.com/pimalaya/mml).

## Installation

First you need to install the [MML CLI](https://github.com/pimalaya/mml). Then you can install this plugin with your favorite plugin manager:

### Using [packer](https://github.com/wbthomason/packer.nvim)

```lua
use "https://github.com/pimalaya/mml-vim"
```

```vim
:PackerSync
```

### Using [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'https://github.com/pimalaya/mml-vim'
```

```vim
:PlugInstall
```

## Configuration

It is highly recommanded to have those Vim options on:

```vim
syntax on
filetype plugin on
set hidden
```

### `g:mml_executable`

Defines a custom path for the MML binary. Defaults to `mml`.

## Development

The development environment is managed by [Nix](https://nixos.org/download.html). Running `nix-shell` will spawn a shell with everything you need to get started with this plugin:

```sh
# start a nix shell
$ nix-shell

# start Vim with the testing message
$ vim ./test.mml

# start Neovim with the testing message
$ nvim ./test.mml
```

## Sponsoring

[![nlnet](https://nlnet.nl/logo/banner-160x60.png)](https://nlnet.nl/project/Pimalaya/index.html)

Special thanks to the [NLnet foundation](https://nlnet.nl/project/Pimalaya/index.html) and the [European Commission](https://www.ngi.eu/) that helped the project to receive financial support from:

- [NGI Assure](https://nlnet.nl/assure/) in 2022
- [NGI Zero Entrust](https://nlnet.nl/entrust/) in 2023

If you appreciate the project, feel free to donate using one of the following providers:

[![GitHub](https://img.shields.io/badge/-GitHub%20Sponsors-fafbfc?logo=GitHub%20Sponsors)](https://github.com/sponsors/soywod)
[![PayPal](https://img.shields.io/badge/-PayPal-0079c1?logo=PayPal&logoColor=ffffff)](https://www.paypal.com/paypalme/soywod)
[![Ko-fi](https://img.shields.io/badge/-Ko--fi-ff5e5a?logo=Ko-fi&logoColor=ffffff)](https://ko-fi.com/soywod)
[![Buy Me a Coffee](https://img.shields.io/badge/-Buy%20Me%20a%20Coffee-ffdd00?logo=Buy%20Me%20A%20Coffee&logoColor=000000)](https://www.buymeacoffee.com/soywod)
[![Liberapay](https://img.shields.io/badge/-Liberapay-f6c915?logo=Liberapay&logoColor=222222)](https://liberapay.com/soywod)

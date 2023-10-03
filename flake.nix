{
  description = "Vim plugin for email messages written in MML.";

  inputs = {
    # nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs.url = "github:soywod/nixpkgs/init-mml";
    utils.url = "github:numtide/flake-utils";
    flake-compat = {
      url = "github:edolstra/flake-compat";
      flake = false;
    };
  };

  outputs = { self, nixpkgs, utils, ... }:
    utils.lib.eachDefaultSystem
      (system:
        let
          pkgs = import nixpkgs { inherit system; };
          customRC = ''
            syntax on
            filetype plugin on
          '';
        in
        rec {
          # nix build
          packages.default = pkgs.vimUtils.buildVimPlugin {
            name = "mml";
            namePrefix = "";
            src = self;
            buildInputs = with pkgs; [ mml ];
            postPatch = with pkgs; ''
              substituteInPlace plugin/mml.vim \
                --replace "mml_default_executable = 'mml'" "mml_default_executable = '${mml}/bin/mml'"
            '';
          };

          # nix develop
          devShell = pkgs.mkShell {
            buildInputs = self.packages.${system}.default.buildInputs;
            nativeBuildInputs = with pkgs; [
              # Nix LSP + formatter
              rnix-lsp
              nixpkgs-fmt

              # Vim LSP
              nodejs
              nodePackages.vim-language-server

              # Editors
              ((vim_configurable.override { }).customize {
                name = "vim";
                vimrcConfig = {
                  inherit customRC;
                  packages.myplugins = {
                    start = [ self.packages.${system}.default ];
                  };
                };
              })
              (neovim.override {
                configure = {
                  inherit customRC;
                  packages.myPlugins = {
                    start = [ self.packages.${system}.default ];
                  };
                };
              })
            ];
          };
        });
}

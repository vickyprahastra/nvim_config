# nvim_config
vicky nvim configuration


How to install

- Install nvim
- `cd` to ~/.config/
- clone this repo `git clone git@github.com:vickyprahastra/nvim_config.git`
- Rename folder `nvim_config` to `nvim`
- Install vim plug [https://github.com/junegunn/vim-plug](https://github.com/junegunn/vim-plug) 

    - install Ag requires The Silver Searcher (ag) https://github.com/ggreer/the_silver_searcher `sudo apt-get install silversearcher-ag`
    - install Rg requires ripgrep (rg) https://github.com/BurntSushi/ripgrep `sudo apt-get install ripgrep`
    - install Tags and Helptags
    - Fix nerdtree icons
        Download the package with:
- run `nvim` and run `:PlugInstall`

- Install NVM (node js version manager)
    - sudo apt update
    - curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
    - source ~/.bashrc
    - nvm --version
    - nvm ls-remote
    - nvm install [version.number]

`https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/SourceCodePro.zip`

Next, unzip the contents of the folder and copy the fonts to ~/.local/share/fonts/ with:

```
mkdir ~/.local/share/fonts
unzip SourceCodePro.zip -d ~/.local/share/fonts/
fc-cache ~/.local/share/fonts
reboot/restart system
```

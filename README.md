# My personal workflow with Nvim + Tmux

***Experience is everything!***
These settings can make you focus on your workflow and improve coding efficiency. 
You can also find this page in my [blog](https://xxblog.net/Tools/My-workflow/)
![My work flow](https://raw.githubusercontent.com/yingxiaowoxx/Blog-img/master/img/93d1e7654df592a51374330b508c1106.png)

## iTerm2 + Oh My Zsh
It is a pretty nice combination to make your terminal so much better!
### Requirement
> ***HOMEBREW***

First of all, you need [homebrew](https://brew.sh/) to manage your packages on mac.

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
Then add homebrew to your system path:
```
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/[username]/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```
> ***Packages***
- [iTerm2](https://iterm2.com/)
- [Oh My Zsh](https://ohmyz.sh/)
- [Git](https://git-scm.com/)
```bash
brew install --cask iterm2
```
```
brew install git
```
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
You can find your favourite theme in the official [document](https://github.com/ohmyzsh/ohmyzsh/wiki/Themes).
My "[PowerLevel10K](https://github.com/romkatv/powerlevel10k)" theme look like this:
![Oh my zsh](https://raw.githubusercontent.com/yingxiaowoxx/Blog-img/master/img/20230324153531.png)
## Neovim
### Requirement

> ***Packages***

- [Neovim](https://neovim.io/)
- [Nerd Font](https://www.nerdfonts.com/)
- [Ripgrep](https://github.com/BurntSushi/ripgrep)
- XCode Command Line Tools

You also need to install iTerm2, Neovim, Ripgrep and Node with homebrew.

```bash
brew install --cask iTerm2
```
```bash
brew install neovim
```
```bash
brew install ripgrep
```

> ***XCode Command Line Tools***
```bash
xcode-select --install
```
### Actions
Create a directory named "nvim":
```bash
mkdir ~/.config/nvim
```
And then just clone my respository.
The folder structure looks like this:
```
.
├── init.lua
├── lua
│   └── xx
│       ├── core
│       │   ├── colorscheme.lua
│       │   ├── keymaps.lua
│       │   └── options.lua
│       ├── plugins
│       │   ├── autopair.lua
│       │   ├── comment.lua
│       │   ├── gitsigns.lua
│       │   ├── lsp
│       │   │   ├── lspconfig.lua
│       │   │   ├── lspsaga.lua
│       │   │   ├── mason.lua
│       │   │   └── null-la.lua
│       │   ├── lualine.lua
│       │   ├── nvim-cmp.lua
│       │   ├── nvim-tree.lua
│       │   ├── telescope.lua
│       │   └── treesitter.lua
│       └── plugins-setup.lua
└── plugin
    └── packer_compiled.lua
```
It will be look like this:
![Neovim](https://raw.githubusercontent.com/yingxiaowoxx/Blog-img/master/img/20230324150528.png)
## Tmux
### Requirement
Please ensure you have installed [tmux](https://github.com/tmux/tmux/wiki) first.
```bash
brew install tmux
```
### Actions
You just need create a ".tmux.conf" file in your home directory.
```
nvim ~/.tmux.conf
```
And then copy [my config](https://github.com/yingxiaowoxx/Neovim/blob/master/.tmux.conf) into your **".tmux.conf"** file.
It will be look like this:
![Tmux](https://raw.githubusercontent.com/yingxiaowoxx/Blog-img/master/img/20230324144855.png)

# Congratulations!
Reference: @[josean](https://github.com/josean-dev/dev-environment-files) @[bryant](https://github.com/bryant-video/neovim-tutorial)

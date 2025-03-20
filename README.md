# SETUP

### Git Config
```bash
git config --global user.name "JesusTM"
git config --global user.email "jesustapiamartin@gmail.com"
git config --global core.editor "nvim"
git config --global core.pager "cat"
```
---
### ZSH 
Desde el directorio clonado «dotfiles»:
```bash
rm -rf ~/.zshrc
cp -r .zshrc ~
```
---
### ZSH Syntax Highlighting
```bash
source /home/jesus/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/zsh-syntax-highlighting/themes/rose-pine-zsh-syntax-highlighting.zsh
```
---
### Visual Studio Code 
Desde el directorio clonado «dotfiles»:
```bash
rm -rf ~/.vscode 
cp -r .vscode ~
```
---
### NVIM 
Desde el directorio clonado «dotfiles»:
```bash
rm -rf ~/.config/nvim 
cp -r nvim ~/.config
```
---
### TMUX
Desde el directorio clonado «dotfiles»:
```bash
rm -rf ~/.tmux.conf 
cp -r .tmux.conf ~
```
---
### POSHTHEME
Desde el directorio clonado «dotfiles»:
```bash
rm -rf ~/.cache/oh-my-posh/themes/JesusTM.json
cp .poshthemes/JesusTM.json ~/.cache/oh-my-posh/themes/
```

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
sudo apt install zsh
chsh -s $(which zsh)
```
Luego cerrar sesión. Finalmente
```bash
rm -rf ~/.zshrc
cp -r .zshrc ~
```
---
### Oh My ZSH
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
---
### ZSH Syntax Highlighting
Parado en ~:
```bash
cp -r ~/Desktop/dotfiles/zsh-syntax-highlighting .
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
brew install nvim
rm -rf ~/.config/nvim 
cp -r nvim ~/.config
```
---
### TMUX
Desde el directorio clonado «dotfiles»:
```bash
sudo apt install tmux
rm -rf ~/.tmux.conf 
cp -r .tmux.conf ~
```
---
### FASTFETCH
Desde el directorio clonado «dotfiles»:
```bash
sudo add-apt-repository ppa:zhangsongcui3371/fastfetch
sudo apt update
sudo apt install fastfetch
rm -rf ~/.config/fastfetch
cp -r fastfetch ~/.config 
```

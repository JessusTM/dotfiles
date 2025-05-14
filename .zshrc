export ZSH="$HOME/.oh-my-zsh"

# ------ ZSH THEME ------
ZSH_THEME="robbyrussell"

# ------ ZSH PLUGINS ------
plugins=(git)
source $ZSH/oh-my-zsh.sh
eval "$(~/.local/bin/oh-my-posh init zsh --config ~/.cache/oh-my-posh/themes/JesusTM.json)"

# ------ HOMEBREW ------
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# ------ NODE VERSION MANAGER ------
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# ------ BAT ------
alias bat='batcat'
export BAT_PAGER=''
export BAT_STYLE='plain'

# ------ CARGAR ALIAS ------ 
for file in ~/Desktop/dotfiles/alias/*.zsh; do
  source "$file"
done

# ------ ZSH SYNTAX HIGHLIGHTING ------
source /home/jesus/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/zsh-syntax-highlighting/themes/rose-pine-zsh-syntax-highlighting.zsh

# ------ DESACTIVAR BÚSQUEDA INCREMENTAL HACIA ADELANTE ------
#   Esta opción permite dada una palabra, buscar interactivamente
#   coincidencias con los comandos anteriores del historial.
#   Se desactiva por conflicto con keybind de TMUX.
bindkey -r "^S"

# ------ MAVEN ------
export PATH=$PATH:$HOME/Maven-3.9.9/bin


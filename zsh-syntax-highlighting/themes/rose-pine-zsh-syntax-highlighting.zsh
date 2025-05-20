# Rose Pine Theme (for zsh-syntax-highlighting)
#
# Paste this file's contents inside your ~/.zshrc before you activate zsh-syntax-highlighting
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main cursor)
typeset -gA ZSH_HIGHLIGHT_STYLES

# General styling
## Comments
ZSH_HIGHLIGHT_STYLES[comment]='fg=#6e6a86'
## Functions/Methods
ZSH_HIGHLIGHT_STYLES[alias]='fg=#c4a7e7'
ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=#c4a7e7'
ZSH_HIGHLIGHT_STYLES[global-alias]='fg=#c4a7e7'
ZSH_HIGHLIGHT_STYLES[function]='fg=#c4a7e7'
ZSH_HIGHLIGHT_STYLES[command]='fg=#c4a7e7'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=#c4a7e7,italic'
ZSH_HIGHLIGHT_STYLES[autodirectory]='fg=#ebbcba,italic'
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=#ebbcba'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=#ebbcba'
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]='fg=#c4a7e7'
## Built-ins
ZSH_HIGHLIGHT_STYLES[builtin]='fg=#c4a7e7'
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=#c4a7e7'
ZSH_HIGHLIGHT_STYLES[hashed-command]='fg=#c4a7e7'
## Punctuation
ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=#e0def4'
ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter]='fg=#e0def4'
ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter-unquoted]='fg=#e0def4'
ZSH_HIGHLIGHT_STYLES[process-substitution-delimiter]='fg=#e0def4'
ZSH_HIGHLIGHT_STYLES[back-quoted-argument-delimiter]='fg=#eb6f92'
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]='fg=#eb6f92'
ZSH_HIGHLIGHT_STYLES[back-dollar-quoted-argument]='fg=#eb6f92'
## Strings
ZSH_HIGHLIGHT_STYLES[command-substitution-quoted]='fg=#f6c177'
ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter-quoted]='fg=#f6c177'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=#f6c177'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument-unclosed]='fg=#eb6f92'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=#f6c177'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument-unclosed]='fg=#eb6f92'
ZSH_HIGHLIGHT_STYLES[rc-quote]='fg=#f6c177'
## Variables
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]='fg=#e0def4'
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument-unclosed]='fg=#eb6f92'
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]='fg=#e0def4'
ZSH_HIGHLIGHT_STYLES[assign]='fg=#e0def4'
ZSH_HIGHLIGHT_STYLES[named-fd]='fg=#e0def4'
ZSH_HIGHLIGHT_STYLES[numeric-fd]='fg=#e0def4'
## Misc
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=#eb6f92'
ZSH_HIGHLIGHT_STYLES[path]='fg=#e0def4,underline'
ZSH_HIGHLIGHT_STYLES[path_pathseparator]='fg=#e0def4,underline'
ZSH_HIGHLIGHT_STYLES[path_prefix]='fg=#e0def4,underline'
ZSH_HIGHLIGHT_STYLES[path_prefix_pathseparator]='fg=#e0def4,underline'
ZSH_HIGHLIGHT_STYLES[globbing]='fg=#e0def4'
ZSH_HIGHLIGHT_STYLES[history-expansion]='fg=#c4a7e7'
ZSH_HIGHLIGHT_STYLES[back-quoted-argument-unclosed]='fg=#eb6f92'
ZSH_HIGHLIGHT_STYLES[redirection]='fg=#e0def4'
ZSH_HIGHLIGHT_STYLES[arg0]='fg=#e0def4'
ZSH_HIGHLIGHT_STYLES[default]='fg=#e0def4'
ZSH_HIGHLIGHT_STYLES[cursor]='fg=#e0def4'

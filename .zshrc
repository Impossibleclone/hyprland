# cat ~/.cache/wal/sequences
kitten themes Catppuccin-Mocha
# curl -sS pkmn.li/icons/ | sed '1,3d'

#to remove err
ping -q -c 1 -W 1 1.1.1.1 >/dev/null 2>&1 && curl -sS pkmn.li/icons/ | sed '1,3d'

# Use powerline
USE_POWERLINE="true"
# Has weird character width
# Example:
#  is not a diamond
PS1='%F{blue}%1~ %(?.%F{green}.%F{red})⮞%f '
HAS_WIDECHARS="false"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
bindkey -v

# Use manjaro zsh prompt
# if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
#   source /usr/share/zsh/manjaro-zsh-prompt
# fi
alias ls='eza --icons=always'
alias zi='cd "$(zoxide query -i)"'
eval "$(zoxide init zsh)"


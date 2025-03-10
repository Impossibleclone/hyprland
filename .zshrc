# Use powerline
USE_POWERLINE="true"
# Has weird character width
# Example:
#    is not a diamond
PS1='%F{blue}%~%(?.%F{green}.%F{red})>%f '
cat ~/.cache/wal/sequences
HAS_WIDECHARS="false"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
curl -sS pkmn.li/icons/ | sed '1,3d'
# Use manjaro zsh prompt
# if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
#   source /usr/share/zsh/manjaro-zsh-prompt
# fi
alias ls='eza --icons=always'

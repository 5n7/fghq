function fghq() {
  local _dir
  _dir=$(ghq list -p >/dev/null | fzf-tmux --reverse +m) && cd $_dir
}

zle -N fghq
bindkey '^G' fghq

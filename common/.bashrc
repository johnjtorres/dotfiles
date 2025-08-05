source ~/.local/share/omarchy/default/bash/rc

export EDITOR='/usr/bin/nvim'
export SSH_AUTH_SOCK="$HOME/.bitwarden-ssh-agent.sock"
export STOW_DIR="$HOME/Git/johnjtorres/dotfiles"

alias bashrc="source $HOME/.bashrc"
alias ebashrc="$EDITOR ~/.bashrc"
alias la='ls -la'
alias ll='ls -l'
alias stow="stow --dir=$STOW_DIR --target=$HOME"
alias v="$EDITOR"
alias vim="$EDITOR"

vf() {
  local -a files
  mapfile -t files < <(fzf --multi --preview 'bat --color=always {}' --preview-window=right:60%)
  [[ ${#files[@]} -gt 0 ]] && nvim -p "${files[@]}"
}

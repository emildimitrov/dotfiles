# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install

#GPG
unset SSH_AGENT_PID
if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
  export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
fi
export GPG_TTY=$(tty)
gpg-connect-agent updatestartuptty /bye >/dev/null

#Starship
eval "$(starship init zsh)"

#Config/Dotfiles
export DOTFILES=$HOME/projects/dotfiles.git
#setup alias to link .git dir to $DOTIFULE and the working tree to $HOME
alias cfg='git --git-dir=$DOTFILES --work-tree=$HOME'



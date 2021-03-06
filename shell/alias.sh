# shellcheck shell=bash
case $- in
!*i*)
  return
  ;;
esac
[[ -z "$PS1" ]] && return

alias ls="ls --color=auto --classify --dereference-command-line-symlink-to-dir --hide-control-chars --sort=version"

alias l="ls --human-readable --numeric-uid-gid -l --time-style=+'%Y-%m-%d %H:%m'"
alias la="ls --almost-all"
alias lB="la --ignore-backups"
alias lD="la --directory"
alias llD="ll --directory"
alias li="la --inode"
alias ll="l --almost-all"
alias lr="ll --reverse -t"
alias lZ="la --context"

alias rm="rm --interactive=once --verbose"
alias rm="rm --interactive=once --verbose"
alias rmdir="rmdir --verbose"
alias rd="rmdir --parents --ignore-fail-on-non-empty"
alias md="mkdir --mode=0700 --parents --verbose"
alias chgrp="chgrp --changes"
alias chmod="chmod --changes"
alias chown="chown --changes"
alias du="du --human-readable --one-file-system --time --time-style=+'%Y-%m-%d' --total"
alias df="df --human-readable --local --print-type"
alias cp="cp -av"
alias grep="grep --color=auto"

which wget >/dev/null 2>&1 && alias wget="wget --tries=10 --continue --timeout=30 --wait=30"
which htop >/dev/null 2>&1 && alias top="htop"
which locate >/dev/null 2>&1 && alias locate="locate --ignore-case --existing --regex"
which bc >/dev/null 2>&1 && alias bc="bc -l"
which lsattr >/dev/null 2>&1 && alias lsattr="lsattr -a"
which chattr >/dev/null 2>&1 && alias chattr="chattr -R"

if which rsync >/dev/null 2>&1; then
  alias rsync="rsync --recursive --links --perms --times --owner --group --devices --specials --hard-links --whole-file --delete --cvs-exclude --prune-empty-dirs --compress --stats --human-readable --progress"
  alias rsync_fat="rsync --chmod='u=rwX,go=' --size-only"
fi

if which pwgen >/dev/null 2>&1; then
  alias pwgen="pwgen -cns"
  alias pgen="pwgen 30 1"
fi

if which nvim >/dev/null 2>&1; then
  alias ex="nvim -E"
  alias vi="nvim"
  alias view="nvim -R"
  alias vim="nvim"
  alias vimdiff="nvim -d"
elif which vim >/dev/null 2>&1; then
  alias vi="vim"
  alias ex="vim -E"
fi

if which keychain >/dev/null 2>&1; then
  alias keychain="keychain --systemd"

  # shellcheck disable=SC2139
  alias kclear="keychain --clear"
fi

if which keychain >/dev/null 2>&1; then
  alias dcb="docker-compose build --force-rm --pull"
  alias dcd="docker-compose down --volumes --remove-orphans"
  alias dcu="docker-compose up --abort-on-container-exit"
fi

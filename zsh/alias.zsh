alias which="whence -vas"
alias where="whence -cas"

alias cp="nocorrect cp"
alias ln="nocorrect ln"
alias mkdir="nocorrect mkdir"
alias mv="nocorrect mv"

if which dircolors > /dev/null 2>&1; then
  alias ls="ls --color=auto --classify --dereference-command-line-symlink-to-dir --hide-control-chars --sort=version"
  alias l="ls --human-readable --numeric-uid-gid -l --time-style=+'%Y-%m-%d %H:%m'"
  alias la="ls --almost-all"
  alias ll="l --almost-all"

  alias chgrp="chgrp --changes"
  alias chmod="chmod --changes"
  alias chown="chown --changes"
  alias cp="cp -av"
  alias md="mkdir --mode=0700 --parents --verbose"
  alias rd="rmdir --parents --ignore-fail-on-non-empty"
  alias rm="rm --interactive=once --verbose"
  alias rmdir="rmdir --verbose"
else
  alias ls="ls -@FG"
  alias l="ls -hln"
  alias la="ls -A"
  alias ll="l -A"

  alias rm="rm -iv"
  alias md="mkdir -m 0700 -pv"
  alias rd="rmdir -p"
fi

alias grep="grep --color=auto"

which lsattr >/dev/null 2>&1 && alias lsattr="lsattr -a"
which chattr >/dev/null 2>&1 && alias chattr="chattr -R"

if which mvn >/dev/null 2>&1; then
  alias mvn="mvn --errors --fail-fast --update-snapshots"
  alias mka="mvn clean install site"
fi

if which nvim >/dev/null 2>&1; then
  alias vi="nvim"
  alias view="nvim -R"
  alias vim="nvim"
  alias vimdiff="nvim -d"
elif which vim >/dev/null 2>&1; then
  alias vi="vim"
  alias ex="vim -E"
fi

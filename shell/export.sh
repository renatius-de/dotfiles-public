# {{{ test for an interactive shell
case $- in
!*i*)
  return
  ;;
esac
[[ -z "$PS1" ]] && return
#}}}

# {{{ STARTUP PROMPT
# using "birthday" and "calendar" to inform me about
# birthday and important events/anniversary with a
# modified look
if [[ -z $CYG_SYS_BASHRC ]]; then
  # clear screen once
  clear

  builtin echo "--- $(date '+%a %d %b %Y') --------------------------------------------------------------"
  uname -snr
  uptime
  builtin echo -e "---------------------------------------------------------------------------------"
fi
#}}}

# {{{ EDITOR
# setting the EDITOR environment
if which nvim >/dev/null 2>&1; then
  EDITOR="nvim"
elif which vim >/dev/null 2>&1; then
  EDITOR="vim"
fi
export EDITOR="${EDITOR:-vi}"
#}}}

# {{{ VISUAL
# setting the VISUAL environment to the same es EDITOR
if which nvim >/dev/null 2>&1; then
  VISUAL="nvim -R"
elif which vim >/dev/null 2>&1; then
  VISUAL="vim -R"
fi
export VISUAL="${VISUAL:-${EDITOR}}"
#}}}

# {{{ MANWDTH
# setting the textwidth of manpages to 80 symbols, this make manpages more
# readable
export MANWIDTH="120"
#}}}

# {{{ TAR_OPTIONS
# The TAR_OPTIONS environment variable specifies default options to be placed in
# front of any explicit options.
export TAR_OPTIONS="--auto-compress --delay-directory-restore --exclude-backups --exclude-caches --no-overwrite-dir --numeric-owner --totals"
#}}}

# {{{ SUDO
[ -x /usr/bin/sudo ] && export SUDO_PROMPT="[sudo] password for %U@%H: "
#}}}

# {{{ TZ
export TZ="Europe/Berlin"
#}}}

# {{{ language variables
readonly LC_ADDRESS=de_DE.UTF-8
export LC_ADDRESS
readonly LC_COLLATE=en_US.UTF-8
export LC_COLLATE
readonly LC_CTYPE=en_US.UTF-8
export LC_CTYPE
readonly LC_IDENTIFICATION=en_US.UTF-8
export LC_IDENTIFICATION
readonly LC_MEASUREMENT=de_DE.UTF-8
export LC_MEASUREMENT
readonly LC_MESSAGES=en_US.UTF-8
export LC_MESSAGES
readonly LC_MONETARY=en_US.UTF-8
export LC_MONETARY
readonly LC_NAME=de_DE.UTF-8
export LC_NAME
readonly LC_NUMERIC=en_US.UTF-8
export LC_NUMERIC
readonly LC_PAPER=de_DE.UTF-8
export LC_PAPER
readonly LC_TELEPHONE=de_DE.UTF-8
export LC_TELEPHONE
readonly LC_TIME=de_DE.UTF-8
export LC_TIME
unset LC_ALL

readonly LANG=en_US.UTF-8
export LANG
readonly LANGUAGE=en_GB:en_US:en:de_DE:de
export LANGUAGE
#}}}

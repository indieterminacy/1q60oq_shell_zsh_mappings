#!/usr/bin/zsh

bindkey -v
########################################
alias -g PIPE='|'
# alias -g CA="2>&1 | cat -A"
# alias -g DN=/dev/null
# alias -g F=' | fmt -'
alias -g Sk="*~(*.bz2|*.gz|*.tgz|*.zip|*.z)"
# alias -g MM='| most'
# alias -g NE="2> /dev/null"
# alias -g NUL="> /dev/null 2>&1"
# alias -g R=' > /c/aaa/tee.txt '
# alias -g VM=/var/log/messages
# alias -g X0G='| xargs -0 egrep'
# alias -g X0='| xargs -0'
# alias -g XG='| xargs egrep'
# alias -g X='| xargs'

# Some functions, like _apt and _dpkg, are very slow
# You can use a cache in order to proxy the list of results
# (like the list of available debian packages) Use a cache:
# zstyle ':completion:*' use-cache on
# zstyle ':completion:*' cache-path ~/.zsh/cache
#
# Prevent CVS files/directories from being completed:
# zstyle ':completion:*:(all-|)files' ignored-patterns '(|*/)CVS'
# zstyle ':completion:*:cd:*' ignored-patterns '(*/)#CVS'

# And if you want the number of errors allowed by _approximate to increase with
# the length of what you have typed so far:
zstyle -e ':completion:*:approximate:*' \
        max-errors 'reply=($((($#PREFIX+$#SUFFIX)/3))numeric)'

# With helper functions like:
# xdvi() { command xdvi ${*:-*.dvi(om[1])} }
# you can avoid having to complete at all in many cases, but if you do, you might want to fall into menu selection immediately and to have the words sorted by time:

# zstyle ':completion:*:*:xdvi:*' menu yes select
# zstyle ':completion:*:*:xdvi:*' file-sort time

# Completing process IDs with menu selection:
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:kill:*'   force-list always

# http://grml.org/zsh/zsh-lovers.html

# Persistent rehash
# Typically, compinit will not automatically find new executables in the $PATH.
# For example, after you install a new package, the files in /usr/bin would not
# be immediately or automatically included in the completion. Thus, to have
# these new exectuables included, one would run:
zstyle ':completion:*' rehash true

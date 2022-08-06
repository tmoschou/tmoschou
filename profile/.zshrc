# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Jenv manages this
#export JAVA_HOME=$(/usr/libexec/java_home -v 11)

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source <(npm completion)

# MacOS's grep is broken. e.g. "echo aabbaa | grep --color '^a'" should only match first 'a'
# https://bugs.freebsd.org/bugzilla/show_bug.cgi?id=166842
export PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"

# better colours with solarized
export JQ_COLORS="0;36:0;35:0;35:0;33:0;32:1;37:1;37"

alias urldecode='python3 -c "import sys, urllib.parse as ul; print(ul.unquote_plus(sys.argv[1] if len(sys.argv) > 1 else sys.stdin.read()));"'
alias urlencode='python3 -c "import sys, urllib.parse as ul; print(ul.quote_plus(sys.argv[1] if len(sys.argv) > 1 else sys.stdin.read()));"'

# https://superuser.com/a/380778
# for other non-color control sequences, see link
alias nocolor='sed "s/\x1b\[[0-9;]*m//g"'
alias nocolour='sed "s/\x1b\[[0-9;]*m//g"'

alias mvn='mvn --color=always'

# colored-man-pages plugin extension
less_termcap[us]=$(print -Pn '%F{green}')  # start underline
less_termcap[ue]=$(print -Pn '%f')         # stop underline
less_termcap[mb]=$(print -Pn '%U')         # start blink
less_termcap[md]=$(print -Pn '%F{blue}%B') # start bold
less_termcap[me]=$(print -Pn '%f%b%u')     # stop blink, bold
less_termcap[so]=$(print -Pn '%S')         # start standout (search highlight)
less_termcap[se]=$(print -Pn '%s')         # stop standout

alias git='colored git'

# allow tab completiing for 'colored git' alias
setopt completealiases

# Turn off autocomplete beeps
unsetopt LIST_BEEP

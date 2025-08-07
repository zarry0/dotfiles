# x86/arm terminal script
alias mzsh="arch -arm64 zsh"
alias izsh="arch -x86_64 zsh"

if [ "$(uname -p)" = "i386" ]; then
  eval "$(/usr/local/bin/brew shellenv)"
  alias brew='/usr/local/bin/brew'
  export PROMPT='%n[x86_64] %1~ %# '
else
  eval "$(/opt/homebrew/bin/brew shellenv)"
  alias brew='/opt/homebrew/bin/brew'
  export PROMPT='%n %1~ %# '
fi

# vi mode
bindkey -v
export KEYTIMEOUT=1

# bat config
export BAT_THEME="TwoDark"

# fzf config
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS=' --height=80% --preview="bat --color=always {}" --preview-window=right:75%:wrap'

# asdf config
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"
# append completions to fpath
fpath=(${ASDF_DATA_DIR:-$HOME/.asdf}/completions $fpath)
# initialise completions with ZSH's compinit
autoload -Uz compinit && compinit

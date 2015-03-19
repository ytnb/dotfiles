alias ll='ls -la'
alias vi='mvim'
alias vim='mvim'
alias view='mview'

eval "$(gdircolors ~/.dircolors-solarized)"
alias ls='gls --color=auto'

export VAGRANT_HOME=/Volumes/data/vagranthome

export PATH=$PATH:/Applications/MacVim.app/Contents/MacOS/:/Applications/Atom.app/Contents/MacOS/
eval "$(chef shell-init bash)"

set -gx fish_greeting ''

if not count $GS_NAME >/dev/null
	set -gx PATH /opt/bin /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin ~/.dotfiles/bin
	set -gx EDITOR vim
end

alias startx="ssh-agent startx"
alias vi="vim"
alias ag="ag -a"
alias k9="killall -9"
alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'

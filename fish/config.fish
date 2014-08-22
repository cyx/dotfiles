# Since fish PATH is treated as a special case
# we need to set it only if it's unset, and the
# base case for it is being a single element list.

# If it's already set, we don't touch it so libraries
# like `gs` can modify the PATH and we get the result we
# want.
if expr (count $PATH) '=' 1 > /dev/null
	set -g -x PATH /opt/bin /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin ~/.dotfiles/bin
end

alias vi="vim"
alias ag="ag -a"
alias k9="killall -9"
alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'

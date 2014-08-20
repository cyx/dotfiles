function tunnel --description 'Create a SOCKS proxy through an ssh connection' 
	ssh -ND 9999 $argv
end

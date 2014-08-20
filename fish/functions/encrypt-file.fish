function encrypt-file -- 'Encrypt a file using openssl/des3 given a SECRET'
	cat $argv | openssl des3 -salt -pass env:SECRET | openssl base64
end

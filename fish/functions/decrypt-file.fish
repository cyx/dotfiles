function decrypt-file --description 'Decrypt a file using openssl/des3 given SECRET'
	cat $argv | openssl base64 -d | openssl des3 -salt -pass env:SECRET -d
end

function reversproxy --description 'Create a reverse proxy tunnel'
	ssh $argv -R :9393:127.0.0.1:8080 sleep 99999
end

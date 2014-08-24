function tcrypt-open --description 'open a truecrypt volume using cryptsetup'
	if set -q $argv
    		echo "Usage: tcrypt-open <file> <name>"
    		return 1
	end

	set -l file $argv[1]
	set -l name $argv[2]

	echo "sudo cryptsetup --type tcrypt open $file $name"
	sudo cryptsetup --type tcrypt open $file $name

	sudo mkdir /mnt/$name

	echo "sudo mount /dev/mapper/$name /mnt/$name"
	sudo mount /dev/mapper/$name /mnt/$name
end

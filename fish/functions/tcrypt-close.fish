function tcrypt-close --description 'close an previously opened truecrypt volume'
	if set -q argv
		echo "Usage: tcrypt-close <name>"
		return 1
	end

	set -l name $argv[1]

	echo "sudo cryptsetup close $name"
	sudo cryptsetup close $name

	echo "sudo umount /mnt/$name"
	sudo "umount /mnt/$name"
end

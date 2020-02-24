#!/bin/bash

[[ -d ~/bin ]] || mkdir ~/bin
if [[ $EUID -eq 0 ]]; then
	echo "This script is running with root access";
	./root.sh
else
	echo "This script is not running with root access";
fi

# Done
while read -p "Delete this folder[y|n]: " answer; do
	[[ "$answer" = "n" ]] && break || [[ "$answer" = "y" ]] && echo "removing..." && break
	echo "Not a valid answer" >&2
done

exit 0


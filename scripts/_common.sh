#!/bin/bash



extra_pkg_dependencies="php7.3-zip php7.3-gd php7.3-xml php7.3-mbstring"


# Execute a command as another user
# usage: exec_as USER COMMAND [ARG ...]
exec_as() {
	local USER=$1
	shift 1

	if [[ $USER = $(whoami) ]]
	then
		eval $@
	else
		sudo -u "$USER" $@
	fi
}

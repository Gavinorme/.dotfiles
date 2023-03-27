#shebang to run code
#!/bin/bash
UNAME=$(uname)
if [[ "$UNAME" != "Linux" ]]
then {
	echo "error" >> linuxsetup.log
	exit
}
#This if-else statement shows an error only if the uname is not equal to Linux
else
	{
		echo uname "is equal to Linux"
	}
fi
#Makes a .TRASH directory in the home directory
mkdir -p .TRASH
#Changes .vimrc to .bup_vimrc
mv ~/.vimrc .bup_vimrc
#Tells the user to mv change
echo ".vimrc was changed to .bup_vimrc" >> linuxsetup.log
#overwrites the contents of etc to a file called.vimrc
cat ~/.dotfiles/etc/vimrc > ~/.vimrc
#adds source to the end of the .bashrc file
echo "source~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc

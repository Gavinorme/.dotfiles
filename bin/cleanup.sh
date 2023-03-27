#shebang to run the code
#!/bin/bash
#this removes the .vimrc file in home
rm ~/.vimrc
#This replaces the line below with nothing
sed '$d' .bashrc
#this removes the .TRASH directory recursively since the directory isn't empty
rm -r .TRASH

# Fast Formatter 2.0

For Linux Based Distros.
 
A bash script to easily format camera media to exfat and rename to UNTITLED.

by Jamie Sergeant

NOTE TO READER: I am not a linux or programming professional. Please excuse my terrible code.

Dependencies: exfat-fuse

To set up Fast Formatter please use a computer running the latest version of a linux distro. This code has been tested and run on a Raspberry Pi 3B with Raspberry Pi OS Lite 32 bit 2022-09-22. It should run on most distros, although this is uncomfirmed. It is recommended that the distro is run in headless mode to give quick and easy access to the terminal. 

To set-up Fast Formatter 2.0: 

Create a shell file named format.sh (Nano works well for this)

Copy and paste code from the Fast-Formatter-2.0 repo

Quit and save

To make the shell file actionable run the following command:

sudo chmod +x format.sh

To add an Alias to easily format cards by typing 'f' or 'format' and hitting enter edit the file:

~/.bashrc

(again Nano works well)

Scroll to bottom of document and add:

alias format=“./format.sh”
alias f=“./format.sh

Quit and Save

Reboot your system

You have now set up Fast Formatter

Insert the card that needs to be formatted.

Type ‘f’ or ‘format’ and press enter to format. 

If the format is successful the terminal will show:

<span style="color:Green">FORMAT SUCCESSFUL! PLEASE REMOVE CARD.</span>.

If the format was unsuccessful the terminal will show: 

<span style="color:Red">FORMAT UNSUCCESSFUL! PLEASE TRY AGAIN.</span>.

# Fast Formatter 2.0

## A bash script to easily format camera media

Fast Formatter 2.0 was created to make the formatting of camera media (SD, QXD, CF cards, SSDs) easier and quicker. By using this bash script, it will turn any computer into a fast formatter. Once formatted, each card will no longer contain data. The cards will use the file system, `exfat` with the title set to, `UNTITLED.` 

## Pre-setup notes

To set up Fast Formatter 2.0, please use a computer running the latest version of a linux distro. This code has been tested and run on a Raspberry Pi 3B with Raspberry Pi OS Lite 32 bit 2022-09-22. It should run on most distros, although this is not confirmed. It is recommended that the distro is run in headless mode to give quick and easy access to the terminal. The user should be called `format`.

Needed dependencies: `exfat-fuse`. Please download from your repo of choice, in Raspberry Pi OS, you can do this by using the command:

```
sudo apt install exfat-fuse -y
```

## Setup Instructions

Create a shell file named `format.sh` (Nano works well for this.)

```
sudo nano format.sh
```

Copy and paste the code from `format.sh` in this repository.

Quit and save.

To make the shell file actionable run the following command:

```
sudo chmod +x format.sh
```

To add an alias to easily format cards by typing 'f' or 'format' and hitting enter, open `~/.bashrc` by running this command (again, Nano works well for this task):

```
sudo nano ~/.bashrc
```

Scroll to bottom of document and add:

```
alias format=“./format.sh”
alias f=“./format.sh"
```

Save and Quit.

Now reboot your system.

You have set up Fast Formatter!

## How to use the Fast Formatter

Insert the card that needs to be formatted.

Type `f` or `format`, and press `enter`. 

### This command is destructive and will wipe any data on the card! 

If the format is successful the terminal will show:

`FORMAT SUCCESSFUL! PLEASE REMOVE CARD.`

If the format was unsuccessful the terminal will show: 

`FORMAT UNSUCCESSFUL! PLEASE TRY AGAIN.`

## Quality of Life Improvements

It is recommended that you set the Raspberry Pi to login automatically to the user `format` by following these instructions:

```
Run: sudo raspi-config
Choose option: 1 System Options
Choose option: S5 Boot / Auto Login
Choose option: B2 Console Autologin
Select Finish, and reboot the Raspberry Pi.
```

It is also recommended that you increase the text size to largest present by following these instructions: 

```
Run: sudo dpkg-reconfigure console-setup
Choose option: UTF-8
Choose option: Guess optimal character set
Choose option: Terminus
Choose option: 16×32 (framebuffer only)
There will be a short delay, then reboot the Raspberry Pi.
```

## Adding a Button

To add a button follow the `Adding a Button READ ME` in this repository.

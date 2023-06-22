# Setting up a button

## Physical Connection

To connect a button to a Raspberry Pi, you will need to connect the wires to the GPIO pins that are on the board. In the diagram bellow, you can see where to connect the two wires. **It's important that the buttons wires go exactly where the diagram shows.** If the button doesn't work, try switching the wires.


![Button Diagram](https://user-images.githubusercontent.com/64971047/224315695-c0dbf417-bec9-46cc-a24f-fcfedd2b9372.jpg)

![GPIO pins](https://user-images.githubusercontent.com/64971047/224315818-a52d7bb8-1656-437c-b13b-b313e77214f8.jpg)

## Installing the Software

To set up the button on the Raspberry Pi, you need to make sure `Python3` and `GPIOzero` are installed. They may already be installed, but if not use the commands

```
sudo apt install python3
```
```
sudo apt install python3-gpiozero
```

## Setting Up the Python Script. 

Now create a python script called 'button' by typing

```
sudo nano button.py
```

Copy and paste the code from `button.py` in this repository. Press `control + x` to quit Nano, ensuring that you save the file. 


## Running Python Script at Login

To ensure that the python script starts at login, add the script to bashRC. To do this edit .bashRC by typing this command into the command line:

```
sudo nano /home/format/.bashrc
```

Scroll down to the bottom of this document and add the code:

```
echo Running at boot 
sudo python /home/format/button.py
```

Press `control + x` to quit Nano, ensuring that you save the file. 

Now reboot the system by typing `reboot` into the command line. 

The button should now work on start up. 

## Quitting the Script

If you ever need to get back to the command line, type `control + c` which will stop the script and allow you to run commands as normal. 


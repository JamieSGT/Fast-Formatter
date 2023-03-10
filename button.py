from gpiozero import Button
from signal import pause
import os

def run_format():
    os.system("/home/format/format.sh")
    
button = Button (2)

button.when_pressed=run_format

pause()

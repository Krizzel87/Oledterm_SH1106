# Oledterm_SH1106
SH1106 luma.oled driven terminal at boot
Fully testet with Pi4 4Gb latest RaspianOs

It is a python3 convert from 
https://github.com/satoshinm/oledterm

You need a working luma.oled in python3.

To test the code the CLI must be booted from Pi.
To test code type sh go.sh 

If you are in Desktop hit Cntl Alt F1 to change to CLI.

To set the oled terminal in Boot edit  /etc/rc.local

 Add 
`
sudo python3/home/pi/oledterm/oledterm.py &
`

before 
Exit 0

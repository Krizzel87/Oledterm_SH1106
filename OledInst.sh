#!/bin/sh -x

###Install Luma.oled
sudo apt install python3 python3-dev python3-pip libfreetype6-dev libjpeg-dev build-essential libopenjp2-7 libtiff5 &&
sudo -H pip3 install --upgrade luma.oled &&
### Install Luma.examples  sh 
sudo usermod -a -G i2c,spi,gpio pi &&
sudo apt install python3-dev python3-pip libfreetype6-dev libjpeg-dev build-essential &&
sudo apt install libsdl-dev libportmidi-dev libsdl-ttf2.0-dev libsdl-mixer1.2-dev libsdl-image1.2-dev &&
git clone https://github.com/rm-hull/luma.examples.git &&
cd luma.examples &&
sudo -H pip3 install -e . &&
cd .. &&
### Github satoshin oled Patch with krizzels code
git clone https://github.com/satoshinm/oledterm.git &&
git clone https://github.com/Krizzel87/Oledterm_SH1106.git &&
sudo cp Oledterm_SH1106/oledterm.py oledterm/oledterm.py &&
sudo cp Oledterm_SH1106/go.sh oledterm/go.sh &&
cd oledterm &&
sh go.sh







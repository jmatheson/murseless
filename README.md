This is my implementation of OpenAPS. These instructions can help you get setup assuming you want to do the following:
* You want to format the SD card using a Mac
* You have a Github account and are willing for this to be publically avaiable (or a paid account with at least one repo avail for this project) Start by setting up your own repo on github by following these instructions  [https://help.github.com/articles/adding-an-existing-project-to-github-using-the-command-line/]. You only need to do this once.

These steps will help you when you need to get running if you are setting up the first time OR your SD card took a crap and you need to recreate everything
* Reformat your micro SD card with SDFormatter (you can get it here https://www.sdcard.org/downloads/formatter_4/), you must use overrite format. It will take 20-30 minutes to format the drive.
* Install NOOBS from  https://www.raspberrypi.org/downloads/noobs/.
* Unzip NOOBS. Open the NOOBS directory and copy all the files to your Micro SD Card. Don't simply copy the NOOBS directory itself. That will not work.
* Plug in your pi with a network cable, mouse and hdmi to a monitor (no keyboard needed). Insert the Micro SD card, then plug the pi into a battery or wall.
* Finish installing the OS on your pi from there using on screen instructions.
* Log in to your pi ```ssh pi@raspberrypi.local``` from your laptop/desktop computer using the Terminal program (assuming it is on the same network as your Pi)
* Set timezone by typing in```sudo raspi-config``` and then follow the menu's to set your Timezone. Save when done.
* Run the following command to grab a sample .profile that you will edit with your own private information. Run ```curl -s https://raw.githubusercontent.com/jmatheson/openaps/master/setup/.profile```
* Create your .profile that will contain your private environment variables needed. ```pico .profile```. Then copy and paste in 
* Run ```curl -s https://raw.githubusercontent.com/jmatheson/openaps/master/setup/setup.sh | bash -``` which will install everything else we need. 

NOTE: If you make edits to any files on github.com in this repo, be sure to pull them down to your local pi so there are no conflicts for backing up your pi. Use something like: ```git pull http://github.com/jmatheson/openaps```

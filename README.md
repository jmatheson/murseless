This is an implementation of OpenAPS soup to nuts once you have your hardware set up.

These instructions can help you get setup assuming you want to do the following:
* You want the current dev version of OpenAPS. This means the bleeding edge, probably buggy, version of the software. If you don't want that they you should probably follow the regular instructions at [https://github.com/openaps/docs]
* You want to format the SD card using a Mac
* You have a Github account and are willing for this to be publically avaiable (or a paid account with at least one repo avail for this project) Start by setting up your own repo on github by following these instructions  [https://help.github.com/articles/adding-an-existing-project-to-github-using-the-command-line/]. You only need to do this once.

Format SD Card
* Format/Reformat your Micro SD card with SDFormatter [https://www.sdcard.org/downloads/formatter_4/]. Select Overrite. It will take 20-30 minutes.
* Install NOOBS from  [https://www.raspberrypi.org/downloads/noobs/].
* Unzip NOOBS. Open the NOOBS directory. Copy all the files to your Micro SD Card. Don't simply copy the NOOBS directory itself. That will not work.
* Plug in your pi with a network cable, mouse and hdmi to a monitor (no keyboard needed). Insert the Micro SD card, then plug the pi into a battery or wall.
* Finish installing the OS on your pi from there using on screen instructions.
* Log in to your pi ```ssh pi@raspberrypi.local``` from your laptop/desktop computer using the Terminal program (assuming it is on the same network as your Pi). The password by defailt is ```raspberry```
* Set timezone by typing in```sudo raspi-config``` and then follow the menu's to set your Timezone. Save when done.
* Run ```curl -s https://gist.githubusercontent.com/jmatheson/755891b12ce051bde10c/raw/9b059c2a748813c7af44ecaeeeccd1c3177ee5ce/.profile```. This will grab a sample .profile for setting up your environment variables.
* Now edit the file and update with all of your information per the instructions ```nano .profile```. Save the file when done. 
* Run ```curl -s https://gist.githubusercontent.com/jmatheson/f47bf446450598e714a8/raw/9863e425a7dd7a0848f9714a79236c29e3a50ac2/setup.sh | bash -``` which will install everything else we need in one fell swoop!

NOTE: If you make edits to any files on github.com in your repository, be sure to pull them down to your local pi so there are no conflicts for backing up your pi. Use something like: ```git pull http://github.com/jmatheson/openaps```

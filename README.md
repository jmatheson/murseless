This is my implementation of OpenAPS. This assumes you are working on a Mac with OSX 10.11 El Capitan. Also assumes you have a paid Github account with at least one repo available for use
* Set up your own repo on github by following these instructions  [https://help.github.com/articles/adding-an-existing-project-to-github-using-the-command-line/]
* Reformat your micro SD card with SDFormatter (you can get it here https://www.sdcard.org/downloads/formatter_4/)
* Install NOOBS by donwloading from  https://www.raspberrypi.org/downloads/noobs/, then unzipping and copying all files to the micro SD card that you just formatted above
* Plug in with mouse and hdmi, Install the OS from there using on screen instructions
* Set timezone ```sudo raspi-config```
* Run ```curl -s https://raw.githubusercontent.com/jmatheson/openaps/master/setup/setup.sh?token=AItwWdFKmrpiZwkcYdg_TYmfoRrJXSRxks5WjZjfwA%3D%3D | bash -``` which will install everything we need. User may need to copy script and put in their own values before running

If you make edits to any files on github.com, be sure to pull them down to your local pi so there are no conflicts for backing up your pi. Use something like: ```git pull http://github.com/jmatheson/openaps```

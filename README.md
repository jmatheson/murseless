This is my implementation of OpenAPS. 
* Set up your own repo on github by following these instructions  [https://help.github.com/articles/adding-an-existing-project-to-github-using-the-command-line/]
* Reformat your micro SD card with SDFormatter
* Install NOOBS [https://www.raspberrypi.org/downloads/noobs/]
* Plug in with mouse and hdmi, Install the OS from there using on screen instructions
* Run ```curl -s https://raw.githubusercontent.com/jmatheson/openaps/master/setup/setup.sh?token=AItwWdFKmrpiZwkcYdg_TYmfoRrJXSRxks5WjZjfwA%3D%3D | bash -``` which will install everything we need. User may need to copy script and put in their own values before running

If you make edits to any files on github.com, be sure to pull them down to your local pi so there are no conflicts for backing up your pi. Use something like: ```git pull http://github.com/jmatheson/openaps```

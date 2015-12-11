This is my implementation of OpenAPS. 

<<<<<<< HEAD
* create directory in your root called aps
* change to the aps directory
* follow instructions from Intro through end of Phase 0 here https://github.com/openaps/docs
* install openaps using ```curl -s https://raw.githubusercontent.com/openaps/docs/master/scripts/quick-src.sh | bash -```
* install mmhistorytools from https://github.com/loudnate/openaps-mmhistorytools
* copy this repo to get directory structure, sameple files and of course the openaps.ini which is key
* Rename secret.ini.sample to secret.ini. Edit file and replace 999999 with the serial number of your pump
* Set up a contab and use crontab.example for the content of that file.
* Set up your own repo on github by following these instructions https://help.github.com/articles/adding-an-existing-project-to-github-using-the-command-line/
* Set up a .netrc file and use the contents of .netrc.example and just replace with your github information (this assumes you use github for backups)
=======
* create directory in your root called aps ```mkdir /home/pi/aps```
* change to the aps directory ```cd /home/pi/aps```
* follow instructions from Intro through end of Phase 0 here https://github.com/openaps/docs
* install openaps using ```curl -s https://raw.githubusercontent.com/openaps/docs/master/scripts/quick-src.sh | bash -```
* install mmhistorytools from https://github.com/loudnate/openaps-mmhistorytools with ```git https://github.com/loudnate/openaps-mmhistorytools.git```
* copy this repo with ```git https://github.com/jmatheson/openaps.git``` to get this directory structure, sameple files and of course the openaps.ini which is key to getting everything rolling
* Rename secret.ini.sample to secret.ini. Edit file and replace 999999 with the serial number of your pump
* Set up a contab and use crontab.example for the content of that file.
* Set up your own repo on github by following these instructions https://help.github.com/articles/adding-an-existing-project-to-github-using-the-command-line/
* Set up a .netrc file and use the contents of https://github.com/jmatheson/openaps/blob/master/.netrc.example and just replace with your github information (this assumes you use github for backups)

If you make edits to any files on github.com, be sure to pull them down to your local pi so there are no conflicts for backing up your pi. Use something like: ```git pull http://github.com/jmatheson/openaps```

>>>>>>> 6b89ac20d6ae007090abc278ee74820f90c7be6e

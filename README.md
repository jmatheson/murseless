# openaps
James Matheson APS

This is my implementation of OpenAPS. 

* create directory in your root called aps
* change to the aps directory
* install openaps using ```curl -s https://raw.githubusercontent.com/openaps/docs/master/scripts/quick-src.sh | bash -```
* install mmhistorytools from https://github.com/loudnate/openaps-mmhistorytools
* copy this repo to get directory structure, sameple files and of course the openaps.ini which is key
* Rename secret.ini.sample to secret.ini. Edit file and replace 999999 with the serial number of your pump
* Set up a contab and use crontab.example for the content of that file.
* Set up a .netrc file and use the contents of .netrc.example and just replace with your github information (this assumes you use github for backups)

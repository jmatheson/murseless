#!/bin/bash

echo -e machine github.com\\nlogin jmatheson\\npassword holdem55 > $HOME/.netrc
echo -e NIGHTSCOUT_HOST=https://diabeticguy.azurewebsites.net\; export NIGHTSCOUT_HOST\\nAPI_SECRET=7defc6888819180432736ddab3a77c730cd4febe\; export API_SECRET\\\nOPENAPS_DIR=aps\; export OPENAPS_DIR\\nOPENAPS_REPO=https://github.com/jmatheson/openaps\; export OPENAPS_REPO\\nPUMP_ID=160077\; export PUMP_ID\\nCGM_JSON=https://raw.githubusercontent.com/jasoncalabrese/indy/master/monitor/glucose.json\; export CGM_JSON >> $HOME/.profile
. ~/.profile && cd $HOME && mkdir $OPENAPS_DIR && cd $OPENAPS_DIR && git init && git remote add origin $OPENAPS_REPO && git pull $OPENAPS_REPO
cd $HOME/$OPENAPS_DIR && sudo cp wpa_supplicant.conf /etc/wpa_supplicant/wpa_supplicant.conf
sudo easy_install openapscontrib.mmhistorytools
curl -s https://raw.githubusercontent.com/openaps/docs/master/scripts/quick-packages.sh | bash -
curl -s https://raw.githubusercontent.com/openaps/docs/master/scripts/quick-src.sh | bash -
echo -e [device \"pump\"]\\nserial = 160077\\nmodel = 722 > $HOME/$OPENAPS_DIR/ini/secret.ini
cat $HOME/$OPENAPS_DIR/crontab | crontab -

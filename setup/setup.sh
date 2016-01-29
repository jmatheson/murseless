#!/bin/bash

mkdir $HOME/$OPENAPS_DIR
cd $HOME/$OPENAPS_DIR && mkdir setup logs ini monitor predict control
echo -e machine github.com\\nlogin $GITHUB_USERNAME\\npassword $GITHUB_PASSWORD > $HOME/.netrc
git config --global user.email "\$GITHUB_EMAIL"
git config --global user.name "\$GITHUB_NAME"
. ~/.profile && cd $HOME && rm -r $OPENAPS_DIR && mkdir $OPENAPS_DIR && cd $OPENAPS_DIR && git init && git remote add origin $OPENAPS_REPO && git pull $OPENAPS_REPO
. ~/.profile && cd $HOME && mkdir $OPENAPS_DIR && cd $OPENAPS_DIR && git init && git remote add origin $OPENAPS_REPO && git pull $OPENAPS_REPO
cd $HOME/$OPENAPS_DIR/setup && sudo cp wpa_supplicant.conf /etc/wpa_supplicant/wpa_supplicant.conf
sudo easy_install openapscontrib.mmhistorytools
sudo easy_install decocare
curl -s https://raw.githubusercontent.com/openaps/docs/master/scripts/quick-packages.sh | bash -
curl -s https://raw.githubusercontent.com/openaps/docs/master/scripts/quick-src.sh | bash -
curl -s https://gist.githubusercontent.com/scottleibrand/63a8541397378bf9f4b8/raw/4f770fd1ee97880fea532ab133f338d9e57dc5b4/meal-assist-setup.sh | bash -
echo -e [device \"pump\"]\\nserial = \$PUMP_ID\\nmodel = \$PUMP_MODEL > $HOME/$OPENAPS_DIR/ini/secret.ini
echo -e {\\n  \"max_iob\": 20\\n} > $HOME/$OPENAPS_DIR/max_iob.json
sudo rm $HOME/$OPENAPS_DIR/*zip
sudo bash -c 'echo "options 8192cu rtw_power_mgnt=0 rtw_enusbss=0" >> /etc/modprobe.d/8192cu.conf'
sudo modprobe bcm2708_wdog
sudo bash -c 'echo "bcm2708_wdog" >> /etc/modules'
sudo apt-get install watchdog
sudo update-rc.d watchdog defaults
cd $HOME && cd $OPENAPS_DIR && sudo cp watchdog.conf /etc/.
sudo service watchdog start
cat $HOME/$OPENAPS_DIR/crontab | crontab -

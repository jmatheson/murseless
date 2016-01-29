# Your Nightscout URL and API_SECRET from Nightscout
NIGHTSCOUT_HOST=https://ilovediabetes.herokuapp.com; export NIGHTSCOUT_HOST
# The secret key should be hashed, use this tool http://www.xorbin.com/tools/sha1-hash-calculator
API_SECRET=XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX; export API_SECRET

# Your Medtronic pump 6 digit number (back of pump)
PUMP_ID=XXXXXX; export PUMP_ID

# Your pump model number such as 722
PUMP_MODEL=XXX; export PUMP_MODEL

# directory you’d like to store your system in on the pi, example: aps
OPENAPS_DIR=aps; export OPENAPS_DIR


# Your github login information
GITHUB_USERNAME=XXXXXXXXX; export GITHUB_USERNAME
GITHUB_PASSWORD=XXXXXXXX; export GITHUB_PASSWORD 

# Replace with the URL of your github repository where you will back this up to
OPENAPS_REPO=https://github.com/jmatheson/openaps; export OPENAPS_REPO

# The name and email address from Github that you will post as when you upload changes
# Spaces must have a \ before them, such as example below
GITHUB_NAME=Jim\ Matheson; export GITHUB_NAME
# The email address must have a \ before @ for example bob\@aol.com
GITHUB_EMAIL=james\@onmetheapp.com; export GITHUB_EMAIL


if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Mujahidul09/MayaBotV1.5.git /MayaBot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /MayaBot
fi
cd /MayaBot
pip3 install -U -r requirements.txt
echo "Starting MayaBot...."
python3 bot.py

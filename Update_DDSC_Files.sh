echo Now we will install the scripts
echo
echo First we make sure the web directory has the correct permissions
echo


echo Connecting and grabbing the current device webpage files
echo

cd /var/www
sudo git init
sudo git remote add origin https://github.com/istrait/www.git
sudo git pull origin master

echo Done
echo 
echo Copying Main program script.
echo

mkdir /home/pi/DDSC_Scripts
cd /home/pi/DDSC_Scripts

sudo git init
sudo git remote add origin https://github.com/istrait/Mega-to-Pi.git
sudo git pull origin master

echo Installs done
sleep 60
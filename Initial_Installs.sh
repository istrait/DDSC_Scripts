echo Getting Apache

sudo apt-get update
sudo apt-get install apache2 -y

echo Setting HTML permissions
sudo chown pi: /var/www/html

echo Getting PHP
sudo apt-get install php5 libapache2-mod-php5 -y

echo Now we will install the scripts
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

echo Install Arduino IDE 1.8.3

cd /home/pi
wget https://www.arduino.cc/download_handler.php?f=/arduino-1.8.3-linuxarm.tar.xz
tar -xf arduino-1.8.3-linuxarm.tar.xz
cd /home/pi/arduino-1.8.3
sudo ./install.sh

echo Installs done
sleep 60

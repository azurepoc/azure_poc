sudo apt update
sudo apt install curl 
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add - 
sudo apt install mysql-server 
echo "MYSQL install finished"

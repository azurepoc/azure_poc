sudo apt update

sudo apt install -y apt-transport-https ca-certificates curl software-properties-common


curl -fsSL https://get.docker.com -o get-docker.sh 

sudo sh ./get-docker.sh --dry-run

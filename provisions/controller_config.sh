# Update
sudo apt-get update -y
sudo apt-get upgrade -y

# Install ansible
sudo apt-get install software-properties-common
sudo apt-add-repository ppa:ansible/ansible -y
sudo apt-get install ansible -y

#Install Tree
sudo apt install tree -y

# Install python for ansible vault
sudo apt install python3-pip -y

# Install aws cli
sudo apt install python
sudo pip install --upgrade pip
pip3 install awscli
pip3 install boto boto3
sudo apt-get upgrade -y

#To use python3
alias python=python3

# replace host file  /etc/ansible/hosts
sudo rm -rf /etc/ansible/original_hosts
sudo cp /home/vagrant/controller/hosts /etc/ansible/hosts


# to make sure we get the key, otherwise will have to ssh into agents first before running adhoc commands
#ssh-keyscan -H 192.168.56.10 >> /home/vagrant/.ssh/known_hosts

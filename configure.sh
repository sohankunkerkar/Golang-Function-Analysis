sudo apt-get update
# Basic dev deps
sudo apt-get -y install git make vim python-dev python-pip libffi-dev libssl-dev libxml2-dev libxslt1-dev libjpeg8-dev zlib1g-dev
# Ansible and dopy
#Pip install: dopy==0.3.5, ansible==2.2.0, setuptools>=11.3
pip install ansible==2.2.0
pip install -U pip setuptools>=11.3
pip install dopy==0.3.5

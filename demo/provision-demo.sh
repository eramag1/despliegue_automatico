
#!/usr/bin/env bash



sudo apt-get install -y git python-pip python-setuptools python-blist

cd /opt

sudo git clone https://github.com/eramag1/tfc_iot_ha.git

cd /opt/

cp /vagrant/conf/requirements.txt /opt/

python setup.py install
pip install -r requirements.txt
sudo apt-get  update
sudo apt-get install  python-dev -y
sudo pip install functools32
sudo pip install bravado

cd /opt/tfc_iot_ha/


python anomaly_detection.py
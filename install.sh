#!/bin/bash
############################################
######### INSTALLING COUCHDB 3.2.1 #########
###########################################
sudo systemctl stop couchdb
sudo apt-get remove couchdb
sudo apt-get purge couchdb
sudo dpkg -i libnspr4_4.11-1ubuntu1_amd64.deb
sudo dpkg -i -B --force-depends couch-libmozjs185-1.0_1.8.5-1.0.0+couch-2_xenial_amd64.deb
sudo apt-get -f install
sudo dpkg -i -B  --force-depends couchdb_3.2.1_xenial_amd64.deb
sudo systemctl enable couchdb

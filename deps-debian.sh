#!/usr/bin/env bash

#install bq-get dependencies on debian linux

#gcloud + bq + gsutil
sudo echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
sudo apt-get update -y 
sudo apt-get install -y google-cloud-sdk

#pigz
sudo apt-get install -y pigz

#avro-bin (avrocat)
sudo apt-get install -y avro-bin

#fastavro
#fastavro filename.avro --pretty
#/usr/local/google/home/fersanchez/.local/bin/fastavro
#sudo apt-get install -y python-pip
#pip install fastavro
#sudo ln -s /usr/local/google/home/fersanchez/.local/bin/fastavro /usr/local/bin/fastavro
#sudo chmod +x  /usr/local/bin/fastavro

#TODO: snappy decompressor
#snzip
sudo apt-get install -y software-properties-common
sudo add-apt-repository ppa:adegtyarev/snzip
sudo apt-get update -y
sudo apt-get install -y snzip

#compiled
sudo apt-get install -y libsnappy-dev
FILENAME=snzip-1.0.4
curl -o ${FILENAME}.tar.gz https://bintray.com/kubo/generic/download_file?file_path=${FILENAME}.tar.gz
tar xvfz ${FILENAME}.tar.gz
cd ${FILENAME}
./configure
make
make install
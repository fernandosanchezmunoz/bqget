#!/usr/bin/env bash

#install bq-get dependencies on debian linux

#gcloud + bq + gsutil
sudo tee -a /etc/yum.repos.d/google-cloud-sdk.repo << EOM
[google-cloud-sdk]
name=Google Cloud SDK
baseurl=https://packages.cloud.google.com/yum/repos/cloud-sdk-el7-x86_64
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://packages.cloud.google.com/yum/doc/yum-key.gpg
       https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg
EOM
sudo yum install -y google-cloud-sdk

#pigz

sudo yum install -y pigz

#avro-bin (avrocat)
sudo yum install -y avro-bin

#fastavro
#fastavro filename.avro --pretty
#/usr/local/google/home/fersanchez/.local/bin/fastavro
#sudo yum install -y python-pip
#pip install fastavro

#TODO: snappy decompressor
curl -O https://bintray.com/kubo/generic/download_file?file_path=snzip-1.0.4.tar.gz
# The rpm package will be created under $HOME/rpmbuild/RPMS.
sudo rpmbuild -tb snzip-1.0.4.tar.gz 
sudo rpm -Uvh $HOME/rpmbuild/RPMS/snzip*

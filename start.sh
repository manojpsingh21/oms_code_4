#!/bin/bash
echo "This is the OMS 4.0 source code image in Docker"

EXPECTED_PARAMS=1

if [ $# -ne $EXPECTED_PARAMS ]; then
  echo "Error: You need to provide exactly $EXPECTED_PARAMS parameters."
  echo "Usage: $0 <user_name> "
  exit 1
fi

user_name=$1
export MY_DOCKER_CODE_USER=$user_name

echo $MY_DOCKER_CODE_USER
git clone https://github.com/manojpsingh21/oms_code_4.git

mv oms_code_4 user_data
mv ./user_data/* ./

cat rpm_part_* >mysql_rpm.tar.gz

rm -rf rpm_part_*
mv mysql_rpm.tar.gz oms-src4.0-DUMMY_MASTER.tar.gz ./user_data/
cd user_data/
tar xvfz mysql_rpm.tar.gz


echo "mysql rpm files created"

tar xvfz oms-src4.0-DUMMY_MASTER.tar.gz

echo "OMS tar file extracted successfully "
 
rm -rf  MySQL* 

#docker build --build-arg MY_DOCKER_CODE_USER=$user_name -t my-custom-image .


docker compose up -d

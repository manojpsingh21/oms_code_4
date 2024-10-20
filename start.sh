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
mkdir oms_code
git clone https://github.com/manojpsingh21/oms_code_4.git

mv ./oms_code_4/* ./

cat rpm_part_* >mysql_rpm.tar.gz

#rm -rf rpm_part_*

#tar xvfz mysql_rpm.tar.gz
#echo "mysql rpm files created"

#tar xvfz oms-src4.0-DUMMY_MASTER.tar.gz

echo "OMS tar file extracted successfully "
 
#rm -rf mysql_rpm.tar.gz oms-src4.0-DUMMY_MASTER.tar.gz docker_code_file MySQL*

#docker build --build-arg MY_DOCKER_CODE_USER=$user_name -t my-custom-image .


#docker compose up -d

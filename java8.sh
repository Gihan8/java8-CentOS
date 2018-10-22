#!/bin/sh
#Install Java8 on CentOS7
#Created by Gihan De Silva

echo "Download Java8_181 rpm file"
#curl -L -b "oraclelicense=a" -O http://download.oracle.com/otn-pub/java/jdk/8u181-b13/96a7b8442fe848ef90c96a2fad6ed6d1/jdk-8u181-linux-x64.rpm
curl -L -b "oraclelicense=a" -O http://download.oracle.com/otn-pub/java/jdk/8u181-b13/96a7b8442fe848ef90c96a2fad6ed6d1/jdk-8u181-linux-x64.rpm

#Make it executable 
chmod +x jdk-8u191-linux-x64.rpm

echo " "
echo "Install Java"
sudo yum localinstall jdk-8u191-linux-x64.rpm

echo " "
echo "Installation location : /usr/java"

#Set default java 
#alternatives --config java

#Verify installed Java version 
echo " "
java -version

echo " "
echo "Backup bash_profile file in, /etc/tmp"
mv ~/.bashrc /tmp

echo " "
echo "Set java environment variables,"
cp -rf /home/gihanridal8/java8-CentOS/.bashrc ~/

echo " "
echo "Reload the bash file"
source ~/.bashrc

echo "Verifying the Java path is set or not"
echo $JAVA_HOME
echo $JRE_HOME
echo $PATH

echo " "
echo "***   Install Java8 on CentOS7 is completed   ***"

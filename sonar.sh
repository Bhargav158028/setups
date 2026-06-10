#! /bin/bash
#Launch an instance with 9000 and t2.medium
cd /opt/
sudo yum install unzip -y
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-8.9.6.50800.zip
sudo unzip sonarqube-8.9.6.50800.zip
sudo yum install java-11-amazon-corretto -y
sudo useradd sonar
sudo chown -R sonar:sonar /opt/sonarqube-8.9.6.50800
sudo chmod -R 775 /opt/sonarqube-8.9.6.50800 -R
su - sonar

#run this on server manually
#sh /opt/sonarqube-8.9.6.50800/bin/linux/sonar.sh start
#echo "user=admin & password=admin"

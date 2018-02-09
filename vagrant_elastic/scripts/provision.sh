##### INSTALL JAVA #####

sudo apt-get install -y software-properties-common python-software-properties
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
sudo add-apt-repository ppa:webupd8team/java -y
sudo apt-get update
sudo apt-get install oracle-java8-installer
echo "Setting environment variables for Java 8.."
sudo apt-get install -y oracle-java8-set-default

##### INSTALL ELASTIC #####

sudo curl -L -O https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-6.2.1.tar.gz

sudo mkdir /vagrant/data
cp elasticsearch-6.2.1.tar.gz /vagrant/data/elasticsearch-6.2.1.tar.gz

cd /vagrant/data
tar -xvf elasticsearch-6.2.1.ta
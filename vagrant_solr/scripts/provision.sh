# Server name
HOSTNAME="vagrant_solr"

# Locale
LOCALE_LANGUAGE="en_US" # can be altered to your prefered locale, see http://docs.moodle.org/dev/Table_of_locales
LOCALE_CODESET="en_US.UTF-8"

##### INSTALL JAVA #####

sudo apt-get -y install curl
sudo apt-get install python-software-properties
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get -y install oracle-java8-installer
sudo apt-get -y install oracle-java8-set-default


##### INSTALL SOLR #####

sudo curl -O http://apache.forsale.plus/lucene/solr/7.2.1/solr-7.2.1.tgz --output /vagrant/data/solr-7.2.1.tgz
cd /vagrant/data
tar zxf solr-7.2.1.tgz

rm -f solr-7.2.1.tgz

solr-7.2.1/bin/solr start
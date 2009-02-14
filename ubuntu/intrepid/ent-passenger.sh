sudo gem install passenger -v 2.0.6
sudo /opt/ruby-enterprise-1.8.6-20090201/bin/passenger-install-apache2-module

sudo cp ent-passenger.load /etc/apache2/mods-available/ent-passenger.load
sudo a2dismod passenger
sudo a2enmod ent-passenger
sudo /etc/init.d/apache2 restart

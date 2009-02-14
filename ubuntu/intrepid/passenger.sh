sudo gem install passenger -v 2.0.6
sudo passenger-install-apache2-module

sudo cp passenger.load /etc/apache2/mods-available/passenger.load
sudo a2dismod ent-passenger
sudo a2enmod passenger
sudo /etc/init.d/apache2 restart

sh apache2.sh

sudo gem install passenger -v 2.0.6
sudo passenger-install-apache2-module

sudo echo "LoadModule passenger_module /usr/lib/ruby/gems/1.8/gems/passenger-2.0.6/ext/apache2/mod_passenger.so" > /etc/apache2/mods-enabled/passenger.load
sudo echo "PassengerRoot /usr/lib/ruby/gems/1.8/gems/passenger-2.0.6" >> /etc/apache2/mods-enabled/passenger.load
sudo echo "PassengerRuby /usr/bin/ruby1.8" >> /etc/apache2/mods-enabled/passenger.load

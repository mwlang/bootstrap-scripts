sudo apt-get install asciidoc doxygen -y

# fast thread
sudo gem install fastthread -v=1.0.1
cd /usr/local/lib/ruby/gems/1.9.1/gems/fastthread-1.0.1/ext/fastthread
sudo wget http://blog.phusion.nl/wp-content/uploads/2009/02/0001-make-fastthread-a-no-op-on-ruby-19.patch
patch fastthread.c 0001-make-fastthread-a-no-op-on-ruby-19.patch
sudo wget http://blog.phusion.nl/wp-content/uploads/2009/02/0003-fix-a-compilation-warning.patch
patch fastthread.c 0003-fix-a-compilation-warning.patch
cd ../..
ruby setup.rb

gem build fastthread
gem install fastthread

gunzip 0001-passenger-rake-task.patch.gz
git clone git://github.com/FooBarWidget/passenger.git
cd passenger

# currently, have to delete the whole document section because of errors reported with HORO constant
# I tried installing asciidoc and doxygen, etc., to no avail.
# Who needs docs for testing anyhow? :-)
patch Rakefile ../0001-passenger-rake-task.patch
rake package:gem
cd pkg
sudo gem install passenger
cd ..
rake apache2
cd ext/apache2
sudo cp mod_passenger.so /usr/local/lib/ruby/gems/1.9.1/gems/passenger-2.1.0/ext/apache2/
sudo cp ApplicationPoolServerExecutable /usr/local/lib/ruby/gems/1.9.1/gems/passenger-2.1.0/ext/apache2/

sudo cp passenger-191.load /etc/apache2/mods-available/passenger-191.load
sudo a2enmod passenger-191
sudo /etc/init.d/apache2 restart

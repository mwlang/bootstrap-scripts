
wget http://rubyforge.org/frs/download.php/45905/rubygems-1.3.1.tgz

tar xvzf rubygems-1.3.1.tgz
cd rubygems-1.3.1
sudo ruby setup.rb --no-ri --no-rdoc
sudo ln -s /usr/bin/gem1.8 /usr/bin/gem

cd ..
rm -rf rubygems-1.3.1*


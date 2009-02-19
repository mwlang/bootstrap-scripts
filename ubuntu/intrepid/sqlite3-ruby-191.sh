wget http://rubyforge.org/frs/download.php/42056/sqlite3-ruby-1.2.4.tar.gz
tar xzvf sqlite3-ruby-1.2.4.tar.gz
cd sqlite3-ruby-1.2.4/
wget http://rubyforge.org/tracker/download.php/254/1045/23792/4327/0001-Fix-Ruby-1.9.1-compatibility.patch
cd ext/sqlite3_api
patch extconf.rb ../../0001-Fix-Ruby-1.9.1-compatibility.patch
sudo ruby setup.rb
sudo gem build sqlite3-ruby.gemspec
sudo gem install sqlite3-ruby


wget ftp://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.1-p0.tar.gz
tar xzvf ruby-1.9.1-p0.tar.gz
cd ruby-1.9.1-p0.tar.gz
./configure
make
sudo make install

# A fresh Ubuntu doesn't have Ruby installed
# 1.9.1. relies on ruby being present for "ruby extconf.rb" in the ext sub-folders
# Solution, compile and install as above, configure, recompile and install again.
./configure
make
sudo make install

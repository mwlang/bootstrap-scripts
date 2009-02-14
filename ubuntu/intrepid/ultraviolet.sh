wget http://www.geocities.jp/kosako3/oniguruma/archive/onig-5.9.1.tar.gz
tar xzvf onig-5.9.1.tar.gz
cd onig-5.9.1
./configure
make
sudo make install
rm -rf onig-*

sudo gem install oniguruma ultraviolet

sudo su
sudo add-apt-repository ppa:bitcoin/bitcoin -y
sudo apt-get update
sudo apt-get install git libboost-dev libboost-system-dev libboost-program-options-dev libboost-thread-dev libboost-filesystem-dev libcurl4-openssl-dev libdb4.8-dev libdb4.8++-dev libminiupnpc-dev qt5-default libz-dev build-essential make -y


cd /usr/local/src/
sudo wget https://www.openssl.org/source/openssl-1.0.2g.tar.gz --no-check-certificate
sudo tar -xf openssl-1.0.2g.tar.gz

cd openssl-1.0.2g

sudo ./config --prefix=/usr/local/ssl --openssldir=/usr/local/ssl shared zlib
sudo make install
openssl version -a

cd
sudo apt remove gcc-7 g++-7 -y
sudo apt-get install g++-5 gcc-5 -y
sudo apt-get install libssl1.0-dev -y
sudo apt autoremove -y

sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-5 10
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-5 20
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-5 10
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-5 20
sudo update-alternatives --install /usr/bin/cc cc /usr/bin/gcc 30
sudo update-alternatives --set cc /usr/bin/gcc
sudo update-alternatives --install /usr/bin/c++ c++ /usr/bin/g++ 30
sudo update-alternatives --set c++ /usr/bin/g++

git clone https://github.com/esc000658/EsanCoin.git
cd EsanCoin/src
make -f makefile.unix

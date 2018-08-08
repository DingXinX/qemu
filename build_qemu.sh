
#Install dependent packages
# Note: The next compilation needs to be commented out

sudo apt-get install libpixman-1-dev 
sudo apt-get install libsdl2-2.0
sudo apt-get install libsdl2-dev
sudo apt-get install libusb-1.0-0-dev

# clean qemu

function clean(){

make clean
}

# compile qemu

function build_qemu(){

./configure --enable-kvm --enable-tpm --enable-sdl --enable-libusb

sudo make -j4

make install
}

read -p "Please enter your choice(1|2):" num

case $num in 
    "1")
        build_qemu
        ;;
    "2")
        clean
        ;;
esac




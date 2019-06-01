# Reset repos [optional]
# rm /etc/apt/sources.list

# Add repos [optional]
# echo "deb http://deb.debian.org/debian buster main" >> /etc/apt/sources.list
# echo "deb http://deb.debian.org/debian buster-updates main" >> /etc/apt/sources.list
# echo "deb http://security.debian.org buster/updates main" >> /etc/apt/sources.list


checkCommandExist(){
 if ! [ -x "$(command -v $1)" ]; then
  sudo apt-get -y install $1
  else echo 'LOG: '$1' is installed.'
 fi
}

checkCommandExist build-essential
checkCommandExist linux-source
checkCommandExist bc
checkCommandExist kmod
checkCommandExist cpio
checkCommandExist flex
checkCommandExist libncurses5-dev

checkCommandExist libelf-dev
checkCommandExist libssl-dev:native

# tar xf '/media/kavan/OTHER/Linux/linux-5.1.6.tar.xz' -C kavan/

# make nconfig

# make -j`nproc` bindeb-pkg







# Update GCC 9
# apt install gcc-9 g++-9
# update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-9 60 --slave /usr/bin/g++ g++ /usr/bin/g++-9

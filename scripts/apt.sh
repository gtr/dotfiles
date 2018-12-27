#!/usr/bin/env bash

echo "installing packages..."

sudo apt update

# basics --

sudo apt install -y \
    curl \
    git \
    fish \
    neofetch \
    nnn \
    tree \
    wget 

# some tools i might not need -- 

read -p "Install extra tools? " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    sudo apt intall -y \
        cheese \
        gnome-tweak-tool \
        mupdf mupdf-tools
fi


# drive -- 

sudo add-apt-repository ppa:alessandro-strada/ppa
sudo apt-get install google-drive-ocamlfuse 

# development -- 

read -p "Install extra tools? " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    sudo apt install -y \
        default-jre \
        default-jdk \
        g++ \
        golang-go \
        nodejs \
        npm \
        python3 \
        python3-pip \
        scala \
        texlive-full
fi

#!/usr/bin/env bash

echo "installing packages..."

sudo apt update

# basics --

sudo apt install -y \
    curl \
    git \
    fish \
    neofetch \
    tree \
    wget 

# some stuff i might not need -- 

sudo apt intall -y \
    cheese \
    gnome-tweak-tool \
    mupdf mupdf-tools

# drive -- 

sudo add-apt-repository ppa:alessandro-strada/ppa
sudo apt-get install google-drive-ocamlfuse 

# development -- 
sudo apt install -y \
    default-jre \
    default-jdk \
    g++ \
    golang-go \
    nodejs \
    npm \
    python3 \
    python3-pip \
    texlive-full \


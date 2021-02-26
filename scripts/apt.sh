#!/usr/bin/env bash

echo "scripts/apt.sh"
echo "installing packages..."

sudo apt update

# basics --

sudo apt install -y \
    cmake \
    curl \
    git \
    fish \
    nitrogen \
    neofetch \
    nnn \
    tree \
    unzip \
    wajig \
    wget \
    xrandr \

sudo add-apt-repository ppa:hvr/ghc

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

read -p "Install development tools? " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    sudo apt install -y \
        default-jre \
        default-jdk \
        fp-compiler-3.0.4:amd64 \
        g++ \
        ghc-8.0.2 \
        golang-go \
        nodejs \
        npm \
        ocaml-interp \
        python3 \
        python3-pip \
        scala \
        scm \
        texlive-full
fi

# rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# bug fix for dash-to-dock

sudo apt remove gnome-shell-extension-ubuntu-dock
sudo apt install gnome-shell-extension-dashtodock

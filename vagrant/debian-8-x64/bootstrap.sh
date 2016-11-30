#!/bin/bash

# Set up and update package repos
apt-get update

# Install necessary development and other packages
apt-get install -y build-essential dpkg-dev
apt-get install -y libgtk2.0-dev libgtk-3-dev

apt-get install -y libwebkitgtk-dev libjpeg-dev libtiff-dev \
	libsdl1.2-dev libgstreamer-plugins-base0.10-dev \
	libnotify-dev freeglut3 freeglut3-dev

# Install all available Python packages and their dev packages
apt-get install -y python2.7 python2.7-dev libpython2.7-dev python-virtualenv
apt-get install -y python3.4 python3.4-dev libpython3.4-dev python3.4-venv
#apt-get install -y python3.5 python3.5-dev libpython3.5-dev python3.5-venv

# Set up virtual environments for each Python where the Phoenix builds will be done
virtualenv --python=python2.7 Py27
pyvenv-3.4 Py34
#pyvenv-3.5 Py35


#!/bin/bash

# Python, pip and venv:

sudo apt-get update
sudo apt-get install -y python3 python3-pip python3-venv 

# Create and activate the virtual environment:

python3 -m venv venv
python3 create.py
source venv/bin/activate

# Install pip requirements:

pip3 install -r requirements.txt
pip3 install pytest pytest-cov flask_testing
#!/bin/bash

# Create a virtual environment
python3 -m venv venv

# Activate the virtual environment
source venv/bin/activate

# Install Ansible in the virtual environment
pip install ansible

# Run the Ansible playbook
ansible-playbook -i inventory.ini setup.yml --ask-become-pass

# Deactivate the virtual environment
deactivate


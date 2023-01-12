#!/bin/bash

# Put directory into executable
sed -i "s|REPLACEME|${PWD}|g" notebook

# Make executable
chmod 755 notebook

# Add to path if not already there
if [[ -z $(grep "PATH=${PWD}:${PATH}" ~/.bashrc) ]]; then
    echo "PATH=${PWD}:${PATH}" >> ~/.bashrc
fi

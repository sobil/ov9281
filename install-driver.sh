#!/usr/bin/env bash


# Install the driver
echo "check for the OV9281 driver..."


# Check if the driver is already installed
if [ -f /etc/modules-load.d/ov9281.conf ]; then
    echo "The OV9281 driver is already installed."
    exit 0
fi

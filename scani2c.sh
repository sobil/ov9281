#!/usr/bin/env bash

# This script scans the I2C bus for connected devices

i2cdetect -l | while read line
do
  if [[ $line =~ i2c-([0-9]+) ]]
  then
    i2c=${BASH_REMATCH[1]}
    echo "I2C bus $i2c:"
    i2cdetect -y $i2c
  fi
done
#!bin/bash

ifconfig en0 | grep -w "inet" | cut -d" " -f2

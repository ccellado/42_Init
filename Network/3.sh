#!bin/bash

ifconfig en1 | grep "ether" | cut -d " "  -f2

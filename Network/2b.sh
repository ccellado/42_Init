#!/bin/bash
ifconfig en0 | grep 192.168 | cut -d' ' -f2 ; ifconfig en0 | grep 192.168 | cut -d' ' -f6

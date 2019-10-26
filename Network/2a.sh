#!/bin/bash
ifconfig en0 | awk '{for(i=1;i<=NF;i++)if($i=="broadcast")print $(i+1)}'

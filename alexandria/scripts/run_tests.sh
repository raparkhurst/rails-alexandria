#!/bin/bash
########################################################################################################################
#
# run_tests.sh
#
# Author:   raparkhurst@digitalsynapse.io
# Date:     March 20, 2018
# Purpose:  Simple script to kick off rspec tests and display each test title
#
########################################################################################################################

run_time=`date +%Y-%m-%d_%H%M%S`
mkdir -p ./output
rspec -fh ./spec > ./output/test-${run_time}.html
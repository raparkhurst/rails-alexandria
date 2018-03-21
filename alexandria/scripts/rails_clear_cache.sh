#!/bin/bash
########################################################################################################################
#
# rails_clear_cache.sh
#
# Author:   raparkhurst@digitalsynapse.io
# Date:     March 20, 2018
# Purpose:  Simple script to clear tmp files out of rails
#
########################################################################################################################

rails tmp:cache:clear
rails tmp:clear


rails tmp:cache:clear RAILS_ENV=test
rails tmp:clear RAILS_ENV=test
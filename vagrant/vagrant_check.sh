#!/bin/bash

platform='unknown'
unamestr=`uname`
if [[ "$unamestr" == 'Linux' ]]; then
    platform='linux'
elif [[ "$unamestr" == 'Darwin' ]]; then
    platform='mac'
elif [[ "$unamestr" == 'FreeBSD' ]]; then
   platform='freebsd'
fi


# Source the appropriate platform-specific bashrc file
#if [[ $platform == 'linux' ]]; then
#    
#    
#elif [[ $platform == 'mac' ]]; then
#    . ~/Dropbox/raparkhurst/.bashrc_macosx
#fi



vagrant plugin install vagrant-omnibus

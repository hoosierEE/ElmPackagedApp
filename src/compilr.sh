#!/bin/bash

##################################################
# A script for automating the build process with
# the (Elm + Chrome Packaged App) software model
# 
# author: Alex Shroyer
##################################################

# 'vendor' directory holds our elm-runtime.js file
vend="TheAppItself/vendor"

# compile all *.elm files in this directory 
# and put the *.js results in the 'vendor' directory
elm --make \
    --only-js \
    --runtime=$vend/elm-runtime.js \
    --build-dir=$vend \
    *.elm

# remove the cache/ dir
rm -r cache

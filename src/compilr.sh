#!/bin/bash

##################################################
# A script for automating the build process with
# the (Elm + Chrome Packaged App) software model
# 
# author: Alex Shroyer
##################################################

# 'vendor' directory holds our elm-runtime.js file
vendorDirectory="TheAppItself/vendor"

# compile all *.elm files in this directory 
# and put the *.js results in the 'vendor' directory
elm --make \
    --only-js \
    --runtime=$vendorDirectory/elm-runtime.js \
    --build-dir=$vendorDirectory \
    *.elm

# remove the cache/ dir since we are unlikely to need it
rm -r cache

embedMethod="embed"

# generate a startup script for each module
for i in $(ls *.elm); do
  fileName=$(basename "$i")
  shortName=${fileName%%.*}
  scriptName="start-$shortName.js"
  cat > $vendorDirectory/$scriptName <<- _EOF_
/*    $scriptName   */
var $shortName-element = document.getElementById('$shortName-div');
var $shortName-comms = Elm.$embedMethod(Elm.$shortName, $shortName-element);
_EOF_
done

exit 0

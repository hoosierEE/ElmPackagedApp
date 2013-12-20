#!/bin/bash

# this is the only method used at the moment, but there are also
# "fullscreen", and "worker" options
insertionMethod="embed"

# generate a startup script for each module
for i in $(ls *.elm); do
  fileName=$(basename "$i")
  shortName=${fileName%%.*}
  scriptName="start-$shortName.js"
  cat <<- _EOF_
var $shortName-element = document.getElementById('$shortName-div');
var $shortName-comms = Elm.$insertionMethod(Elm.$shortName, $shortName-element);
_EOF_
done

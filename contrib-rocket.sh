#!/bin/bash

function contrib-rocket {
  trail=`gh-contribs $@ | spark`
  echo "${trail}🚀"
}

# checks if the script is not being sourced
# http://stackoverflow.com/questions/2683279/how-to-detect-if-a-script-is-being-sourced
if [ "$0" = "$BASH_SOURCE" ]; then
  contrib-rocket
fi

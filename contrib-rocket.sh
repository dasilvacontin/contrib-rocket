#!/bin/bash

function contrib-rocket {
  trail=`gh-contribs $@ | spark`
  echo "${trail}🚀"
}

function command-exists {
  command -v $1 &>/dev/null
}

function install-log {
  echo -e "\033[32mUsing ${1} to install ${2} (contrib-rocket's dependency)\033[0m"
}

if ! command-exists gh-contribs; then
  install-log npm gh-contribs
  npm i -g gh-contribs
fi

if ! command-exists spark; then
  if command-exists brew; then
    install-log brew spark
    brew install spark
    if ! command-exists spark; then
      # maybe user removed symlink manually for reasons
      brew unlink spark && brew link spark
    fi
  else
    install-log curl+chmod spark
    sudo sh -c "curl https://raw.githubusercontent.com/holman/spark/master/spark -o /usr/local/bin/spark && chmod +x /usr/local/bin/spark"
  fi
fi

unset -f command-exists install-log

# checks if the script is not being sourced
# http://stackoverflow.com/questions/2683279/how-to-detect-if-a-script-is-being-sourced
if [ "$0" = "$BASH_SOURCE" ]; then
  contrib-rocket
fi

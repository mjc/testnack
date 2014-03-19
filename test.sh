#!/usr/bin/env bash
if [ ! $(which nack) ]; then
  npm install -g nack
fi
if [ ! $(which chruby-exec) ]; then
  echo "Please install chruby or modify test.sh to use your ruby switching tool."
  exit
fi
if [ "$1" == "" ]; then
  echo "Please provide the ruby version to use on the commandline like ./test.sh jruby-head"
  exit
fi

chruby-exec $1 -- nack config.ru

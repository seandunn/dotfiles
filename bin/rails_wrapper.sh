#!/usr/bin/env bash

if [ `which ruby |grep 1.8.7` ]
then

  echo "ruby 1.8.7 detected - assuming you are running rails < 3.0"

  if [ $1 = "server" ]
  then
    echo "./script/server"
    script/server
  elif [ $1 = "console" ]
  then
    echo "./script/console"
    script/console
  fi

else
  rails $@
fi

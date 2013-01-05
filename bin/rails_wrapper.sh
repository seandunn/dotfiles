#!/usr/bin/env bash

if [ `which ruby | grep 1.8.7` ]
then
  echo "Ruby 1.8.7 detected - so I'm assuming you're running rails 2.3.x"
  echo -e "  Calling: ./script/$@\n"
  exec ./script/$@
elif [ `which ruby | grep jruby` ]
then
  echo "Ruby jRuby detected - so I'm assuming you're running rails 2.3.x"
  echo -e "  Calling: ./script/$@\n"
  exec ./script/$@
else
  exec rails $@
fi

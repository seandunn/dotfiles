#!/usr/bin/env bash

if [ `which ruby | grep 1.8.7` ]
then
  echo "Ruby 1.8.7 detected - so I'm assuming you're running rails < 3.0"
  echo -e "  Calling: ./script/$@\n"
  ./script/$@
else
  rails $@
fi

#! /usr/bin/env bash
FILE=cimplylib/cimply.h

if test -f "$FILE"; then
  echo "run \`make\`"
else
  git submodule init
  git submodule sync
  echo "run \`make\`"
fi


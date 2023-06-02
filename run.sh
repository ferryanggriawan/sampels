#!/bin/sh

arg="$1"

if [ $arg = "dev" ]; then
  echo "compiling without compressed output"
  sass sass/main.scss dist/samples.css --watch --no-source-map
elif [ $arg = "build:dev" ]; then
  echo "compiling with compressed output"
  sass sass/main.scss dist/samples.min.css --style=compressed --watch --no-source-map
elif [ $arg = "build" ]; then
  echo "compiling with compressed output"
  sass sass/main.scss dist/samples.min.css --style=compressed --no-source-map
else
  echo "argument should be one of this [dev | build:dev | build]"
fi
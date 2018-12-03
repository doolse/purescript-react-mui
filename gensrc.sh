#! /bin/bash

cd "$(dirname "$0")"

rm -rf src/gen

cd synctypes && rm -rf node_modules && yarn install && pulp run

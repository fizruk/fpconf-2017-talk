#!/bin/sh

set -e
set -x

# always run from a directory this script is in
cd $(dirname $0)

# find out where GHCJS /lib/etc files are located
GHCJS_LIB_ETC_PATH=$(dirname $(stack path --global-pkg-db))

# replace irunner.js to enable static file server
cp ghcjs/lib/etc/irunner.js ${GHCJS_LIB_ETC_PATH}/irunner.js

# specify a directory to serve static files from
export GHCJSI_STATIC_DIR=$(pwd)/static

# run GHCJSi
stack repl

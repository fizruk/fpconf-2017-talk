#!/bin/sh

set -e
set -x

# always run from a directory this script is in
cd $(dirname $0)

# specify a directory to serve static files from
static_dir=$(pwd)/static

stack build

# where the "executable" is
exe_dir="$(stack path --local-install-root)/bin/demo.jsexe"

# copy static files over to where executable is
cp -r ${static_dir}/* "${exe_dir}/."

# open browser
open "${exe_dir}/index.html"

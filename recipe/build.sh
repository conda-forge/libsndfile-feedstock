#!/bin/bash

if [ "$(uname)" == "Linux" ]
then
   export LDFLAGS="$LDFLAGS -Wl,-rpath-link,${PREFIX}/lib"
fi

./configure prefix=$PREFIX
make -j${CPU_COUNT}
make install

#!/bin/bash
# trigger Test 3 4 5 6 7
uname -a
curl -L http://files.sloppy.io/sloppy-`uname -s`-`uname -m` > ./sloppy
chmod +x ./sloppy
./sloppy login -u $user -p $pw
./sloppy show
./sloppy start ./todo-mongodb.json

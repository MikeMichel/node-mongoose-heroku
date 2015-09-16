#!/bin/bash
# trigger Test 3 4 5 6 7 8 9 10 11 12 13
curl -L http://files.sloppy.io/sloppy-`uname -s`-`uname -m` > ./sloppy
chmod +x ./sloppy
./sloppy login -u $SLOPPY_USERNAME -p $SLOPPY_PASSWORD
./sloppy change codeship2sloppy/frontend/node -image mikemichel/codeship2sloppy:$CI_COMMIT_ID
./sloppy logout

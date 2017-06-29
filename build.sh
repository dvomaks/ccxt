#!/bin/bash
comment="'$@'"
npm run transpile &&
git commit -am $comment &&
npm version patch &&
git push &&
python setup.py sdist upload
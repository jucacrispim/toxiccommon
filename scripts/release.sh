#!/bin/bash

rm -rf dist/

python -m build

cd dist

fname=`ls | grep tar`
project_name=toxiccommon

curl -F file=@$fname -F prefix=$project_name https://pypi.poraodojuca.dev -H "Authorization: Key $PYPI_AUTH_KEY"

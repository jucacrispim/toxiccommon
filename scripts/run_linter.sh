#!/bin/bash

pylint toxiccommon/
if [ $? != "0" ]
then
    exit 1;
fi

flake8 toxiccommon/

if [ $? != "0" ]
then
    exit 1;
fi

flake8 tests
exit $?;

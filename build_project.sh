#!/bin/bash
# django-helpdesk shell script to upload to pypi.

WORKDIR=/tmp/multitenancy-helpdesk-build.$$
mkdir $WORKDIR
pushd $WORKDIR

git clone git://github.com/multitenancy-helpdesk/django-helpdesk.git
cd django-helpdesk

/usr/bin/python setup.py sdist upload

popd
rm -rf $WORKDIR

#!/bin/bash

TMP_DIR=`mktemp -d lucashifactsi.XXXXXXX` || exit 1
git clone https://github.com/Caelink/lucashifacts.git $TMP_DIR

cd $TMP_DIR
./spam_me.sh
cd -
rm -rf $TMP_DIR

#!/bin/bash

TMP_DIR=$(mktemp -d lucashifactsi.XXXXXXX) || exit 1
git clone https://github.com/Caelink/lucashifacts.git "$TMP_DIR"

cd "$TMP_DIR" || exit 1
./spam_me.sh
cd - || exit 1
rm -rf "$TMP_DIR"

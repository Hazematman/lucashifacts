#!/bin/bash

source ./config.sh

cat $EMAILS | xargs -n 1 $MAIL_SCRIPT

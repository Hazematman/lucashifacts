#!/bin/bash

source ./config.sh

if [ -r $EMAILS ]; then
    cat "$EMAILS" | xargs -n 1 "$MAIL_SCRIPT"
else
    ./$MAIL_SCRIPT
fi

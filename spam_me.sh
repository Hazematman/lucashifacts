#!/bin/bash

source ./config.sh

< $EMAILS xargs -n 1 $MAIL_SCRIPT

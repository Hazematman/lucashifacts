#!/bin/bash

tmpstring=$(cat template)
randomfacts=$(shuf -n 1 lucashifacts)
tmpstring="$tmpstring $randomfacts"

echo "$tmpstring" | /usr/bin/mail -s "lucashi fact of the day" "$1"

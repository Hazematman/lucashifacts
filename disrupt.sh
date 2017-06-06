#!/bin/bash

randomfacts="$(shuf -n 1 lucashifacts)"
export facthtml="$(echo ${randomfacts} | sed 's/&/\&amp;/g; s/</\&lt;/g; s/>/\&gt;/g; s/"/\&quot;/g; s/'"'"'/\&#39;/g')"
export tmpstring
tmpstring="$(eval "echo \"$(cat template)\"")"

if [ "$#" -eq 1 ]; then
    echo "$tmpstring" | /usr/bin/mutt -e 'set content_type=text/html' -s "lucashi fact of the day" "$1"
else
    echo "$tmpstring"
fi

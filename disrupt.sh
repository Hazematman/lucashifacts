randomfacts=$(shuf -n 1 lucashifacts)
facthtml="$(echo ${randomfacts} | sed 's/&/\&amp;/g; s/</\&lt;/g; s/>/\&gt;/g; s/"/\&quot;/g; s/'"'"'/\&#39;/g')"
tmpstring=$(eval "echo \"$(cat template)\"")

echo "$tmpstring" | /usr/bin/mutt -e 'set content_type=text/html' -s "lucashi fact of the day" $1

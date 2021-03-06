#!/bin/bash

# https://stackoverflow.com/a/1521498/10477326
while IFS="" read -r p || [ -n "$p" ]; do
    JSON=$(curl -d "$p" -H 'Content-Type: text/plain' 'http://127.0.0.1:1969/web' 2>/dev/null)
    echo '% URL: '"$p"
    curl -d "$JSON" -H 'Content-Type: application/json' 'http://127.0.0.1:1969/export?format=bibtex'
done < urls.txt > references.bib

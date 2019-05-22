#!/bin/bash

echo 0 > count
echo '<h1>Librivox</h1><p><small>Use a download manager like <a href="http://jdownloader.org">jdownloader</a> to download this entire folder.</small></p><p>Last Updated: ' $(date) '</p>' > ./index.html
count=`cat count`; while [ $count -lt 25585 ]; do wget -O ./book.xml "https://librivox.org/api/feed/audiobooks/?offset=${count}&limit=1&fields=title,url_zip_file"; ./librivox.sh; count=`expr $count + 1`; echo "${count}" > count; done


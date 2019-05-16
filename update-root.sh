#!/bin/bash

echo generate master index.html file
echo '<h1>HOP - Hyperlinked Open Directory</h1><p><small>Use a download manager like <a href="http://jdownloader.org">jdownloader</a> to download this entire folder.</small></p><p>Last Updated: ' $(date) '</p>' > ./index.html
for d in ./*/ ; do (echo '<a href="'$d'">'$d'</a><br>' >> ./index.html); done

echo '<br><br><hr><p>I use this website as a catalog for a large amount of content. It is designed to appear as an open directory, but only the index files are hosted here. It is simply a directory structure for organization.' >> ./index.html


echo done

#!/bin/bash

echo generate master index.html file
echo '<h1>Audio</h1><p><small>Use a download manager like <a href="http://jdownloader.org">jdownloader</a> to download this entire folder.</small></p><p>Last Updated: ' $(date) '</p>' > ./index.html
for d in ./*/ ; do (echo '<a href="'$d'">'$d'</a><br>' >> ./index.html); done




echo done

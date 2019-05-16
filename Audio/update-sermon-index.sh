#!/bin/bash

echo Cleanup old files
echo
rm -rf 'Sermon Index'
echo Make Directory Sermon Index
mkdir 'Sermon Index'
cd 'Sermon Index'
echo Download updated Speaker Listing
wget http://img.sermonindex.net/Cache_Update.zip
echo  
echo Extract Speaker Listing File
unzip *.zip
echo  
echo Delete Speaker Listing Zip
rm *.zip
echo  
echo Cleaning up XML files to be used with Wget...
echo  
echo replace trailing title tag with mp3 file extension
sed -i -- 's,</Title>,.mp3,g' *.xml
echo  
echo remove exclamation points from titles
sed -i -- 's,!,,g' *.xml
echo  
echo remove single quotes from titles
sed -i "s,',,g" *.xml
echo  
echo remove ampersand from titles
sed -i 's,&amp;,And,g' *.xml
echo  
echo replace colon with period in verses
sed -i -- 's,:,.,g' *.xml
echo  
echo restore the colon in url addresses
sed -i -- 's,p./,p:/,g' *.xml
echo  
echo remove spaces from titles
sed -i -- 's, ,,g' *.xml
echo  
echo remove leading title tag
sed -i -- 's,<Title>,,g' *.xml
echo  
echo remove leading url tag
sed -i -- 's,<Url>,,g' *.xml
echo  
echo remove all remaining xml tags and everything inbetween
sed -i 's,<.*>,,g' *.xml
echo  
echo cleanup white space
sed -i '/^$/d' *.xml
#echo
#echo change file extension
#mmv \*.xml \#1.html
echo  
echo make a directory for all xml files and copy xml files into corresponding directory
find . -name "*.xml" -exec sh -c 'mkdir "${1%.*}" ; mv "$1" "${1%.*}" ' _ {} \;
echo  
echo generate html files
for d in ./*/ ; do (cd "$d"; echo "<h1>"$d"</h1><p>Use a download manager like <a href="http://jdownloader.org">jdownloader</a> to download this entire folder.</p>" >> ./index.html; while read filename; do read url; echo '<a href="'${url}'">'${filename}'</a><br>' >> ./index.html; done < *.xml); done
echo  
echo delete xml files
for d in ./*/ ; do (cd "$d"; rm *.xml); done
echo
echo make master index.html file
echo '<h1>Sermon Index</h1><p><small>Use a download manager like <a href="http://jdownloader.org">jdownloader</a> to download this entire folder.</small></p><p>Last Updated: ' $(date) '</p>' >> ./index.html
for d in ./*/ ; do (echo '<a href="'$d'">'$d'</a><br>' >> ./index.html); done
echo done

#<p></p><code><p id="demo"></p></code><script>document.getElementById("demo").innerHTML = \'wget -m -np -H -R "index.html*" "\' + window.location.href + \'"';</script>

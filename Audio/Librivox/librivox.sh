#!/bin/bash

# This supports updat-librivox.sh
# DO NOT edit or run this file by itself unless you know what it does and what you are doing.

sed -i -- 's,</title>,\n,g' book.xml
sed -i -- 's,<book>,\n,g' book.xml
sed -i -- 's,</url_zip_file>,\n,g' book.xml
sed -i -- 's,!,,g' book.xml
sed -i 's,",,g' book.xml
sed -i "s,',,g" book.xml
sed -i 's,&amp;,And,g' book.xml
sed -i -- 's,:,.,g' book.xml
sed -i -- 's,p./,p:/,g' book.xml
sed -i -- 's,<title>,,g' book.xml
sed -i -- 's,<url_zip_file>,,g' book.xml
sed -i 's,<.*>,,g' book.xml
sed -i '/^$/d' book.xml
while read title; read url; do echo '<a href="'$url'">'$title'</a><br>' >> index.html; done <book.xml


#!/bin/sh

CURL="curl -s"

CODEGC=http://code.google.com/p/oplop/source/browse/AppEngine/static

fetch () {
    typeset URL=$1
    echo -n "${URL}... "
    ${CURL} $*
    echo ok
}

for FILE in website.css jquery.js website.js; do
    fetch "${CODEGC}/${FILE}" -O
done
fetch https://oplop.appspot.com/ -o index.html 

#!/bin/sh

CURL="curl -s"

CODEGC=http://oplop.googlecode.com/hg
CODEGCFILES="
HTML5/index.css
HTML5/hvga.css
AppEngine/static/website.css
AppEngine/static/website.js
AppEngine/static/jquery.js
"

fetch () {
    typeset URL=$1
    echo -n "${URL}... "
    ${CURL} $*
    echo ok
}

for FILE in ${CODEGCFILES}; do
    fetch "${CODEGC}/${FILE}" -O
done
fetch https://oplop.appspot.com/ -o index.html 

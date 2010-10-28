#!/bin/sh

CURL="curl -s"

CODEGC=http://oplop.googlecode.com/hg
CODEGCFILES="
JavaScript/md5.js
JavaScript/oplop.js
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

PATTERN="*"
if [ -n "$1" ]; then
    PATTERN=$1
fi

for FILE in ${CODEGCFILES}; do
    case "${FILE}" in
        ${PATTERN}) fetch "${CODEGC}/${FILE}" -O;;
    esac
done
case index.html in 
    ${PATTERN}) fetch https://oplop.appspot.com/ -o index.html;;
esac

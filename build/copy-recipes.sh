#!/bin/bash

CONTENT_DIR=site/contents

for file in seeds/*.md ; do
    infilename=$(basename "$file")
    extension="${infilename##*.}"
    infilename="${infilename%.*}"
    infilename=`echo $infilename|sed 's/-/ /g'`
    outfilename=`echo $infilename|tr '[:upper:]' '[:lower:]'`
    outfilename=`echo $outfilename.md|sed 's/ /-/g'`
    echo "---
template: page.jade
section: recipes
title: $infilename
---
" > $CONTENT_DIR/tmpfile && cat "$file" >> $CONTENT_DIR/tmpfile && mv $CONTENT_DIR/tmpfile $CONTENT_DIR/"$outfilename"
done
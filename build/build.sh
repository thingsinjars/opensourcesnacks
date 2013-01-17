#!/bin/bash

BUILD_DIR=`dirname "$0"`

echo "Copying recipe sources to site content"

$BUILD_DIR/copy-recipes.sh

cd $BUILD_DIR/../site

echo "Generating site"

wintersmith build
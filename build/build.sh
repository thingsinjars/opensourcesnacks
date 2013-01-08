#!/bin/bash

BUILD_DIR=`dirname "$0"`

$BUILD_DIR/copy-recipes.sh

cd $BUILD_DIR/../site

wintersmith build
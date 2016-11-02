#!/usr/bin/env bash

TAGGER_DIR=stanford-postagger
TAGGER_VERSION=2015-12-09
TAGGER_LINK=http://nlp.stanford.edu/software/stanford-postagger-full-$TAGGER_VERSION.zip

if [ ! -d "$TAGGER_DIR" ]; then
  echo "Stanford Postagger isn't installed. Installing..."
  wget $TAGGER_LINK
  unzip stanford-postagger-full-$TAGGER_VERSION.zip
  mv stanford-postagger-full-$TAGGER_VERSION stanford-postagger
  rm stanford-postagger-full-$TAGGER_VERSION.zip
else
  echo "Stanford Postagger is already installed."
fi

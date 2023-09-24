#!/bin/env bash
cd $1
BRANCH=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
STATUS=$(git status --porcelain 2>/dev/null| egrep "^(M| M)" | wc -l)
if test "$BRANCH" != ""; then
  if test "$STATUS" = "0"; then
    echo "#[fg=#46c880,bg=#161616,nobold,noitalics,nounderscore] #[fg=#f2f4f8,bg=#46c880,bold]   $BRANCH  "
  else
    echo "#[fg=#f16da6,bg=#161616,nobold,noitalics,nounderscore] #[fg=#f2f4f8,bg=#f16da6,bold]   $BRANCH  "
  fi
fi

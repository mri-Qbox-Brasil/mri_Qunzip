#!/bin/bash
# Obtemos a tag anterior se ela existir
                  LAST_TAG=$(git describe --tags --abbrev=0 HEAD^ 2>/dev/null || echo "")
                  CURRENT_TAG="v1.0.0"

                  if [ -n "$LAST_TAG" ]; then
                    COMMITS=$(git log $LAST_TAG..$GITHUB_SHA --oneline --pretty=format:"%h %s")
                  else
                    COMMITS=$(git log --oneline --pretty=format:"%h %s")
                  fi

                  echo "$COMMITS"
                  echo "$COMMITS" > ./release_body.txt


#!/bin/bash
# Tenta obter a última tag
    if git describe --tags --abbrev=0 > /dev/null 2>&1; then
      PREV_TAG=$(git describe --tags --abbrev=0)
      COMMITS=$(git log $PREV_TAG..HEAD --oneline --pretty=format:"%h %s")
    else
      # Se não houver tags anteriores, pegue todos os commits desde o início
      COMMITS=$(git log --oneline --pretty=format:"%h %s")
    fi

    # Salva os commits em um arquivo
    echo "$COMMITS" > release_body.txt

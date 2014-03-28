#!/bin/bash

NAME=$1

function help {
  echo -e "\n  $0 PROJECT_NAME"
}

if [ "$NAME" == "" ]; then
  echo -e "\nPlease specify name."
  help
  exit 1
fi

set -e

echo "Renaming to $NAME."
find . -type f -name '*.md' -exec sed -i '' s/go-project/$NAME/g {} +
find . -type f -name 'Makefile' -exec sed -i '' s/go-project/$NAME/g {} +
mv go-project/go-project go-project/$NAME
mv go-project $NAME

echo "Writin README.md"
cat > $NAME/README.md << EOF
# $NAME

Created from go-project
EOF

#!/bin/bash

NAME=$1

function help {
  echo -e "\n  $0 PROJECT_NAME"
}

if [ "$NAME" == "" ]; then
  echo -e "Please specify name."
  help
  exit 1
fi

which sed
if [ $? -ne 0 ]; then
  echo -e "sed must be in your path."
  exit 1
fi

set -e

echo "Renaming to $NAME."

case `uname` in
  Linux)
    find . -type f -name '*.md' -exec sed -i 's/go-project/$NAME/g' {} \;
    find . -type f -name 'Makefile' -exec sed -i 's/go-project/$NAME/g' {} \;
    ;;
  Darwin)
    find . -type f -name '*.md' -exec sed -i '' s/go-project/$NAME/g {} +
    find . -type f -name 'Makefile' -exec sed -i '' s/go-project/$NAME/g {} +
    ;;
  *)
    echo -e "Unknown OS"
    exit 1
esac

mv go-project/go-project go-project/$NAME
mv go-project $NAME

echo "Writing README.md"
cat > $NAME/README.md << EOF
# $NAME

Created from go-project
EOF

echo "Project $NAME created."

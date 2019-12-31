#!/bin/sh

# Make lints before commit made.
# To use it:
#
#     cd /where/is/interstellar
#     ln -s $PWD/tools/pre-commit .git/hooks/pre-commit
#
LINT_DIRS="interstellar|tests|scripts|testing"
FILENAMES=$(git diff --name-only --cached --diff-filter=ACMRTUXB | ack "^(($LINT_DIRS)(?=/).)?.*\.py$")

if [ ! -z "$FILENAMES" ]
then
  flake8 $FILENAMES
fi

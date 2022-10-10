#!/bin/bash
set -e

if [ -d src/__pycache__ ]; then
    rm -r src/__pycache__
fi

cd src
zip -r ../editor-preview.ankiaddon --exclude meta.json -- *
cd ..
unzip -l  editor-preview.ankiaddon

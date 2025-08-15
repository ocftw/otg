#!/bin/bash

# Change to the script's directory to ensure relative paths work.
cd "$(dirname "$0")"

# This script builds both the Chinese and English versions of the MkDocs site.

# Activate the virtual environment first
source venv_mkdocs/bin/activate

echo "Building Chinese site into site/zh/ ..."
mkdocs build -f mkdocs-zh.yml

echo "Building English site into site/en/ ..."
mkdocs build -f mkdocs-en.yml

echo "Build complete. The static site is in the 'site' directory."

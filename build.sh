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

# Create a root index.html to redirect to the default language (zh)
echo "Creating root redirect page..."
echo '<!DOCTYPE html><html><head><meta charset="utf-8"><title>Redirecting...</title><meta http-equiv="refresh" content="0; url=./zh/"><link rel="canonical" href="./zh/"></head><body><p>Redirecting to the default language version... <a href="./zh/">Click here if you are not redirected.</a></p></body></html>' > site/index.html

echo "Build complete. The static site is in the 'site' directory."
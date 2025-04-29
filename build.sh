#!/bin/bash
set -e

echo "Running build in branch: $CF_PAGES_BRANCH"

mkdir -p output

for f in content/*.md; do
  filename=$(basename "$f" .md)
  pandoc "$f" --standalone --output="output/$filename.html"
done


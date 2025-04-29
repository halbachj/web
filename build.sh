#!/bin/bash
set -e

echo "Running build in branch: $CF_PAGES_BRANCH"

mkdir -p output

for f in content/*.md; do
  filename=$(basename "$f" .md)
  outputf=$(basename /output/ "$f" .html)
  echo "Building $filename"
  pandoc "$f" --standalone --output="$outputf"
  echo "Finished building $filename. Output written to $outputf"
done


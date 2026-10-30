#!/usr/bin/env bash
# Keep hashed assets (dist/_astro) from recent deploys available in the new deploy.
#
# GitHub Pages replaces the whole site on each deploy, so a page cached by a visitor's
# browser (Pages sends max-age=600) or still open in a tab would request CSS/JS files
# that no longer exist. Hashed file names never collide, so serving the old ones
# alongside the new ones is safe.
#
# Usage: retain-assets.sh <history-dir> <deploy-id> [keep]
set -euo pipefail

history="$1"
id="$2"
keep="${3:-5}"

mkdir -p "$history"
rm -rf "${history:?}/$id"
cp -r dist/_astro "$history/$id"

# Prune to the newest $keep deploys (ids are sortable numbers).
ls -1 "$history" | sort -n | head -n "-$keep" | while read -r old; do
	rm -rf "${history:?}/$old"
done

# Merge older assets into this deploy without overwriting current files.
for dir in "$history"/*/; do
	cp -r --update=none "$dir". dist/_astro/
done

echo "Retained assets from deploys: $(ls -1 "$history" | sort -n | tr '\n' ' ')"

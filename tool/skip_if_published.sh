#!/usr/bin/env bash
# Exit 0 when PACKAGE@VERSION is already on pub.dev (skip publish).
# Exit 1 when not published yet (proceed with publish).
# Usage: tool/skip_if_published.sh <package_name> <version>
set -euo pipefail

PKG="${1:?package name required}"
VERSION="${2:?version required}"

if curl -sf "https://pub.dev/api/packages/${PKG}" | python3 -c "
import json, sys
version = sys.argv[1]
data = json.load(sys.stdin)
published = {v['version'] for v in data.get('versions', [])}
sys.exit(0 if version in published else 1)
" "$VERSION"; then
  echo "::notice::${PKG}@${VERSION} already on pub.dev — skipping publish"
  exit 0
fi

echo "${PKG}@${VERSION} not on pub.dev yet — will publish"
exit 1

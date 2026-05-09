#!/usr/bin/env bash
# Pre-publish path-deps swap for terradart_google.
# Usage: tool/prepare_publish.sh <tag> <package_dir>
#   e.g. tool/prepare_publish.sh v0.0.1-dev terradart_google

set -euo pipefail
TAG="${1:?tag required, e.g. v0.0.1-dev}"
PKG="${2:?package dir, e.g. terradart_google}"
VERSION="${TAG#v}"   # v0.0.1-dev -> 0.0.1-dev

cd "packages/$PKG"
# Strip publish_to line (including optional inline comment).
sed -i.bak '/^publish_to:/d' pubspec.yaml
rm -f pubspec.yaml.bak
# Sync version field to the tag version.
perl -pi -e "s/^version: .*/version: $VERSION/" pubspec.yaml

if [[ "$PKG" == "terradart_google" ]]; then
  python3 - "$VERSION" <<'EOF'
import re, pathlib, sys
version = sys.argv[1]
p = pathlib.Path("pubspec.yaml")
s = p.read_text()
for dep in ("terradart_core", "terradart_annotations", "terradart_codegen"):
    s = re.sub(rf"  {dep}:\n    path: \.\./{dep}", f"  {dep}: ^{version}", s)
p.write_text(s)
EOF
fi

dart pub publish --dry-run
echo "::notice::Pre-publish swap complete for $PKG ($VERSION)"

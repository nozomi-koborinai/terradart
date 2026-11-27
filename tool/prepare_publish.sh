#!/usr/bin/env bash
# Pre-publish pubspec mutations for pub.dev.
# Usage: tool/prepare_publish.sh <tag> <package_dir>
#   e.g. tool/prepare_publish.sh v0.0.4-dev terradart_google

set -euo pipefail
TAG="${1:?tag required, e.g. v0.0.4-dev}"
PKG="${2:?package dir, e.g. terradart_google}"
VERSION="${TAG#v}"

cd "packages/$PKG"

# 1. Verify pubspec version matches the tag. Caller must bump pubspec + CHANGELOG before tagging.
PUBSPEC_VERSION="$(awk '
  /^version:[[:space:]]*/ {
    v = $0
    sub(/^version:[[:space:]]*/, "", v)
    sub(/[[:space:]]+#.*$/, "", v)
    sub(/[[:space:]]+$/, "", v)
    if ((v ~ /^".*"$/) || (v ~ /^'\''.*'\''$/)) {
      v = substr(v, 2, length(v) - 2)
    }
    print v
    exit
  }
' pubspec.yaml)"
if [[ "$PUBSPEC_VERSION" != "$VERSION" ]]; then
  echo "::error::pubspec version ($PUBSPEC_VERSION) != tag version ($VERSION). Bump packages/$PKG/pubspec.yaml + CHANGELOG before tagging."
  exit 1
fi

# 2. Verify CHANGELOG has an entry for this version (dart pub publish enforces this).
if ! grep -qE "^## ${VERSION}( |$)" CHANGELOG.md; then
  echo "::error::CHANGELOG.md is missing an entry for version $VERSION. Add '## $VERSION' before tagging."
  exit 1
fi

# 3. Strip workspace-only fields (publish_to, resolution) — invalid on pub.dev.
# `publish_to` is no longer present in any source pubspec; this remains as a
# defensive noop to protect against future regressions.
TMP_PUBSPEC="$(mktemp "${TMPDIR:-/tmp}/prepare_publish.XXXXXX")"
trap 'rm -f "$TMP_PUBSPEC"' EXIT
awk '
  skip && /^[[:space:]]+[^[:space:]]/ { next }
  { skip = 0 }
  /^(publish_to|resolution):([[:space:]]|$)/ { skip = 1; next }
  { print }
' pubspec.yaml > "$TMP_PUBSPEC"
mv "$TMP_PUBSPEC" pubspec.yaml

echo "::notice::Pre-publish swap complete for $PKG ($VERSION)"

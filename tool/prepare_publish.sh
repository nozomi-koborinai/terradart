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
PUBSPEC_VERSION=$(yq e '.version' pubspec.yaml)
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
yq e 'del(.publish_to) | del(.resolution)' -i pubspec.yaml

echo "::notice::Pre-publish swap complete for $PKG ($VERSION)"

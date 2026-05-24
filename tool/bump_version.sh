#!/usr/bin/env bash
# Bump every terradart_* package to a new lockstep version in one shot.
#
# Usage:
#   tool/bump_version.sh <new-version>
#
# Examples:
#   tool/bump_version.sh 0.12.0
#   tool/bump_version.sh 0.12.0-dev
#
# What it touches:
#   - packages/terradart_core/pubspec.yaml        (version: line)
#   - packages/terradart_codegen/pubspec.yaml     (version: + terradart_core caret)
#   - packages/terradart_google/pubspec.yaml      (version: + terradart_core caret + terradart_codegen dev caret)
#   - packages/terradart_agent/pubspec.yaml       (version: + terradart_core caret + terradart_google caret)
#   - packages/terradart_agent/lib/src/version.dart  (packageVersion const — lockstep with its pubspec)
#   - examples/*/pubspec.yaml                     (terradart_core + terradart_google carets)
#   - README.md                                   (Quickstart pubspec sample + `dart pub global activate terradart_codegen ^...` line)
#   - website/src/content/docs/docs/getting-started.md  (pubspec sample caret note)
#
# What it does NOT touch (write these by hand after the bump):
#   - CHANGELOG.md (root + per-package) — release notes are prose
#   - MIGRATING.md — migration narrative is prose
#   - RELEASE.md — process doc, not version-coupled
#
# Editing strategy: line-targeted `sed -E` instead of `yq`. Preserves the
# pubspec layout (blank lines between sections, trailing-comment formatting,
# etc.) byte-for-byte except on the touched lines. Cross-platform (BSD sed
# on macOS + GNU sed on Linux).
#
# Idempotent: re-running with the same target version is a no-op.

set -euo pipefail

if [ $# -ne 1 ]; then
  echo "usage: $0 <new-version>" >&2
  echo "  example: $0 0.12.0" >&2
  echo "  example: $0 0.12.0-dev" >&2
  exit 64
fi

NEW="$1"

# Sanity-check the version looks like SemVer (X.Y.Z or X.Y.Z-prerelease).
if ! [[ "$NEW" =~ ^[0-9]+\.[0-9]+\.[0-9]+(-[A-Za-z0-9.]+)?$ ]]; then
  echo "error: '$NEW' does not look like a SemVer (expected X.Y.Z or X.Y.Z-suffix)" >&2
  exit 65
fi

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

# Detect current version from terradart_core (the workspace's "leader" package).
OLD="$(sed -n 's/^version: \(.*\)$/\1/p' packages/terradart_core/pubspec.yaml | head -1)"
if [ -z "$OLD" ]; then
  echo "error: could not detect current version from packages/terradart_core/pubspec.yaml" >&2
  exit 67
fi

if [ "$OLD" = "$NEW" ]; then
  echo "==> Already at $NEW; nothing to do."
  exit 0
fi

# Escape regex metacharacters in OLD (only `.` and `-` are realistic in SemVer).
OLD_RE="$(printf '%s' "$OLD" | sed 's/[.]/\\./g')"

echo "==> Bumping $OLD -> $NEW across the workspace"
echo

# Cross-platform sed -i: GNU uses `-i` (no arg), BSD uses `-i ''` (empty arg).
# Using `-i.bak` + `rm` works on both.
sed_inplace() {
  local script="$1"
  local file="$2"
  sed -E -i.bak "$script" "$file"
  rm -f "${file}.bak"
}

# Use `#` as the sed delimiter throughout — `|` is the ERE alternation
# operator and clashes with the more common `s|...|...|` form.

# 1. `version:` field on the package pubspecs.
echo "  Package versions:"
for pkg in terradart_core terradart_codegen terradart_google terradart_agent; do
  sed_inplace "s#^version: ${OLD_RE}\$#version: ${NEW}#" "packages/$pkg/pubspec.yaml"
  echo "    - packages/$pkg/pubspec.yaml -> $NEW"
done

# 2. Inter-package carets inside terradart_codegen + terradart_google.
#    Matches `  terradart_<name>: ^X.Y.Z` (any indent, end-of-line).
echo "  Inter-package carets:"
sed_inplace "s#^( *terradart_core): \\^${OLD_RE}\$#\\1: ^${NEW}#" packages/terradart_codegen/pubspec.yaml
echo "    - terradart_codegen.dependencies.terradart_core: ^${NEW}"
sed_inplace "s#^( *terradart_core): \\^${OLD_RE}\$#\\1: ^${NEW}#" packages/terradart_google/pubspec.yaml
echo "    - terradart_google.dependencies.terradart_core: ^${NEW}"
sed_inplace "s#^( *terradart_codegen): \\^${OLD_RE}\$#\\1: ^${NEW}#" packages/terradart_google/pubspec.yaml
echo "    - terradart_google.dev_dependencies.terradart_codegen: ^${NEW}"
sed_inplace "s#^( *terradart_core): \\^${OLD_RE}\$#\\1: ^${NEW}#" packages/terradart_agent/pubspec.yaml
echo "    - terradart_agent.dependencies.terradart_core: ^${NEW}"
sed_inplace "s#^( *terradart_google): \\^${OLD_RE}\$#\\1: ^${NEW}#" packages/terradart_agent/pubspec.yaml
echo "    - terradart_agent.dependencies.terradart_google: ^${NEW}"

# 2b. terradart_agent binary version const (lockstep with its pubspec;
#     guarded by packages/terradart_agent/test/version_test.dart).
echo "  Binary version const:"
sed_inplace "s#^const String packageVersion = '${OLD_RE}';\$#const String packageVersion = '${NEW}';#" packages/terradart_agent/lib/src/version.dart
echo "    - packages/terradart_agent/lib/src/version.dart -> $NEW"

# 3. Every example pubspec: terradart_core + terradart_google carets.
echo "  Example pubspecs:"
EXAMPLE_COUNT=0
for f in examples/*/pubspec.yaml; do
  sed_inplace "s#^( *terradart_(core|google)): \\^${OLD_RE}\$#\\1: ^${NEW}#" "$f"
  EXAMPLE_COUNT=$((EXAMPLE_COUNT + 1))
done
echo "    - bumped $EXAMPLE_COUNT examples to terradart_{core,google}: ^$NEW"

# 4. Markdown caret samples (README + website getting-started).
#    Two distinct patterns:
#    a) Inside a pubspec block: `  terradart_(core|codegen|google): ^X.Y.Z`
#    b) On a `dart pub global activate` line: `... terradart_codegen ^X.Y.Z`
echo "  Markdown caret samples:"
for md in README.md website/src/content/docs/docs/getting-started.md; do
  if [ -f "$md" ]; then
    sed_inplace "s#terradart_(core|codegen|google): \\^${OLD_RE}#terradart_\\1: ^${NEW}#g" "$md"
    sed_inplace "s#(dart pub global activate terradart_codegen) \\^${OLD_RE}#\\1 ^${NEW}#g" "$md"
    echo "    - $md"
  fi
done

echo

# 5. Verify no stale OLD carets / version lines remain in the scoped files.
echo "==> Verifying no stale '$OLD' references remain"
set +e
STALE=$(
  grep -nE "^version: ${OLD_RE}\$" packages/*/pubspec.yaml 2>/dev/null
  grep -nE "terradart_(core|codegen|google): \\^${OLD_RE}([^0-9A-Za-z.-]|\$)" \
    packages/*/pubspec.yaml examples/*/pubspec.yaml \
    README.md website/src/content/docs/docs/getting-started.md 2>/dev/null
  grep -nE "dart pub global activate terradart_codegen \\^${OLD_RE}([^0-9A-Za-z.-]|\$)" \
    README.md website/src/content/docs/docs/getting-started.md 2>/dev/null
  grep -nE "packageVersion = '${OLD_RE}'" packages/terradart_agent/lib/src/version.dart 2>/dev/null
)
set -e

if [ -n "$STALE" ]; then
  echo "ERROR: stale '$OLD' references still present:" >&2
  echo "$STALE" >&2
  exit 1
fi

echo "==> Lockstep bump complete: $OLD -> $NEW"
echo
echo "Next:"
echo "  1. Update CHANGELOG.md (root + 3 packages) by hand — release notes are prose."
echo "  2. If breaking, add a MIGRATING.md section."
echo "  3. dart pub get && dart analyze packages/terradart_core packages/terradart_codegen packages/terradart_google"
echo "  4. git diff --stat   # review the bump"
echo "  5. Commit + push, open release PR."

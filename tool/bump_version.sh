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
#   - packages/terradart_google_beta/pubspec.yaml (version: + terradart_core caret)
#   - packages/terradart_appwrite/pubspec.yaml    (version: + terradart_core caret)
#   - packages/terradart_cloudflare/pubspec.yaml  (version: + terradart_core caret)
#   - packages/terradart_agent/pubspec.yaml       (version: + terradart_core caret + terradart_google caret)
#   - packages/terradart_agent/lib/src/version.dart  (packageVersion const — lockstep with its pubspec)
#   - examples/*/pubspec.yaml                     (terradart_core + terradart_google + terradart_google_beta + terradart_appwrite + terradart_cloudflare carets)
#   - cookbook/*/pubspec.yaml,                    (terradart_core + terradart_google carets on
#     cookbook/*/*/pubspec.yaml                    workspace-member cookbook recipes)
#   - README.md                                   (Quickstart pubspec sample + `dart pub global activate terradart_codegen ^...` line + status blurb)
#   - CONTRIBUTING.md                             (minor-line caret references)
#   - SECURITY.md                                 (supported-versions pin + table)
#   - packages/terradart_core/README.md           (pubspec sample caret)
#   - packages/terradart_google/README.md         (pubspec sample carets)
#   - packages/terradart_google_beta/README.md    (pubspec sample carets)
#   - packages/terradart_appwrite/README.md       (pubspec sample carets)
#   - packages/terradart_cloudflare/README.md     (pubspec sample carets)
#   - packages/terradart_codegen/README.md        (`dart pub global activate` caret)
#   - website/src/content/docs/docs/getting-started.md  (pubspec sample caret note + version line)
#   - .github/ISSUE_TEMPLATE/bug.yml              (alpha banner version)
#   - .github/ISSUE_TEMPLATE/feature.yml          (alpha banner version)
#   - .github/ISSUE_TEMPLATE/question.yml         (alpha banner version)
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
for pkg in terradart_core terradart_codegen terradart_google terradart_google_beta terradart_appwrite terradart_cloudflare terradart_agent terradart_coverage terradart_hcl; do
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
sed_inplace "s#^( *terradart_core): \\^${OLD_RE}\$#\\1: ^${NEW}#" packages/terradart_google_beta/pubspec.yaml
echo "    - terradart_google_beta.dependencies.terradart_core: ^${NEW}"
sed_inplace "s#^( *terradart_core): \\^${OLD_RE}\$#\\1: ^${NEW}#" packages/terradart_appwrite/pubspec.yaml
echo "    - terradart_appwrite.dependencies.terradart_core: ^${NEW}"
sed_inplace "s#^( *terradart_core): \\^${OLD_RE}\$#\\1: ^${NEW}#" packages/terradart_cloudflare/pubspec.yaml
echo "    - terradart_cloudflare.dependencies.terradart_core: ^${NEW}"
sed_inplace "s#^( *terradart_core): \\^${OLD_RE}\$#\\1: ^${NEW}#" packages/terradart_agent/pubspec.yaml
echo "    - terradart_agent.dependencies.terradart_core: ^${NEW}"
sed_inplace "s#^( *terradart_google): \\^${OLD_RE}\$#\\1: ^${NEW}#" packages/terradart_agent/pubspec.yaml
echo "    - terradart_agent.dependencies.terradart_google: ^${NEW}"
sed_inplace "s#^( *terradart_coverage): \\^${OLD_RE}\$#\\1: ^${NEW}#" packages/terradart_agent/pubspec.yaml
echo "    - terradart_agent.dependencies.terradart_coverage: ^${NEW}"
sed_inplace "s#^( *terradart_(google|google_beta|appwrite|cloudflare|hcl)): \\^${OLD_RE}\$#\\1: ^${NEW}#" packages/terradart_coverage/pubspec.yaml
echo "    - terradart_coverage.dependencies.terradart_{google,google_beta,appwrite,cloudflare,hcl}: ^${NEW}"

# 2b. terradart_agent binary version const (lockstep with its pubspec;
#     guarded by packages/terradart_agent/test/version_test.dart).
echo "  Binary version const:"
sed_inplace "s#^const String packageVersion = '${OLD_RE}';\$#const String packageVersion = '${NEW}';#" packages/terradart_agent/lib/src/version.dart
echo "    - packages/terradart_agent/lib/src/version.dart -> $NEW"

# 3. Every example pubspec: terradart_core + terradart_google carets.
echo "  Example pubspecs:"
EXAMPLE_COUNT=0
for f in examples/*/pubspec.yaml; do
  sed_inplace "s#^( *terradart_(core|google|google_beta|appwrite|cloudflare)): \\^${OLD_RE}\$#\\1: ^${NEW}#" "$f"
  EXAMPLE_COUNT=$((EXAMPLE_COUNT + 1))
done
echo "    - bumped $EXAMPLE_COUNT examples to terradart_{core,google,google_beta,appwrite,cloudflare}: ^$NEW"

# 3b. Cookbook recipe pubspecs (workspace members under cookbook/, one or two
#     levels deep — e.g. cookbook/single-project-app/ and
#     cookbook/lunch-concierge/infra/). Not every recipe depends on
#     terradart_core/terradart_google (e.g. lunch-concierge/shared,server are
#     Genkit-only), so the sed is a harmless no-op on those.
echo "  Cookbook recipe pubspecs:"
COOKBOOK_COUNT=0
for f in cookbook/*/pubspec.yaml cookbook/*/*/pubspec.yaml; do
  [ -f "$f" ] || continue
  sed_inplace "s#^( *terradart_(core|google|google_beta|appwrite|cloudflare)): \\^${OLD_RE}\$#\\1: ^${NEW}#" "$f"
  COOKBOOK_COUNT=$((COOKBOOK_COUNT + 1))
done
echo "    - scanned $COOKBOOK_COUNT cookbook pubspecs for terradart_{core,google,google_beta,appwrite,cloudflare}: ^$NEW"

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

# Extract old/new minor for plain x.y.x-style references (e.g. "0.13.x").
OLD_MINOR="$(printf '%s' "$OLD" | sed 's/\.[^.]*$//')"
NEW_MINOR="$(printf '%s' "$NEW" | sed 's/\.[^.]*$//')"
OLD_MINOR_RE="$(printf '%s' "$OLD_MINOR" | sed 's/[.]/\\./g')"

# 4b. Additional doc/template files that reference the minor line.
#     Pattern set per file (only the version token is replaced; surrounding
#     text is left intact so prose stays correct):
#
#   CONTRIBUTING.md  — "X.Y.x today" + "^X.Y.x" caret
#   SECURITY.md      — "^X.Y.x" pin + table rows "**X.Y.x**"
#   package READMEs  — pubspec/activate caret samples (same pattern as above)
#   website pages    — "**X.Y.x** line" + "^X.Y.x" pins + "X.Y.x (current)"
#   ISSUE_TEMPLATE   — "**X.Y.x** today" in markdown value
echo "  Additional doc/template files:"

# CONTRIBUTING.md: replace ^X.Y.x and "X.Y.x today" and "vX.Y.0 beta" labels.
if [ -f CONTRIBUTING.md ]; then
  sed_inplace "s#\\^${OLD_MINOR_RE}\\.x#^${NEW_MINOR}.x#g" CONTRIBUTING.md
  sed_inplace "s#${OLD_MINOR_RE}\\.x today#${NEW_MINOR}.x today#g" CONTRIBUTING.md
  echo "    - CONTRIBUTING.md"
fi

# SECURITY.md: replace ^X.Y.x pin and **X.Y.x** table cells and "X.Y.x" upgrade references.
if [ -f SECURITY.md ]; then
  sed_inplace "s#\\^${OLD_MINOR_RE}\\.x#^${NEW_MINOR}.x#g" SECURITY.md
  sed_inplace "s#\\*\\*${OLD_MINOR_RE}\\.x\\*\\*#**${NEW_MINOR}.x**#g" SECURITY.md
  sed_inplace "s#${OLD_MINOR_RE}\\.x; see#${NEW_MINOR}.x; see#g" SECURITY.md
  echo "    - SECURITY.md"
fi

# Package READMEs: pubspec caret samples + activate caret.
for pkg_readme in packages/terradart_core/README.md \
                  packages/terradart_google/README.md \
                  packages/terradart_google_beta/README.md \
                  packages/terradart_appwrite/README.md \
                  packages/terradart_cloudflare/README.md \
                  packages/terradart_codegen/README.md; do
  if [ -f "$pkg_readme" ]; then
    sed_inplace "s#terradart_(core|codegen|google): \\^${OLD_RE}#terradart_\\1: ^${NEW}#g" "$pkg_readme"
    sed_inplace "s#(dart pub global activate terradart_codegen) \\^${OLD_RE}#\\1 ^${NEW}#g" "$pkg_readme"
    echo "    - $pkg_readme"
  fi
done

# website pages: "**X.Y.x** line", "^X.Y.x" pins, "X.Y.x (current)" phase row.
for site_md in website/src/content/docs/docs/getting-started.md \
               website/src/content/docs/docs/index.md \
               website/src/content/docs/docs/status.md; do
  if [ -f "$site_md" ]; then
    sed_inplace "s#\\*\\*${OLD_MINOR_RE}\\.x\\*\\* line#**${NEW_MINOR}.x** line#g" "$site_md"
    sed_inplace "s#\\^${OLD_MINOR_RE}\\.x#^${NEW_MINOR}.x#g" "$site_md"
    sed_inplace "s#${OLD_MINOR_RE}\\.x \\(current\\)#${NEW_MINOR}.x (current)#g" "$site_md"
    echo "    - $site_md"
  fi
done

# ISSUE_TEMPLATE ymls: "**X.Y.x** today".
for tpl in .github/ISSUE_TEMPLATE/bug.yml \
           .github/ISSUE_TEMPLATE/feature.yml \
           .github/ISSUE_TEMPLATE/question.yml; do
  if [ -f "$tpl" ]; then
    sed_inplace "s#\\*\\*${OLD_MINOR_RE}\\.x\\*\\* today#**${NEW_MINOR}.x** today#g" "$tpl"
    echo "    - $tpl"
  fi
done

# `.x`-style minor carets + alpha banner. The pubspec samples in the
# READMEs and the website getting-started page, plus the README alpha
# banner, use the ^X.Y.x minor form — distinct from the ^X.Y.Z full-semver
# samples handled above, which is why those passes leave them untouched. Sweep
# them in one pass so the docs-consistency check (which expects ^X.Y.x) stays
# green every release.
echo "  Minor (.x) caret samples + banner:"
for f in README.md \
         website/src/content/docs/docs/getting-started.md \
         packages/terradart_core/README.md \
         packages/terradart_google/README.md \
         packages/terradart_google_beta/README.md \
         packages/terradart_appwrite/README.md \
         packages/terradart_cloudflare/README.md \
         packages/terradart_codegen/README.md; do
  [ -f "$f" ] || continue
  # Blanket ^X.Y.x replace (like CONTRIBUTING/SECURITY below) covers every
  # caret form — pubspec samples, the `dart pub global activate` line, and bare
  # "Pin `^X.Y.x`" prose — in one go.
  sed_inplace "s#\\^${OLD_MINOR_RE}\\.x#^${NEW_MINOR}.x#g" "$f"
  sed_inplace "s#pre-1\\.0 \\(${OLD_MINOR_RE}\\.x\\)#pre-1.0 (${NEW_MINOR}.x)#g" "$f"
  echo "    - $f"
done

echo

# 4c. Blanket bare-minor sweep for the pages `tool/check_docs_consistency.dart`
#     strictly scans for ANY stale `0.NN.x` token (its regex has no notion of
#     "today" / "line" / "(current)" — it just flags every bare minor token
#     that doesn't match the current one). The passes above only chase known
#     phrase templates and have already missed new prose once (e.g. "as of
#     0.NN.x" in CONTRIBUTING.md); replacing the literal substring everywhere
#     in exactly the checker's file set closes that whole class of miss.
#     SECURITY.md and MIGRATING.md are deliberately excluded — both carry
#     legitimate historical `0.NN.x` references the checker itself exempts.
echo "  Blanket bare-minor sweep (check_docs_consistency.dart's file set):"
for f in README.md \
         CONTRIBUTING.md \
         website/src/content/docs/docs/index.md \
         website/src/content/docs/docs/status.md \
         website/src/content/docs/docs/getting-started.md \
         website/src/content/docs/docs/why-terradart.md; do
  [ -f "$f" ] || continue
  sed_inplace "s#${OLD_MINOR_RE}\\.x#${NEW_MINOR}.x#g" "$f"
  echo "    - $f"
done

echo

# 5. Verify no stale OLD carets / version lines remain in the scoped files.
echo "==> Verifying no stale '$OLD' references remain"
set +e
STALE=$(
  grep -nE "^version: ${OLD_RE}\$" packages/*/pubspec.yaml 2>/dev/null
  grep -nE "terradart_(core|codegen|google|google_beta|appwrite|cloudflare|coverage): \\^${OLD_RE}([^0-9A-Za-z.-]|\$)" \
    packages/*/pubspec.yaml examples/*/pubspec.yaml \
    cookbook/*/pubspec.yaml cookbook/*/*/pubspec.yaml \
    README.md website/src/content/docs/docs/getting-started.md \
    packages/terradart_core/README.md \
    packages/terradart_google/README.md \
    packages/terradart_google_beta/README.md \
    packages/terradart_appwrite/README.md \
    packages/terradart_cloudflare/README.md \
    packages/terradart_codegen/README.md 2>/dev/null
  grep -nE "dart pub global activate terradart_codegen \\^${OLD_RE}([^0-9A-Za-z.-]|\$)" \
    README.md \
    website/src/content/docs/docs/getting-started.md \
    packages/terradart_codegen/README.md 2>/dev/null
  grep -nE "packageVersion = '${OLD_RE}'" packages/terradart_agent/lib/src/version.dart 2>/dev/null
  if [ "$OLD_MINOR" != "$NEW_MINOR" ]; then
    grep -nE "\\^${OLD_MINOR_RE}\\.x" \
      CONTRIBUTING.md SECURITY.md 2>/dev/null
    grep -nE "\\*\\*${OLD_MINOR_RE}\\.x\\*\\* (today|\\()" \
      CONTRIBUTING.md SECURITY.md \
      .github/ISSUE_TEMPLATE/bug.yml \
      .github/ISSUE_TEMPLATE/feature.yml \
      .github/ISSUE_TEMPLATE/question.yml 2>/dev/null
    grep -nE "\\*\\*${OLD_MINOR_RE}\\.x\\*\\* line" \
      website/src/content/docs/docs/getting-started.md 2>/dev/null
    grep -nE "\\^${OLD_MINOR_RE}\\.x" \
      README.md website/src/content/docs/docs/getting-started.md \
      packages/terradart_core/README.md \
      packages/terradart_google/README.md \
      packages/terradart_google_beta/README.md \
      packages/terradart_appwrite/README.md \
      packages/terradart_cloudflare/README.md \
      packages/terradart_codegen/README.md 2>/dev/null
    grep -nE "pre-1\\.0 \\(${OLD_MINOR_RE}\\.x\\)" README.md 2>/dev/null
    grep -nE "\\b${OLD_MINOR_RE}\\.x\\b" \
      README.md CONTRIBUTING.md \
      website/src/content/docs/docs/index.md \
      website/src/content/docs/docs/status.md \
      website/src/content/docs/docs/getting-started.md \
      website/src/content/docs/docs/why-terradart.md 2>/dev/null
  fi
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
echo "  1. Update CHANGELOG.md (root + package changelogs) by hand — release notes are prose."
echo "  2. If breaking, add a MIGRATING.md section."
echo "  3. dart pub get && dart analyze packages/terradart_core packages/terradart_codegen packages/terradart_google"
echo "  4. git diff --stat   # review the bump"
echo "  5. Commit + push, open release PR."

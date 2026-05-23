# Release Checklist

terradart releases 3 packages in lockstep: `terradart_core`, `terradart_codegen`, `terradart_google`. All 3 share the same version (e.g. `0.11.0`).

## Pre-flight (local)

- [ ] CI green on main
- [ ] Bump every pubspec to the target version with a single command:

  ```bash
  tool/bump_version.sh 0.X.Y
  ```

  This updates all 3 package pubspecs, their inter-package carets, the 23 example pubspec carets, and the README + website pubspec samples in one shot. Idempotent: re-running with the same version is a no-op. Run `git diff --stat` afterwards to review.
- [ ] Add `## <version> - YYYY-MM-DD` entry to root `CHANGELOG.md` and to each of the 3 `packages/*/CHANGELOG.md` files. Release notes are prose — the bump script intentionally does not generate them.
- [ ] If the release is breaking, add a `# Migrating from terradart X.Y.Z to A.B.C` section at the top of `MIGRATING.md` with before / after snippets.
- [ ] Run pana score check on each package:

  ```bash
  dart pub global activate pana
  for pkg in terradart_core terradart_codegen terradart_google; do
    (cd "packages/$pkg" && dart pub global run pana --no-warning --exit-code-threshold 100)
  done
  ```

- [ ] Run dry-run after the pre-publish pubspec mutation (the script edits in-place; restore via `git checkout` after):

  ```bash
  for pkg in terradart_core terradart_codegen terradart_google; do
    tool/prepare_publish.sh v0.X.Y "$pkg"
    (cd "packages/$pkg" && dart pub publish --dry-run)
  done
  git checkout packages/*/pubspec.yaml  # restore
  ```

  Note: dry-run for `terradart_codegen` and `terradart_google` may fail version-solving until the previous-phase packages are on pub.dev. This is the documented 3-phase ordering in `publish.yml` and not a regression — only the `terradart_core` dry-run must be clean locally.
- [ ] Commit the bump + CHANGELOG + MIGRATING.md updates to a feature branch and open a release PR.

## Publish (preferred: tag-driven via `publish.yml`)

```bash
git tag v0.X.Y
git push origin v0.X.Y
```

Watch `publish.yml` on GitHub Actions. The workflow ships the 3 packages in 3 serial phases (each waits 5 minutes for pub.dev index propagation before the next):

1. **`publish-no-deps`** job: `terradart_core` (no terradart_* dependencies).
2. **`publish-codegen`** job: `terradart_codegen` (depends on `terradart_core`).
3. **`publish-google`** job: `terradart_google` (depends on `terradart_core` + `terradart_codegen`).

`prepare_publish.sh` runs in CI and:

- Verifies `pubspec.yaml` version matches the tag (fails fast if not bumped — this is the guard that caught the premature v0.11.0 tag attempt on 2026-05-23).
- Verifies `CHANGELOG.md` has an entry for the version.
- Strips `publish_to: none` and `resolution: workspace` (pub.dev does not recognise workspace mode).

## Initial publish (OIDC not yet available)

pub.dev's OIDC trusted publisher only works for **previously published** packages. The first publish of a new package must be done manually with `dart pub publish` (interactive auth via `dart pub token add`).

Order: 3 leaves first, wait 3 minutes for index propagation, then `terradart_google`.

```bash
# 1. Bump pubspec + CHANGELOG locally first (per pre-flight above), commit, then run
#    each phase in order (terradart_core has no terradart_* deps; codegen depends on
#    core; google depends on both — same ordering as publish.yml).

tool/prepare_publish.sh v0.X.Y terradart_core
(cd packages/terradart_core && dart pub publish)

sleep 300  # wait for pub.dev to index terradart_core

tool/prepare_publish.sh v0.X.Y terradart_codegen
(cd packages/terradart_codegen && dart pub publish)

sleep 300  # wait for pub.dev to index terradart_codegen

tool/prepare_publish.sh v0.X.Y terradart_google
(cd packages/terradart_google && dart pub publish)

# Restore the in-place edits the script made (CI will redo this on next tag).
git checkout packages/*/pubspec.yaml
```

After all 3 packages exist on pub.dev, set up trusted publisher for each:

1. Visit `https://pub.dev/packages/<pkg>/admin` for each package.
2. **Automated publishing → GitHub Actions → Add**.
3. Repository: `nozomi-koborinai/terradart`, tag pattern: `v*.*.*` (and `v*.*.*-dev` for dev tags).

Subsequent releases use the tag-driven flow above.

## Manual recovery (`publish.yml` partially failed)

If a phase succeeds for some packages but fails for the next (e.g. `publish-codegen` failed but `publish-no-deps` already shipped `terradart_core`):

1. Fix the underlying issue (CHANGELOG, version, lib naming, etc.) and commit.
2. Bump all 3 packages to the next version with `tool/bump_version.sh` (pub.dev rejects re-publishing an existing version).
3. Tag the new version and push.

   All 3 packages will publish at the next version — successful packages from the previous attempt will simply receive a new bump (lockstep is preserved). There is no selective skip mechanism.

## Post-flight

- [ ] All 3 listings on pub.dev show the correct version
- [ ] GitHub Release created (`gh release create v0.X.Y --notes ...`)
- [ ] Verified publisher badge appears on all 3 pub.dev pages

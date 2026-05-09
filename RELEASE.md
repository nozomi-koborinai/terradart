# Release Checklist

terradart releases 4 packages in lockstep: `terradart_annotations`, `terradart_core`, `terradart_codegen`, `terradart_google`. All 4 share the same version (e.g. `0.0.4-dev`).

## Pre-flight (local)

- [ ] CI green on main
- [ ] Bump version in all 4 `packages/*/pubspec.yaml` to the target version (e.g. `0.0.4-dev`)
- [ ] Add `## <version> - YYYY-MM-DD` entry to all 4 `packages/*/CHANGELOG.md`
- [ ] Run pana score check on each package:

  ```bash
  dart pub global activate pana
  for pkg in terradart_annotations terradart_core terradart_codegen terradart_google; do
    (cd "packages/$pkg" && dart pub global run pana --no-warning --exit-code-threshold 100)
  done
  ```

- [ ] Run dry-run after path-deps swap (in a throwaway clone or after `git stash`):

  ```bash
  for pkg in terradart_annotations terradart_core terradart_codegen terradart_google; do
    tool/prepare_publish.sh v0.0.X-dev "$pkg"
    (cd "packages/$pkg" && dart pub publish --dry-run)
  done
  git checkout packages/*/pubspec.yaml  # restore
  ```

- [ ] Commit pubspec + CHANGELOG bumps to main

## Publish (preferred: tag-driven via `publish.yml`)

```bash
git tag v0.0.X-dev
git push origin v0.0.X-dev
```

Watch `publish.yml` on GitHub Actions:

1. **`publish-leaves`** job: 3 leaves (`terradart_annotations`, `terradart_core`, `terradart_codegen`) publish in parallel via OIDC trusted publisher.
2. **`publish-google`** job: waits 3 minutes for pub.dev index propagation, then publishes `terradart_google` (which depends on the 3 leaves).

`prepare_publish.sh` runs in CI and:

- Verifies `pubspec.yaml` version matches the tag (fails fast if not bumped).
- Verifies `CHANGELOG.md` has an entry for the version.
- Strips `publish_to: none` from `terradart_google`.
- Swaps `path:` deps in `terradart_google` to hosted `^VERSION` constraints.

## Initial publish (OIDC not yet available)

pub.dev's OIDC trusted publisher only works for **previously published** packages. The first publish of a new package must be done manually with `dart pub publish` (interactive auth via `dart pub token add`).

Order: 3 leaves first, wait 3 minutes for index propagation, then `terradart_google`.

```bash
# 1. Bump pubspec + CHANGELOG locally first (per pre-flight above), commit, then run:

for pkg in terradart_annotations terradart_core terradart_codegen; do
  tool/prepare_publish.sh v0.0.X-dev "$pkg"
  (cd "packages/$pkg" && dart pub publish)
done

# 2. Wait for pub.dev to index the leaves.
sleep 180

# 3. Publish terradart_google (depends on the leaves).
tool/prepare_publish.sh v0.0.X-dev terradart_google
(cd packages/terradart_google && dart pub publish)

# 4. Restore the path: deps in working tree (CI will redo this on next tag).
git checkout packages/*/pubspec.yaml
```

After all 4 packages exist on pub.dev, set up trusted publisher for each:

1. Visit `https://pub.dev/packages/<pkg>/admin` for each package.
2. **Automated publishing → GitHub Actions → Add**.
3. Repository: `nozomi-koborinai/terradart`, tag pattern: `v*-dev` (and/or `v*.*.*`).

Subsequent releases use the tag-driven flow above.

## Manual recovery (`publish.yml` partially failed)

If `publish-leaves` succeeds for some packages but fails for others, or if `publish-google` fails:

1. Fix the underlying issue (CHANGELOG, version, lib naming, etc.) and commit.
2. Bump all 4 packages to the next version (pub.dev rejects re-publishing an existing version).
3. Tag the new version and push.

   All 4 packages will publish at the next version — successful packages from the previous attempt will simply receive a new minor bump (lockstep is preserved). There is no selective skip mechanism.

## Post-flight

- [ ] All 4 listings on pub.dev show the correct version
- [ ] GitHub Release created (`gh release create v0.0.X-dev --notes ...`)
- [ ] Verified publisher badge appears on all 4 pub.dev pages

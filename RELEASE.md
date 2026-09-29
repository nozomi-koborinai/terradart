# Release Checklist

terradart bumps every workspace package in lockstep (`tool/bump_version.sh`); all share the same version. The pub.dev publish workflow (`publish.yml`) publishes the hosted packages in phases: `terradart_core` and `terradart_hcl`, `terradart_codegen`, `terradart_time`, `terradart_google`, `terradart_google_beta`, `terradart_appwrite`, `terradart_cloudflare`, `terradart_aws`, and last `terradart_migrate`, whose `terradart-migrate` executable users install with `dart pub global activate terradart_migrate`.

## Pre-flight (local)

- [ ] CI green on main
- [ ] **Pay down the schema-bump ledgers.** No scheduled agent pays them down; release preparation does. The weekly schema bump merges with placeholders a human still owes, and this check reports them (`tool/bump_version.sh` runs it first):

  ```bash
  dart tool/release_ledger_check.dart            # since the last v* tag
  dart tool/release_ledger_check.dart --since v0.X.W
  ```

  - `tool/sealed_name_debt.yaml` must be empty — the check fails otherwise, and so does the bump. A temporary `Or` name must not ship: once it is published, renaming it is a breaking change. Name each group with a `sealedNames` entry in its override and re-run `terradart wrap` (`AGENTS.md` **Generation Policy**).
  - `awaiting-example:` lines in `tool/example_debt.yaml` and entries in `tool/curation_backlog.yaml` are reported with the ones new since the last tag. Pay them down first (a Wave via [`terradart-ship-wave`](.agents/skills/terradart-ship-wave/SKILL.md), example backfill via [`terradart-backfill-examples`](.agents/skills/terradart-backfill-examples/SKILL.md)) or accept them explicitly by pasting the report into the release PR body. Normal PR CI never fails on a non-empty backlog.
- [ ] Bump every pubspec to the target version with a single command:

  ```bash
  tool/bump_version.sh 0.X.Y
  ```

  This updates all 10 package pubspecs, the `terradart-migrate --version` const, their inter-package carets, the example pubspec carets, and the README + website pubspec samples in one shot. Idempotent: re-running with the same version is a no-op. Run `git diff --stat` afterwards to review.
- [ ] Add `## <version> - YYYY-MM-DD` entry to root `CHANGELOG.md` and to each package `CHANGELOG.md` file. Release notes are prose — the bump script intentionally does not generate them.
- [ ] If the release is breaking, add a `# Migrating from terradart X.Y.Z to A.B.C` section at the top of `MIGRATING.md` with before / after snippets.
- [ ] Run pana score check on each package:

  ```bash
  dart pub global activate pana
  for pkg in terradart_core terradart_hcl terradart_codegen terradart_time terradart_google terradart_google_beta terradart_appwrite terradart_cloudflare terradart_aws terradart_migrate; do
    (cd "packages/$pkg" && dart pub global run pana --no-warning --exit-code-threshold 100)
  done
  ```

- [ ] Run dry-run after the pre-publish pubspec mutation (the script edits in-place; restore via `git checkout` after):

  ```bash
  for pkg in terradart_core terradart_hcl terradart_codegen terradart_time terradart_google terradart_google_beta terradart_appwrite terradart_cloudflare terradart_aws terradart_migrate; do
    tool/prepare_publish.sh v0.X.Y "$pkg"
    (cd "packages/$pkg" && dart pub publish --dry-run)
  done
  git checkout packages/*/pubspec.yaml  # restore
  ```

  Note: once `prepare_publish.sh` strips `resolution: workspace`, a package's dry-run may fail version-solving until the previous-phase packages are on pub.dev at the new version. This is the phase ordering in `publish.yml` and not a regression — only the `terradart_core` and `terradart_hcl` dry-runs must be clean locally. CI's `publish_dry_run` job runs the workspace dry-run on every PR.
- [ ] Commit the bump + CHANGELOG + MIGRATING.md updates to a feature branch and open a release PR whose body carries the release ledger report.

## Publish (preferred: tag-driven via `publish.yml`)

```bash
git tag v0.X.Y
git push origin v0.X.Y
```

Watch `publish.yml` on GitHub Actions. The workflow ships the 10 packages in 8 phases; a phase whose dependencies were published by the phase just before it waits 5 minutes for pub.dev index propagation first:

1. **`publish-no-deps`** job: `terradart_core`, in parallel with the **`publish-hcl`** job: `terradart_hcl` (neither has terradart_* dependencies; `terradart_hcl` has a job of its own so a failure there holds back only `terradart_migrate`).
2. **`publish-codegen`** job: `terradart_codegen` (depends on `terradart_core`), in parallel with the **`publish-time`** job: `terradart_time` (depends on `terradart_core`).
3. **`publish-google`** job: `terradart_google` (depends on `terradart_core` + `terradart_time`, dev-depends on `terradart_codegen`).
4. **`publish-google-beta`** job: `terradart_google_beta` (depends on `terradart_core` + `terradart_google`, whose GA types its reference inputs name).
5. **`publish-appwrite`** job: `terradart_appwrite` (depends on `terradart_core`).
6. **`publish-cloudflare`** job: `terradart_cloudflare` (depends on `terradart_core`).
7. **`publish-aws`** job: `terradart_aws` (depends on `terradart_core`).
8. **`publish-migrate`** job: `terradart_migrate` (depends on `terradart_hcl`, `terradart_time` and every provider package; waits for both `publish-hcl` and `publish-aws`).

`prepare_publish.sh` runs in CI and:

- Verifies `pubspec.yaml` version matches the tag (fails fast if not bumped — this is the guard that caught the premature v0.11.0 tag attempt on 2026-05-23).
- Verifies `CHANGELOG.md` has an entry for the version.
- Strips `publish_to: none` and `resolution: workspace` (pub.dev does not recognise workspace mode).

## Initial publish (OIDC not yet available)

pub.dev's OIDC trusted publisher only works for **previously published** packages. The first publish of a new package must be done manually with `dart pub publish` (interactive auth via `dart pub token add`); `skip_if_published.sh` then turns that package's `publish.yml` job into a no-op for the version already on pub.dev.

Every package through `terradart_aws` is on pub.dev already; `terradart_hcl` and `terradart_migrate` still need their first release. For that release:

```bash
# 1. Before pushing the tag (bump + CHANGELOG committed): publish terradart_hcl
#    by hand. It has no terradart_* dependencies, and the tag's publish-hcl job
#    then skips it as already published.
tool/prepare_publish.sh v0.X.Y terradart_hcl
(cd packages/terradart_hcl && dart pub publish)
git checkout packages/*/pubspec.yaml

# 2. Push the tag. publish.yml ships everything through terradart_aws;
#    publish-migrate fails because terradart_migrate is not on pub.dev yet.
git tag v0.X.Y && git push origin v0.X.Y

# 3. Once publish-aws is green (and pub.dev lists terradart_aws v0.X.Y),
#    publish terradart_migrate by hand.
tool/prepare_publish.sh v0.X.Y terradart_migrate
(cd packages/terradart_migrate && dart pub publish)
git checkout packages/*/pubspec.yaml
```

After a new package exists on pub.dev, set up its trusted publisher:

1. Visit `https://pub.dev/packages/<pkg>/admin` for each package.
2. **Automated publishing → GitHub Actions → Add**.
3. Repository: `nozomi-koborinai/terradart`, tag pattern: `v*.*.*` (and `v*.*.*-dev` for dev tags).

Subsequent releases use the tag-driven flow above.

## Manual recovery (`publish.yml` partially failed)

If a phase succeeds for some packages but fails for the next (e.g. `publish-codegen` failed but `publish-no-deps` already shipped `terradart_core`):

1. Fix the underlying issue (CHANGELOG, version, lib naming, etc.) and commit.
2. Bump every package to the next version with `tool/bump_version.sh` (pub.dev rejects re-publishing an existing version).
3. Tag the new version and push.

   Every package will publish at the next version — successful packages from the previous attempt will simply receive a new bump (lockstep is preserved). There is no selective skip mechanism.

## Post-flight

- [ ] All 10 listings on pub.dev show the correct version
- [ ] GitHub Release created (`gh release create v0.X.Y --notes ...`)
- [ ] Verified publisher badge appears on all 10 pub.dev pages
- [ ] `terradart-migrate` install verified on a clean machine: `dart pub global activate terradart_migrate && terradart-migrate --version`, then one real tree migrates and plans with *No changes* per [Migrating from HCL](https://terradart.dev/docs/migrate-from-hcl/)

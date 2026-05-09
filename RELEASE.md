# Release Checklist

## Pre-flight

- [ ] CI green on main
- [ ] CHANGELOG.md updated (root + 4 per-package)
- [ ] Version bumped lockstep in all 4 pubspec.yaml
- [ ] Local pana ≥ 100 for all 4 packages
- [ ] `dart pub publish --dry-run` passes for all 4 packages (after path-deps swap)

## Publish (preferred: tag-driven via publish.yml OIDC)

```bash
git tag v0.0.X-dev
git push origin v0.0.X-dev
# Watch publish.yml on GitHub Actions; OIDC trusted publisher does the publish.
```

## Manual recovery (if publish.yml fails or first-time publish)

Order matters: leaves first, then dependents, with index propagation wait.

```bash
tool/prepare_publish.sh v0.0.X-dev terradart_annotations
(cd packages/terradart_annotations && dart pub publish)

tool/prepare_publish.sh v0.0.X-dev terradart
(cd packages/terradart && dart pub publish)

tool/prepare_publish.sh v0.0.X-dev terradart_codegen
(cd packages/terradart_codegen && dart pub publish)

# Wait 3 minutes for pub.dev index propagation.
sleep 180

tool/prepare_publish.sh v0.0.X-dev terradart_google
(cd packages/terradart_google && dart pub publish)

# Restore path: deps after publish.
git checkout packages/*/pubspec.yaml
rm -f packages/*/pubspec.yaml.bak
```

## Post-flight

- [ ] All 4 listings on pub.dev show the correct version
- [ ] GitHub Release created with CHANGELOG excerpt
- [ ] Verified publisher badge appears
- [ ] (next-release setup) pub.dev → each package admin → "Automated publishing" → enable GitHub Actions trust

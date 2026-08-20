# Changelog

## Unreleased

- Add `example/main.dart` so pub.dev scores the package-has-an-example
  documentation point.

## 0.25.1

- Lockstep release with the TerraDart workspace. No Appwrite factory or
  provider changes.

## 0.25.0

- Initial release: `AppwriteProvider` (credential-free by design — apply
  authenticates via `APPWRITE_*` environment variables) and the first
  curated factories, `AppwriteProject` and `AppwriteStorageBucket`.
  Provider pinned at `appwrite/appwrite 2.0.0-beta.1`. Versioned in
  lockstep with the TerraDart workspace.

# Changelog

## 0.0.3-dev - 2026-05-09

- Fix: rename terradart_core main library file to match package name.

## 0.0.2-dev - 2026-05-09

- CI automated publishing via OIDC trusted publisher.
- Fix: prepare_publish.sh now syncs version from tag name.

## 0.0.1-dev - 2026-05-09

### Added

- Initial pre-alpha release of `terradart_google` Tier 1 GCP factory wrappers.
- 12 hand-written factories: Pub/Sub (4), Cloud Tasks (2), Secret Manager (3), Cloud Scheduler (1), `google_project_service`, `google_service_account`. Plus the `google_project` data source.
- Schema carriers (`<resource>.schema.dart` + `.g.dart`) generated and committed; consumers do not need `build_runner`.
- `disableOnDestroy` / write-only `secret_data_wo` / `IamMember` helper patterns.

### Notes

- Pre-alpha — factory APIs and emitted Terraform JSON may change between 0.0.x releases. Pin tightly.

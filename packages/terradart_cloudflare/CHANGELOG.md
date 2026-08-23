# Changelog

## 0.25.3 - 2026-08-23

- Ship the hand-written `catalog_entry.dart` the generated catalog imports.
  No factory or provider changes.

## 0.25.2

- Initial release: `CloudflareProvider` (secret-free by design — the
  schema's sensitive attributes `api_token` / `api_key` /
  `api_user_service_key` are structurally excluded; apply authenticates
  via `CLOUDFLARE_*` environment variables) and the first curated
  factories, `CloudflareZone` and `CloudflareDnsRecord`, pinned exactly
  to provider 5.23.0.

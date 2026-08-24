# Changelog

## 0.26.0 - 2026-08-24

- Fill the catalog at the `cloudflare/cloudflare` `5.23.0` pin: **257
  resource factories + 446 data sources** (703 catalog entries). Nested
  plugin-framework objects are typed Dart helper classes.
- **Breaking:** `CloudflareZone.account` is `ZoneAccount` instead of
  `TfArg<Map<String, dynamic>>`. See [MIGRATING.md](../../MIGRATING.md).
- `CloudflareDnsRecord` gains typed `data` / `settings` / `private_routing`.
- Six resources take required create-time `id`: `CloudflareAiGateway`,
  `CloudflareAiSearchInstance`, `CloudflareImage`, `CloudflareImageVariant`,
  `CloudflareZeroTrustAccessAiControlsMcpPortal`,
  `CloudflareZeroTrustAccessAiControlsMcpServer`.
- Coverage: `examples/cloudflare_dns_quickstart` plus
  `examples/cloudflare_leftover_quickstart` (synth + `terraform validate`;
  apply-smoke skip-listed). Factories the leftover dummy cannot satisfy
  are listed in `tool/example_debt.yaml`.

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

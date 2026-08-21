# Changelog

## Unreleased

- Initial release: `CloudflareProvider` (secret-free by design — the
  schema's sensitive attributes `api_token` / `api_key` /
  `api_user_service_key` are structurally excluded; apply authenticates
  via `CLOUDFLARE_*` environment variables) and the first curated
  factories, `CloudflareZone` and `CloudflareDnsRecord`, pinned exactly
  to provider 5.23.0.

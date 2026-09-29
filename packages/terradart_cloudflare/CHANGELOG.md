# Changelog

## Unreleased

- **Breaking** — `CloudflareRuleset`'s `scope` variants take `RefTo<CloudflareAccount>` / `RefTo<CloudflareZone>`: `scope: .zoneId(zone.ref)`. See [MIGRATING.md](../../MIGRATING.md).
- Every resource has a `ref` getter returning `RefTo<ItsClass>`, and so does every data source that reads a resource of this package — the reference the arguments naming another resource take.
- **Breaking** — 292 arguments that name another resource (account and zone) take a `RefTo<Target>` instead of a `TfArg<String>`: `CloudflareDnsRecord(zoneId: zone.ref)`. The argument picks the attribute it emits; `.literal(...)`, `.variable(...)`, `.expression(...)` and `.arg(...)` take a value outside the Stack, and `.pinned('attr')` keeps emitting another attribute. See `MIGRATING.md`.
- **Breaking** — requires Dart 3.10 (`sdk: ^3.10.0`, was `^3.6.0`). The generated wrappers were already formatted in the Dart 3.7+ tall style, so the constraint now matches them (pub.dev static analysis no longer reports a formatter mismatch).
- **Breaking:** inputs the provider requires exactly one of are sealed types — 13 groups on 5 resources take one required argument (or helper field) whose variants each set one member (e.g. `CloudflareRuleset(scope: .zoneId(...))`, `CloudflareAccountMember(access: .roles(...))`). Synth output is unchanged. See [MIGRATING.md](../../MIGRATING.md).
- **Breaking:** mutually exclusive inputs the provider also accepts none of are nullable sealed types — 14 groups on 8 resources (5 on resource arguments, 9 in nested blocks) take one optional argument (or helper field) whose variants each set one member (e.g. `CloudflareDnsRecord(content: .content(...))`, `CloudflareWorkersScript(content: .contentFile(...))`). Leave it out to set none. Synth output is unchanged. See [MIGRATING.md](../../MIGRATING.md).
- Generated wrappers encode optional inputs as null-aware map elements (`'k': ?x`, `'k': ?x?.toTfJson()`) instead of `if (x != null) 'k': x` guards, regenerated with `terradart wrap`. No API change; synth output is unchanged.

## 0.30.0 - 2026-09-28

- **Breaking:** an attribute the schema declares as a map of objects
  (`nesting_mode: "map"`) takes `Map<String, Helper>` instead of one helper,
  which no value could make pass `terraform validate` — 34 inputs across 7
  resources (for example `CloudflareZeroTrustRiskBehavior.behaviors`,
  `PagesProjectDeploymentConfigsPreview.envVars`,
  `CloudflareWorkersScript.files`). A plain literal in the Pages project's
  sensitive `env_vars.*.value` now fails synth. See
  [MIGRATING.md](../../MIGRATING.md).
- **Breaking:** the `cloudflare/cloudflare` pin moves from `5.23.0` to
  `5.26.0`, and the factories follow the provider's schema changes:
  `DataCloudflareRateLimits` is removed, and 45 constructor slots, getters
  and helpers are removed, renamed, retyped or now required (for example
  `CloudflareFlagshipFlag.flagKey`, `CloudConnectorRulesRules.provider` →
  `cloudConnectorRulesProvider`, the pipeline `schema.format` helpers). See
  [MIGRATING.md](../../MIGRATING.md).
- Factories for the 14 resources and 22 data sources added in 5.24.0–5.26.0,
  with new `ct`, `field`, `nel` and `precursor` barrels. The catalog stays
  filled at the pin; `examples/cloudflare_leftover_quickstart` covers them.
- **Breaking:** inputs with a fixed value set are generated enums instead
  of `String`s — 538 string slots and 41 list slots, 579 enums (for example
  `CloudflareDnsRecord.type` takes `DnsRecordType.cname`). The value sets
  come from the provider's `stringvalidator.OneOf` validators and its
  `Available values:` descriptions at the pin; synth output is unchanged.
  See [MIGRATING.md](../../MIGRATING.md).

## 0.29.0 - 2026-09-27

Lockstep release. No `terradart_cloudflare` API changes.

## 0.28.1 - 2026-09-13

Lockstep release with `terradart_migrate` 0.28.1 (passthrough emission fix — a bare `Map` / `List` parameter no longer comes out as `TfArg.literal`). No `terradart_cloudflare` API changes.

## 0.28.0 - 2026-09-13

- **`CloudflareProvider.alias`** (`provider "cloudflare" { alias = "other_account" }`) and a **`provider:`** parameter on every factory and data source, so a resource can select an aliased configuration (`provider: 'cloudflare.other_account'`) (#666).

## 0.27.0 - 2026-08-30

Lockstep release with `terradart_core` 0.27.0 (`TfVariable` / `Stack.addVariable` and `S3Backend`). No `terradart_cloudflare` API changes.
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

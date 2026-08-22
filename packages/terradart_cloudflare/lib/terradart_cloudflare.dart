// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
/// Curated **Cloudflare** surface for TerraDart (official
/// `cloudflare/cloudflare` Terraform provider).
///
/// Cloudflare here is the infrastructure edge around a Dart app — the
/// DNS zone and records pointing a custom domain at Cloud Run, Firebase
/// Hosting, or wherever the Dart backend lives (not Dart on Workers).
/// Curated factories are added on request — open a feature request for
/// resources not wrapped yet. Secrets never appear in synth output:
/// authentication happens at apply time via CLOUDFLARE_* environment
/// variables.
///
/// This umbrella re-exports every per-service barrel. Prefer the
/// per-service imports in new code.
library;

export 'dns.dart';
export 'provider.dart';
export 'zone.dart';

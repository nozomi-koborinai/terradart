// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_ssl_policy`.
const Set<String> _googleComputeSslPolicySensitive = <String>{};

// Phase 4.5.1: dartTypeOverrides re-enabled. Callers pass enum values
// directly; TfArg detects `.terraformValue` getter.

/// `profile` — the curated cipher-suite preset. See the class-level
/// security guidance for picking between [restricted] (compliance
/// default), [modern] (modern browsers only), [compatible] (permissive
/// legacy default), [fips202205] (FIPS 202205-pinned), and [custom]
/// (caller-supplied via [GoogleComputeSslPolicy.customFeatures]).
enum SslPolicyProfile implements TerraformEnum {
  compatible('COMPATIBLE'),
  modern('MODERN'),
  restricted('RESTRICTED'),
  custom('CUSTOM'),
  fips202205('FIPS_202205');

  const SslPolicyProfile(this.terraformValue);
  @override
  final String terraformValue;
}

/// `min_tls_version` — the protocol-version floor. TLS 1.3 is always
/// offered by the load balancer and is **not selectable** as a minimum
/// here; the API only exposes the 1.0 / 1.1 / 1.2 floors. To force
/// TLS 1.3 only, pair [tls12] with [SslPolicyProfile.restricted], which
/// drops the legacy 1.x suites from the negotiated set.
enum SslPolicyMinTlsVersion implements TerraformEnum {
  tls10('TLS_1_0'),
  tls11('TLS_1_1'),
  tls12('TLS_1_2'),
  tls13('TLS_1_3');

  const SslPolicyMinTlsVersion(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_compute_ssl_policy`.
///
/// Represents a SSL policy. SSL policies give you the ability to control the
/// features of SSL that your SSL proxy or HTTPS load balancer negotiates.
///
/// Controls which TLS protocol versions and cipher suites an HTTPS /
/// SSL-proxy load balancer negotiates. Attach to a
/// [GoogleComputeTargetHttpsProxy] via its `sslPolicy` self-link. A
/// free-floating *global* resource — both global and regional HTTPS
/// proxies reference a global SSL policy.
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_compute_ssl_policy.`).
/// - `name`: GCP resource name (1-63 chars, lowercase RFC1035).
///
/// Profile vs. minimum TLS version:
/// - [profile] selects a curated cipher suite. Profiles in ascending
///   strictness: [SslPolicyProfile.compatible], [SslPolicyProfile.modern],
///   [SslPolicyProfile.restricted], [SslPolicyProfile.fips202205].
///   Use [SslPolicyProfile.custom] with [customFeatures] — required for
///   that profile, forbidden for every other.
/// - [minTlsVersion] sets the protocol-version floor (TLS 1.0/1.1/1.2
///   only — TLS 1.3 is always offered and not configurable as minimum).
///   To force TLS 1.3 only: [SslPolicyMinTlsVersion.tls12] +
///   [SslPolicyProfile.restricted].
///
/// Security guidance:
/// - [SslPolicyProfile.restricted] is the right default for PCI-DSS /
///   SOC 2 / HIPAA: disables weak suites, updated by Google.
/// - [SslPolicyProfile.compatible] is intentionally permissive (the
///   provider default). Avoid for new endpoints.
/// - [SslPolicyProfile.fips202205] freezes the suite list to FIPS 202205.
///   Pair with [SslPolicyMinTlsVersion.tls12].
///
/// [customFeatures] is a list of cipher-suite identifiers (see the
/// [official cipher catalog](https://cloud.google.com/compute/docs/load-balancing/ssl-policies#profilefeaturesupport)).
/// Only honored when [profile] is [SslPolicyProfile.custom]; the provider
/// rejects the apply if it appears under any other profile.
///
/// Example (TLS 1.2-only, compliance-grade):
/// ```dart
/// final policy = GoogleComputeSslPolicy(
///   localName: 'prod_ssl',
///   name: TfArg.literal('prod-ssl-policy'),
///   profile: TfArg.literal(SslPolicyProfile.restricted),
///   minTlsVersion: TfArg.literal(SslPolicyMinTlsVersion.tls12),
/// );
/// ```
///
/// Example (custom cipher set):
/// ```dart
/// final policy = GoogleComputeSslPolicy(
///   localName: 'custom_ssl',
///   name: TfArg.literal('custom-ssl-policy'),
///   profile: TfArg.literal(SslPolicyProfile.custom),
///   minTlsVersion: TfArg.literal(SslPolicyMinTlsVersion.tls12),
///   customFeatures: TfArg.literal([
///     'TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256',
///     'TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384',
///   ]),
/// );
/// ```
///
/// Lifecycle: mutable in place (`PATCH`). Profile / TLS-version flips
/// take effect after the next handshake; long-lived sessions are not torn
/// down.
final class GoogleComputeSslPolicy extends Resource {
  static const String tfType = 'google_compute_ssl_policy';

  GoogleComputeSslPolicy({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? description,
    TfArg<SslPolicyProfile>? profile,
    TfArg<SslPolicyMinTlsVersion>? minTlsVersion,
    TfArg<List<String>>? customFeatures,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (description != null) 'description': description,
           if (profile != null) 'profile': profile,
           if (minTlsVersion != null) 'min_tls_version': minTlsVersion,
           if (customFeatures != null) 'custom_features': customFeatures,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeSslPolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `enabled_features` attribute.
  TfRef<List<String>> get enabledFeatures =>
      TfRef.attribute<List<String>>(this, 'enabled_features');

  /// Reference to `fingerprint` attribute.
  TfRef<String> get fingerprint => TfRef.attribute<String>(this, 'fingerprint');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');
}

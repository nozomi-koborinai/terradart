// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_managed_ssl_certificate`.
const Set<String> _googleComputeManagedSslCertificateSensitive = <String>{};

// Phase 4.5.1: dartTypeOverrides re-enabled. Callers pass enum values
// directly; TfArg detects `.terraformValue` getter.

/// Certificate provisioning mode. The schema for this resource accepts
/// only `MANAGED`, and that value is the default — the enum exists for
/// symmetry with the legacy unified `google_compute_ssl_certificate`
/// resource (which historically distinguished `MANAGED` from
/// `SELF_MANAGED`). For new code, omit `type` entirely.
enum ManagedSslCertificateType {
  managed('MANAGED');

  const ManagedSslCertificateType(this.terraformValue);
  final String terraformValue;
}

/// `managed` block payload (single block, max_items=1). Carries the
/// list of domains Google should issue the certificate for.
///
/// Constraints:
/// - [domains] must be non-empty (Google rejects a managed certificate
///   request with no domains).
/// - Up to 100 entries per GCP API limit.
/// - Each entry is a DNS name; wildcards (`*.example.com`) are accepted
///   on the same terms as Google's public CA. The domain must resolve
///   to the load balancer fronting this certificate before issuance can
///   complete (typically 30-60 minutes of DNS validation per domain).
@immutable
class ManagedSslCertificateConfig {
  const ManagedSslCertificateConfig({required this.domains});

  /// Domain names to include on the certificate. Required.
  final List<String> domains;

  Map<String, Object?> toArgMap() => {'domains': domains};
}

/// Factory wrapper for `google_compute_managed_ssl_certificate` (provider
/// `hashicorp/google ~> 7.0`).
///
/// A Google-managed SSL certificate for HTTPS load balancing. Unlike
/// [GoogleComputeSslCertificate] (which takes a self-managed PEM cert +
/// private key), this resource asks Google to provision and rotate the
/// certificate for you — you only supply the list of domain names.
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_compute_managed_ssl_certificate.`).
/// - `name`: GCP resource name. Pass `TfArg.literal('lb-managed-cert')` or
///   `TfArg.ref(otherCert.nameRef)`. Managed and self-managed SSL
///   certificates share a single namespace, so this name must be unique
///   across both resource types in the project.
/// - `managed`: one [ManagedSslCertificateConfig] carrying the list of
///   domains. Required in practice — without it Google has nothing to
///   request a certificate for.
///
/// Provisioning notes:
/// - Up to 100 domains per certificate (GCP-side limit).
/// - Each domain must point (via DNS) at a load balancer that fronts this
///   certificate before Google will issue. DNS validation typically takes
///   30-60 minutes per domain; the full chain (DNS propagation + ACME
///   challenge) can stretch to several hours.
/// - The resource itself returns immediately after the API call; the
///   certificate object then transitions through `PROVISIONING` →
///   `ACTIVE` (or `FAILED_*`). Watch `expireTime` or the GCP console for
///   real status. Plan rotations carefully — migrating from self-managed
///   to managed can entail downtime.
/// - Lifecycle: soft-deleted by default. Recreating with the same name
///   immediately after a destroy may collide; either change the name or
///   wait out the soft-delete window.
///
/// `type` is redundant for this resource — the schema only accepts
/// `MANAGED`, and that is the default. The enum exists for symmetry with
/// the legacy unified `google_compute_ssl_certificate` resource (which
/// historically accepted both `MANAGED` and `SELF_MANAGED`). Callers
/// should normally omit it.
///
/// Example:
/// ```dart
/// final lbCert = GoogleComputeManagedSslCertificate(
///   localName: 'lb_cert',
///   name: TfArg.literal('lb-managed-cert'),
///   managed: const ManagedSslCertificateConfig(
///     domains: ['api.example.com', 'www.example.com'],
///   ),
/// );
/// ```
///
/// Composition pattern: extends `Resource<$GoogleComputeManagedSslCertificate>`
/// for runtime behavior. The single `managed` nested block (max_items=1)
/// is modeled as a helper class in the `prelude` below.
final class GoogleComputeManagedSslCertificate extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_compute_managed_ssl_certificate';

  GoogleComputeManagedSslCertificate({
    required super.localName,
    TfArg<String>? name,
    ManagedSslCertificateConfig? managed,
    TfArg<ManagedSslCertificateType>? type,
    TfArg<String>? description,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
          terraformType: $tfType,
          argMap: {
            if (name != null) 'name': name,
            if (managed != null) 'managed': TfArg.literal([managed.toArgMap()]),
            if (type != null) 'type': type,
            if (description != null) 'description': description,
            if (project != null) 'project': project,
          },
        );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields =>
      _googleComputeManagedSslCertificateSensitive;

  /// Reference to `name` attribute. Use for interpolations like
  /// `cert.nameRef` →
  /// `${google_compute_managed_ssl_certificate.<localName>.name}`.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute (full path
  /// `projects/{project}/global/sslCertificates/{name}` — managed and
  /// self-managed certificates share the `sslCertificates` collection).
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `self_link` attribute. Frequently used as one entry of
  /// the `sslCertificates` list on a downstream
  /// [GoogleComputeTargetHttpsProxy].
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to the computed `certificate_id` attribute — the numeric
  /// GCP resource identifier. Available after apply.
  TfRef<num> get certificateIdRef =>
      TfRef.attribute<num>(this, 'certificate_id');

  /// Reference to the computed `expire_time` attribute (RFC3339). Useful
  /// for alerting on impending expiry, though for managed certificates
  /// Google rotates automatically before this fires.
  TfRef<String> get expireTimeRef =>
      TfRef.attribute<String>(this, 'expire_time');

  /// Reference to the computed `subject_alternative_names` attribute —
  /// the SAN list Google actually placed on the issued cert. Should
  /// match the input `domains` once provisioning completes.
  TfRef<List<String>> get subjectAlternativeNames =>
      TfRef.attribute<List<String>>(this, 'subject_alternative_names');
}

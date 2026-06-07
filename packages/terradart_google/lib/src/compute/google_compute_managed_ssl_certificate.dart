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
enum ManagedSslCertificateType implements TerraformEnum {
  managed('MANAGED');

  const ManagedSslCertificateType(this.terraformValue);
  @override
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
class ComputeManagedSslCertificateManagedSslCertificateConfig {
  const ComputeManagedSslCertificateManagedSslCertificateConfig({
    required this.domains,
  });

  /// Domain names to include on the certificate. Required.
  final List<String> domains;

  Map<String, Object?> toArgMap() => {'domains': domains};
}

/// Factory wrapper for `google_compute_managed_ssl_certificate`.
///
/// An SslCertificate resource, used for HTTPS load balancing. This resource
/// represents a certificate for which the certificate secrets are created and
/// managed by Google.
///
/// For a resource where you provide the key, see the SSL Certificate resource.
///
/// A Google-managed SSL certificate for HTTPS load balancing. Unlike
/// [GoogleComputeSslCertificate] (self-managed PEM + key), this resource
/// asks Google to provision and rotate the certificate — you only supply
/// the list of domain names.
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_compute_managed_ssl_certificate.`).
/// - `name`: GCP resource name. Managed and self-managed SSL certificates
///   share a single namespace — must be unique across both resource types
///   in the project.
/// - `managed`: one [ComputeManagedSslCertificateManagedSslCertificateConfig]
///   carrying the list of domains. Required in practice.
///
/// Provisioning notes:
/// - Up to 100 domains per certificate (GCP-side limit).
/// - Each domain must resolve (DNS) to the load balancer before Google
///   issues. DNS validation typically takes 30-60 minutes per domain; the
///   full ACME flow can stretch to several hours.
/// - The resource returns immediately; the cert transitions
///   `PROVISIONING` → `ACTIVE` (or `FAILED_*`) asynchronously. Watch the
///   `expireTime` output or the GCP console for real status. Plan
///   rotations carefully — migrating from self-managed to managed can
///   entail downtime.
/// - Soft-deleted by default — recreating with the same name immediately
///   after a destroy may collide.
///
/// `type` is redundant (schema only accepts `MANAGED`); the enum exists
/// for symmetry with the legacy unified resource. Callers should omit it.
///
/// Example:
/// ```dart
/// final lbCert = GoogleComputeManagedSslCertificate(
///   localName: 'lb_cert',
///   name: TfArg.literal('lb-managed-cert'),
///   managed: const ComputeManagedSslCertificateManagedSslCertificateConfig(
///     domains: ['api.example.com', 'www.example.com'],
///   ),
/// );
/// ```
final class GoogleComputeManagedSslCertificate extends Resource {
  static const String tfType = 'google_compute_managed_ssl_certificate';

  GoogleComputeManagedSslCertificate({
    required super.localName,
    TfArg<String>? name,
    ComputeManagedSslCertificateManagedSslCertificateConfig? managed,
    TfArg<ManagedSslCertificateType>? type,
    TfArg<String>? description,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (name != null) 'name': name,
           if (managed != null) 'managed': TfArg.literal([managed.toArgMap()]),
           if (type != null) 'type': type,
           if (description != null) 'description': description,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeManagedSslCertificateSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `certificate_id` attribute.
  TfRef<num> get certificateId => TfRef.attribute<num>(this, 'certificate_id');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `expire_time` attribute.
  TfRef<String> get expireTime => TfRef.attribute<String>(this, 'expire_time');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `subject_alternative_names` attribute.
  TfRef<List<String>> get subjectAlternativeNames =>
      TfRef.attribute<List<String>>(this, 'subject_alternative_names');
}

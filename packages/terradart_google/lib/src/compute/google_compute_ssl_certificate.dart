// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_ssl_certificate`.
const Set<String> _googleComputeSslCertificateSensitive = <String>{
  'certificate',
  'private_key',
};

/// Factory wrapper for `google_compute_ssl_certificate` (provider
/// `hashicorp/google ~> 7.0`).
///
/// A **self-managed** SSL certificate for HTTPS load balancing — you
/// supply the PEM-encoded certificate chain and private key, and Google
/// hosts them on the load balancer. For Google-issued certificates (no
/// private key to manage), use [GoogleComputeManagedSslCertificate]
/// instead.
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_compute_ssl_certificate.`).
/// - `certificate`: the PEM-encoded certificate chain. Must be no longer
///   than 5 certificates and must include at least one intermediate.
///   Pass `TfArg.literal('<PEM>')` for inline content or
///   `TfArg.ref(...)` to interpolate from another resource or input
///   variable.
///
/// Naming — exactly one of these (or neither, to let GCP pick):
/// - `name`: explicit resource name. 1-63 chars, RFC1035-compliant.
/// - `namePrefix`: prefix; GCP appends a unique timestamp + counter
///   suffix. Useful when the certificate is recreated frequently (Terraform
///   cannot reuse a name within the same apply because cert deletion is
///   soft). Max prefix length 54 chars; prefixes longer than 37 chars use
///   a shorter suffix and so are more collision-prone. Conflicts with
///   `name`.
///
/// Private key — choose one path:
/// - `privateKey`: the PEM-encoded private key, stored in Terraform state.
///   **Sensitive** (schema-flagged): the generated `$sensitiveFields` set
///   masks it at synth time. Prefer reading from a secret-management
///   source (e.g. Secret Manager, an environment variable, a Vault data
///   source) and passing via `TfArg.ref(...)` rather than embedding the
///   PEM as a literal in code that lives in version control.
/// - `privateKeyWo` + `privateKeyWoVersion`: the write-only variant
///   (Terraform 1.11+). The plaintext private key never enters Terraform
///   state — bump `privateKeyWoVersion` to force a rotation. Prefer this
///   over `privateKey` whenever your Terraform CLI version supports it.
///
/// `certificate` is also **sensitive** in the schema (the cert + chain
/// can leak issuance metadata) and round-trips through `$sensitiveFields`.
///
/// Example (literal PEMs from inputs):
/// ```dart
/// final cert = GoogleComputeSslCertificate(
///   localName: 'lb_cert',
///   namePrefix: TfArg.literal('lb-cert-'),
///   certificate: TfArg.literal(certPem),
///   privateKey: TfArg.literal(keyPem),
/// );
/// ```
///
/// Example (private key from Secret Manager, no plaintext in state):
/// ```dart
/// final cert = GoogleComputeSslCertificate(
///   localName: 'lb_cert',
///   name: TfArg.literal('lb-cert'),
///   certificate: TfArg.ref(certVar),
///   privateKeyWo: TfArg.ref(secretVersion.secretData),
///   privateKeyWoVersion: TfArg.literal('1'),
/// );
/// ```
///
/// Lifecycle: certificates are **immutable** — any change forces
/// replacement. Combined with the soft-delete window on the GCP side,
/// `namePrefix` is usually the safer choice when the cert is expected to
/// rotate. Composition pattern: extends `Resource<$GoogleComputeSslCertificate>`
/// for runtime behavior.
final class GoogleComputeSslCertificate extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_compute_ssl_certificate';

  GoogleComputeSslCertificate({
    required super.localName,
    TfArg<String>? name,
    TfArg<String>? namePrefix,
    required TfArg<String> certificate,
    TfArg<String>? privateKey,
    TfArg<String>? privateKeyWo,
    TfArg<String>? privateKeyWoVersion,
    TfArg<String>? description,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
          terraformType: $tfType,
          argMap: {
            if (name != null) 'name': name,
            if (namePrefix != null) 'name_prefix': namePrefix,
            'certificate': certificate,
            if (privateKey != null) 'private_key': privateKey,
            if (privateKeyWo != null) 'private_key_wo': privateKeyWo,
            if (privateKeyWoVersion != null)
              'private_key_wo_version': privateKeyWoVersion,
            if (description != null) 'description': description,
            if (project != null) 'project': project,
          },
        );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields => _googleComputeSslCertificateSensitive;

  /// Reference to `name` attribute. For `name_prefix`-based resources
  /// this resolves to the GCP-assigned full name (prefix + suffix), so
  /// downstream resources should always use this rather than the input
  /// `name_prefix` literal.
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
  /// for alerting on impending expiry; for self-managed certificates you
  /// are responsible for the rotation flow.
  TfRef<String> get expireTimeRef =>
      TfRef.attribute<String>(this, 'expire_time');
}

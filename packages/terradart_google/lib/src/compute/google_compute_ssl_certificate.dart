// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_ssl_certificate`.
const Set<String> _googleComputeSslCertificateSensitive = <String>{
  'certificate',
  'private_key',
};

/// Factory wrapper for `google_compute_ssl_certificate`.
///
/// An SslCertificate resource, used for HTTPS load balancing. This resource
/// provides a mechanism to upload an SSL key and certificate to the load
/// balancer to serve secure connections from the user.
///
/// A **self-managed** SSL certificate for HTTPS load balancing — you
/// supply the PEM-encoded certificate chain and private key. For
/// Google-issued certificates, use [GoogleComputeManagedSslCertificate].
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_compute_ssl_certificate.`).
/// - `certificate`: PEM-encoded certificate chain (max 5 certs, must
///   include at least one intermediate). Schema-flagged sensitive.
///
/// Naming — exactly one of (or neither, to let GCP pick):
/// - `name`: explicit resource name, 1-63 chars, RFC1035.
/// - `namePrefix`: GCP appends a timestamp + counter suffix. Prefer
///   `namePrefix` when the cert rotates frequently — Terraform cannot
///   reuse a name within the same apply due to the soft-delete window.
///   Max prefix length 54 chars; prefixes longer than 37 chars use a
///   shorter suffix and so are more collision-prone. Conflicts with
///   `name`.
///
/// Private key — choose one path:
/// - `privateKey`: PEM-encoded key, stored in Terraform state. Schema-
///   flagged sensitive; prefer a secret-management source via
///   `TfArg.ref(...)` rather than embedding the PEM as a literal.
/// - `privateKeyWo` + `privateKeyWoVersion`: write-only variant
///   (Terraform 1.11+). The key never enters state — bump
///   `privateKeyWoVersion` to force rotation.
///
/// Lifecycle: certificates are **immutable** — any change forces
/// replacement. Use `namePrefix` for certs expected to rotate.
///
/// Example (namePrefix, literal PEMs):
/// ```dart
/// final cert = GoogleComputeSslCertificate(
///   localName: 'lb_cert',
///   namePrefix: TfArg.literal('lb-cert-'),
///   certificate: TfArg.literal(certPem),
///   privateKey: TfArg.literal(keyPem),
/// );
/// ```
///
/// Example (write-only key from Secret Manager):
/// ```dart
/// final cert = GoogleComputeSslCertificate(
///   localName: 'lb_cert',
///   name: TfArg.literal('lb-cert'),
///   certificate: TfArg.ref(certVar),
///   privateKeyWo: TfArg.ref(secretVersion.secretData),
///   privateKeyWoVersion: TfArg.literal('1'),
/// );
/// ```
final class GoogleComputeSslCertificate extends Resource {
  static const String tfType = 'google_compute_ssl_certificate';

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
         terraformType: tfType,
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
  Set<String> get sensitiveFields => _googleComputeSslCertificateSensitive;

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
}

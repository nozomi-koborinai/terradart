// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_ssl_certificate`.
const Set<String> _googleComputeSslCertificateSensitive = <String>{
  'certificate',
  'private_key',
};

/// Exactly one of `private_key`, `private_key_wo` on `google_compute_ssl_certificate`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.privateKey(...)`.
sealed class ComputeSslCertificatePrivateKey {
  const ComputeSslCertificatePrivateKey();

  /// Sets `private_key`.
  const factory ComputeSslCertificatePrivateKey.privateKey(
    TfArg<String> privateKey,
  ) = ComputeSslCertificatePrivateKeyChoice;

  /// Sets `private_key_wo`.
  const factory ComputeSslCertificatePrivateKey.privateKeyWo(
    TfArg<String> privateKeyWo,
  ) = ComputeSslCertificatePrivateKeyWo;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ComputeSslCertificatePrivateKey.privateKey] choice: sets `private_key`.
final class ComputeSslCertificatePrivateKeyChoice
    extends ComputeSslCertificatePrivateKey {
  const ComputeSslCertificatePrivateKeyChoice(this.privateKey);

  final TfArg<String> privateKey;

  @override
  String get blockKey => 'private_key';

  @override
  Map<String, Object?> encode() => {'private_key': privateKey.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'private_key': privateKey};
}

/// The [ComputeSslCertificatePrivateKey.privateKeyWo] choice: sets `private_key_wo`.
final class ComputeSslCertificatePrivateKeyWo
    extends ComputeSslCertificatePrivateKey {
  const ComputeSslCertificatePrivateKeyWo(this.privateKeyWo);

  final TfArg<String> privateKeyWo;

  @override
  String get blockKey => 'private_key_wo';

  @override
  Map<String, Object?> encode() => {'private_key_wo': privateKeyWo.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'private_key_wo': privateKeyWo};
}

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
/// Private key — `privateKey` is sealed, exactly one of:
/// - `.privateKey(...)`: PEM-encoded key, stored in Terraform state.
///   Schema-flagged sensitive; prefer a secret-management source via
///   `...` rather than embedding the PEM as a literal.
/// - `.privateKeyWo(...)` + `privateKeyWoVersion`: write-only variant
///   (Terraform 1.11+). The key never enters state — bump
///   `privateKeyWoVersion` to force rotation.
///
/// Lifecycle: certificates are **immutable** — any change forces
/// replacement. Use `namePrefix` for certs expected to rotate.
///
/// Example (namePrefix, literal PEMs):
/// ```dart
/// final cert = GoogleComputeSslCertificate(
///   'lb_cert',
///   namePrefix: TfArg.literal('lb-cert-'),
///   certificate: TfArg.literal(certPem),
///   privateKey: .privateKey(.literal(keyPem)),
/// );
/// ```
///
/// Example (write-only key from Secret Manager):
/// ```dart
/// final cert = GoogleComputeSslCertificate(
///   'lb_cert',
///   name: TfArg.literal('lb-cert'),
///   certificate: certVar,
///   privateKey: .privateKeyWo(secretVersion.secretData),
///   privateKeyWoVersion: .literal('1'),
/// );
/// ```
final class GoogleComputeSslCertificate extends Resource {
  static const String tfType = 'google_compute_ssl_certificate';

  GoogleComputeSslCertificate(
    super.localName, {
    TfArg<String>? name,
    TfArg<String>? namePrefix,
    required TfArg<String> certificate,
    required ComputeSslCertificatePrivateKey privateKey,
    TfArg<String>? privateKeyWoVersion,
    TfArg<String>? description,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': ?name,
           'name_prefix': ?namePrefix,
           'certificate': certificate,
           ...privateKey.argMap,
           'private_key_wo_version': ?privateKeyWoVersion,
           'description': ?description,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeSslCertificateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeSslCertificate>`.
  RefTo<GoogleComputeSslCertificate> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `certificate` attribute.
  TfRef<String> get certificate => TfRef.attribute<String>(this, 'certificate');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `name_prefix` attribute.
  TfRef<String> get namePrefix => TfRef.attribute<String>(this, 'name_prefix');

  /// Reference to `private_key` attribute.
  TfRef<String> get privateKey => TfRef.attribute<String>(this, 'private_key');

  /// Reference to `private_key_wo_version` attribute.
  TfRef<String> get privateKeyWoVersion =>
      TfRef.attribute<String>(this, 'private_key_wo_version');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}

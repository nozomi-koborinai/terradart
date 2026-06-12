// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_privateca_ca_pool`.
const Set<String> _googlePrivatecaCaPoolSensitive = <String>{};

/// `tier` — CAS pool service tier.
enum PrivatecaCaPoolTier implements TerraformEnum {
  enterprise('ENTERPRISE'),
  devops('DEVOPS');

  const PrivatecaCaPoolTier(this.terraformValue);
  @override
  final String terraformValue;
}

/// `encoding_format` on [PrivatecaCaPoolPublishingOptions].
enum PrivatecaCaPoolPublishingOptionsEncodingFormat implements TerraformEnum {
  pem('PEM'),
  der('DER');

  const PrivatecaCaPoolPublishingOptionsEncodingFormat(this.terraformValue);
  @override
  final String terraformValue;
}

/// `publishing_options` block — CRL / CA cert publication settings.
final class PrivatecaCaPoolPublishingOptions {
  const PrivatecaCaPoolPublishingOptions({
    this.publishCaCert,
    this.publishCrl,
    this.encodingFormat,
  });

  final TfArg<bool>? publishCaCert;
  final TfArg<bool>? publishCrl;
  final TfArg<PrivatecaCaPoolPublishingOptionsEncodingFormat>? encodingFormat;

  Map<String, Object?> encode() => {
    if (publishCaCert != null) 'publish_ca_cert': publishCaCert,
    if (publishCrl != null) 'publish_crl': publishCrl,
    if (encodingFormat != null) 'encoding_format': encodingFormat,
  };
}

/// `signature_algorithm` on elliptic-curve key types in issuance policy.
enum PrivatecaCaPoolEllipticCurveSignatureAlgorithm implements TerraformEnum {
  ecdsaP256('ECDSA_P256'),
  ecdsaP384('ECDSA_P384'),
  eddsa25519('EDDSA_25519');

  const PrivatecaCaPoolEllipticCurveSignatureAlgorithm(this.terraformValue);
  @override
  final String terraformValue;
}

/// `allowed_key_types.elliptic_curve` issuance-policy helper.
final class PrivatecaCaPoolEllipticCurveKeyType {
  const PrivatecaCaPoolEllipticCurveKeyType({this.signatureAlgorithm});

  final TfArg<PrivatecaCaPoolEllipticCurveSignatureAlgorithm>?
  signatureAlgorithm;

  Map<String, Object?> encode() => {
    if (signatureAlgorithm != null) 'signature_algorithm': signatureAlgorithm,
  };
}

/// Factory wrapper for `google_privateca_ca_pool`.
///
/// Certificate Authority Service (CAS) CA pool — container for one or more
/// certificate authorities used by [GoogleCertificateManagerCertificateIssuanceConfig].
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - [name]: pool ID.
/// - [location]: regional location (e.g. `us-central1`).
/// - [tier]: `ENTERPRISE` or `DEVOPS`.
///
/// Enable `privateca.googleapis.com` via [GoogleProjectService] before apply.
///
/// Example:
/// ```dart
/// final pool = GooglePrivatecaCaPool(
///   localName: 'app_pool',
///   name: TfArg.literal('app-pool'),
///   location: TfArg.literal('us-central1'),
///   tier: TfArg.literal(PrivatecaCaPoolTier.devops),
/// );
///
/// GoogleCertificateManagerCertificateIssuanceConfig(
///   localName: 'issuance',
///   name: TfArg.literal('app-issuance'),
///   certificateAuthorityConfig:
///       CertificateManagerCertificateIssuanceConfigCertificateAuthorityConfig(
///     certificateAuthorityServiceConfig:
///         CertificateManagerCertificateIssuanceConfigCertificateAuthorityServiceConfig(
///       caPool: TfArg.ref(pool.id),
///     ),
///   ),
///   keyAlgorithm: TfArg.literal(
///     CertificateManagerCertificateIssuanceConfigKeyAlgorithm.rsa2048,
///   ),
///   lifetime: TfArg.literal('2592000s'),
///   rotationWindowPercentage: TfArg.literal(50),
/// );
/// ```
final class GooglePrivatecaCaPool extends Resource {
  static const String tfType = 'google_privateca_ca_pool';

  GooglePrivatecaCaPool({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    required TfArg<PrivatecaCaPoolTier> tier,
    TfArg<Map<String, String>>? labels,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'tier': tier,
           if (labels != null) 'labels': labels,
         },
       );

  @override
  Set<String> get sensitiveFields => _googlePrivatecaCaPoolSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');
}

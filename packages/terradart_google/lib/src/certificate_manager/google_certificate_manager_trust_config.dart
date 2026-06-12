// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_certificate_manager_trust_config`.
const Set<String> _googleCertificateManagerTrustConfigSensitive = <String>{
  'trust_stores.intermediate_cas.pem_certificate',
  'trust_stores.trust_anchors.pem_certificate',
};

/// PEM trust anchor entry inside [CertificateManagerTrustConfigTrustStore].
final class CertificateManagerTrustConfigTrustAnchor {
  const CertificateManagerTrustConfigTrustAnchor({this.pemCertificate});

  final TfArg<String>? pemCertificate;

  Map<String, Object?> encode() => {
    if (pemCertificate != null) 'pem_certificate': pemCertificate,
  };
}

/// Intermediate CA PEM entry inside [CertificateManagerTrustConfigTrustStore].
final class CertificateManagerTrustConfigIntermediateCa {
  const CertificateManagerTrustConfigIntermediateCa({this.pemCertificate});

  final TfArg<String>? pemCertificate;

  Map<String, Object?> encode() => {
    if (pemCertificate != null) 'pem_certificate': pemCertificate,
  };
}

/// Trust store block on [GoogleCertificateManagerTrustConfig].
final class CertificateManagerTrustConfigTrustStore {
  const CertificateManagerTrustConfigTrustStore({
    this.trustAnchors,
    this.intermediateCas,
  });

  final List<CertificateManagerTrustConfigTrustAnchor>? trustAnchors;
  final List<CertificateManagerTrustConfigIntermediateCa>? intermediateCas;

  Map<String, Object?> encode() => {
    if (trustAnchors != null)
      'trust_anchors': trustAnchors!.map((a) => a.encode()).toList(),
    if (intermediateCas != null)
      'intermediate_cas': intermediateCas!.map((c) => c.encode()).toList(),
  };
}

/// Allowlisted PEM certificate entry on [GoogleCertificateManagerTrustConfig].
final class CertificateManagerTrustConfigAllowlistedCertificate {
  const CertificateManagerTrustConfigAllowlistedCertificate({
    required this.pemCertificate,
  });

  final TfArg<String> pemCertificate;

  Map<String, Object?> encode() => {'pem_certificate': pemCertificate};
}

/// Factory wrapper for `google_certificate_manager_trust_config`.
///
/// Trust configuration for Certificate Manager mTLS and custom trust stores.
///
/// Defines trust anchors / intermediate CAs and optional PEM allowlists used
/// when validating client or server certificates (e.g. regional HTTPS proxies
/// with `trust_config`).
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - [name]: trust config ID (`[a-zA-Z][a-zA-Z0-9_-]*`).
/// - [location]: regional location (e.g. `global` or `us-central1`).
///
/// Example:
/// ```dart
/// GoogleCertificateManagerTrustConfig(
///   localName: 'app_trust',
///   name: TfArg.literal('app-trust'),
///   location: TfArg.literal('global'),
///   trustStores: [
///     CertificateManagerTrustConfigTrustStore(
///       trustAnchors: [
///         CertificateManagerTrustConfigTrustAnchor(
///           pemCertificate: TfArg.variable('cm_trust_anchor_pem'),
///         ),
///       ],
///     ),
///   ],
/// );
/// ```
final class GoogleCertificateManagerTrustConfig extends Resource {
  static const String tfType = 'google_certificate_manager_trust_config';

  GoogleCertificateManagerTrustConfig({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    List<CertificateManagerTrustConfigTrustStore>? trustStores,
    List<CertificateManagerTrustConfigAllowlistedCertificate>?
    allowlistedCertificates,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           if (trustStores != null)
             'trust_stores': TfArg.literal(
               trustStores.map((s) => s.encode()).toList(),
             ),
           if (allowlistedCertificates != null)
             'allowlisted_certificates': TfArg.literal(
               allowlistedCertificates.map((c) => c.encode()).toList(),
             ),
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleCertificateManagerTrustConfigSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}

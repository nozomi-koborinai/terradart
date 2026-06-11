// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_certificate_manager_certificate`.
const Set<String> _googleCertificateManagerCertificateSensitive = <String>{
  'self_managed.certificate_pem',
  'self_managed.pem_private_key',
  'self_managed.private_key_pem',
};

/// `scope` — where the certificate may be served (default / edge / all
/// regions / client-auth mTLS).
enum CertificateManagerCertificateScope implements TerraformEnum {
  defaultScope('DEFAULT'),
  edgeCache('EDGE_CACHE'),
  allRegions('ALL_REGIONS'),
  clientAuth('CLIENT_AUTH');

  const CertificateManagerCertificateScope(this.terraformValue);
  @override
  final String terraformValue;
}

/// Provisioning mode for [GoogleCertificateManagerCertificate]. Sealed so
/// the API `managed` / `self_managed` exactly-one constraint is enforced
/// at compile time.
sealed class CertificateManagerCertificateProvisioningSource {
  const CertificateManagerCertificateProvisioningSource();

  String get blockKey;
  Map<String, Object?> encode();
}

/// Google-managed certificate — auto-provisioned and renewed while
/// DNS authorization remains valid.
final class CertificateManagerCertificateManagedProvisioning
    extends CertificateManagerCertificateProvisioningSource {
  const CertificateManagerCertificateManagedProvisioning({
    this.domains,
    this.dnsAuthorizations,
    this.issuanceConfig,
  });

  @override
  String get blockKey => 'managed';

  /// Domains on the certificate. Wildcards require DNS authorization.
  final List<String>? domains;

  /// Full resource names of [GoogleCertificateManagerDnsAuthorization]
  /// resources. Mutually exclusive with [issuanceConfig].
  final List<TfArg<String>>? dnsAuthorizations;

  /// Private PKI issuance config resource name. Mutually exclusive with
  /// [dnsAuthorizations].
  final TfArg<String>? issuanceConfig;

  @override
  Map<String, Object?> encode() => {
    if (domains != null) 'domains': domains,
    if (dnsAuthorizations != null)
      'dns_authorizations': dnsAuthorizations!
          .map((a) => a.toTfJson())
          .toList(),
    if (issuanceConfig != null) 'issuance_config': issuanceConfig!.toTfJson(),
  };
}

/// User-uploaded PEM certificate + private key.
final class CertificateManagerCertificateSelfManagedProvisioning
    extends CertificateManagerCertificateProvisioningSource {
  const CertificateManagerCertificateSelfManagedProvisioning({
    this.pemCertificate,
    this.pemPrivateKey,
  });

  @override
  String get blockKey => 'self_managed';

  final TfArg<String>? pemCertificate;
  final TfArg<String>? pemPrivateKey;

  @override
  Map<String, Object?> encode() => {
    if (pemCertificate != null) 'pem_certificate': pemCertificate!.toTfJson(),
    if (pemPrivateKey != null) 'pem_private_key': pemPrivateKey!.toTfJson(),
  };
}

/// Factory wrapper for `google_certificate_manager_certificate`.
///
/// Certificate Manager certificate — Google-managed (auto-renewed) or
/// self-managed (user-uploaded PEM).
///
/// The managed path pairs with [GoogleCertificateManagerDnsAuthorization]
/// via [CertificateManagerCertificateManagedProvisioning.dnsAuthorizations].
/// Attach issued certs to a load balancer either directly
/// (`certificate_manager_certificates` on internal HTTPS proxies) or via a
/// [GoogleCertificateManagerCertificateMap] + map entry on external HTTPS
/// proxies.
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - [name]: certificate ID.
/// - [provisioning]: sealed [CertificateManagerCertificateProvisioningSource]
///   — exactly one of managed or self-managed.
///
/// Example (managed + DNS authorization):
/// ```dart
/// GoogleCertificateManagerCertificate(
///   localName: 'app_cert',
///   name: TfArg.literal('app-cert'),
///   provisioning: CertificateManagerCertificateManagedProvisioning(
///     domains: ['app.example.com'],
///     dnsAuthorizations: [TfArg.ref(dnsAuth.id)],
///   ),
/// );
/// ```
final class GoogleCertificateManagerCertificate extends Resource {
  static const String tfType = 'google_certificate_manager_certificate';

  GoogleCertificateManagerCertificate({
    required super.localName,
    required TfArg<String> name,
    required CertificateManagerCertificateProvisioningSource provisioning,
    TfArg<String>? description,
    TfArg<String>? location,
    TfArg<CertificateManagerCertificateScope>? scope,
    TfArg<Map<String, String>>? labels,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           provisioning.blockKey: TfArg.literal([provisioning.encode()]),
           if (description != null) 'description': description,
           if (location != null) 'location': location,
           if (scope != null) 'scope': scope,
           if (labels != null) 'labels': labels,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleCertificateManagerCertificateSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `san_dnsnames` attribute.
  TfRef<List<String>> get sanDnsnames =>
      TfRef.attribute<List<String>>(this, 'san_dnsnames');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');
}

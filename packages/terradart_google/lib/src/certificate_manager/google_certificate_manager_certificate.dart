// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_certificate_manager_certificate`.
const Set<String> _googleCertificateManagerCertificateSensitive = <String>{
  'self_managed.certificate_pem',
  'self_managed.pem_private_key',
  'self_managed.private_key_pem',
};

/// `scope` — where the certificate may be served (default / edge / all
/// regions / client-auth mTLS).
extension type const CertificateManagerCertificateScope._(TfArg<String> _)
    implements TfArg<String> {
  CertificateManagerCertificateScope.variable(String name)
    : this._(TfArg.variable(name));
  CertificateManagerCertificateScope.expression(String template)
    : this._(TfArg.expression(template));
  const CertificateManagerCertificateScope.arg(TfArg<String> arg) : this._(arg);

  static const defaultScope = CertificateManagerCertificateScope._(
    TfArgLiteral('DEFAULT'),
  );
  static const edgeCache = CertificateManagerCertificateScope._(
    TfArgLiteral('EDGE_CACHE'),
  );
  static const allRegions = CertificateManagerCertificateScope._(
    TfArgLiteral('ALL_REGIONS'),
  );
  static const clientAuth = CertificateManagerCertificateScope._(
    TfArgLiteral('CLIENT_AUTH'),
  );

  static const List<CertificateManagerCertificateScope> values = [
    defaultScope,
    edgeCache,
    allRegions,
    clientAuth,
  ];
}

/// Exactly one of `self_managed`, `managed` on `google_certificate_manager_certificate`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.selfManaged(...)`.
sealed class CertificateManagerCertificateProvisioning {
  const CertificateManagerCertificateProvisioning();

  /// Sets `self_managed`.
  const factory CertificateManagerCertificateProvisioning.selfManaged(
    CertificateManagerCertificateSelfManaged selfManaged,
  ) = CertificateManagerCertificateProvisioningSelfManaged;

  /// Sets `managed`.
  const factory CertificateManagerCertificateProvisioning.managed(
    CertificateManagerCertificateManaged managed,
  ) = CertificateManagerCertificateProvisioningManaged;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [CertificateManagerCertificateProvisioning.selfManaged] choice: sets `self_managed`.
final class CertificateManagerCertificateProvisioningSelfManaged
    extends CertificateManagerCertificateProvisioning {
  const CertificateManagerCertificateProvisioningSelfManaged(this.selfManaged);

  final CertificateManagerCertificateSelfManaged selfManaged;

  @override
  String get blockKey => 'self_managed';

  @override
  Map<String, Object?> encode() => {'self_managed': selfManaged.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'self_managed': TfArg.literal(selfManaged.encode()),
  };
}

/// The [CertificateManagerCertificateProvisioning.managed] choice: sets `managed`.
final class CertificateManagerCertificateProvisioningManaged
    extends CertificateManagerCertificateProvisioning {
  const CertificateManagerCertificateProvisioningManaged(this.managed);

  final CertificateManagerCertificateManaged managed;

  @override
  String get blockKey => 'managed';

  @override
  Map<String, Object?> encode() => {'managed': managed.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'managed': TfArg.literal(managed.encode()),
  };
}

/// Typed helper for the `managed` block of
/// `google_certificate_manager_certificate` (derived from provider schema).
@immutable
final class CertificateManagerCertificateManaged {
  const CertificateManagerCertificateManaged({
    this.dnsAuthorizations,
    this.domains,
    this.issuanceConfig,
  });

  final TfArg<List<String>>? dnsAuthorizations;

  final TfArg<List<String>>? domains;

  final TfArg<String>? issuanceConfig;

  Map<String, Object?> encode() => {
    'dns_authorizations': ?dnsAuthorizations?.toTfJson(),
    'domains': ?domains?.toTfJson(),
    'issuance_config': ?issuanceConfig?.toTfJson(),
  };
}

/// Typed helper for the `self_managed` block of
/// `google_certificate_manager_certificate` (derived from provider schema).
@immutable
final class CertificateManagerCertificateSelfManaged {
  const CertificateManagerCertificateSelfManaged({
    required this.certificate,
    required this.privateKey,
    this.pemPrivateKeyWoVersion,
  });

  final CertificateManagerCertificateSelfManagedCertificate certificate;

  final CertificateManagerCertificatePrivateKey privateKey;

  final TfArg<String>? pemPrivateKeyWoVersion;

  Map<String, Object?> encode() => {
    ...certificate.encode(),
    ...privateKey.encode(),
    'pem_private_key_wo_version': ?pemPrivateKeyWoVersion?.toTfJson(),
  };
}

/// Exactly one of `certificate_pem`, `pem_certificate` on the `self_managed` block of `google_certificate_manager_certificate`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.certificatePem(...)`.
sealed class CertificateManagerCertificateSelfManagedCertificate {
  const CertificateManagerCertificateSelfManagedCertificate();

  /// Sets `certificate_pem`.
  const factory CertificateManagerCertificateSelfManagedCertificate.certificatePem(
    Sensitive<String> certificatePem,
  ) = CertificateManagerCertificateSelfManagedCertificatePem;

  /// Sets `pem_certificate`.
  const factory CertificateManagerCertificateSelfManagedCertificate.pemCertificate(
    TfArg<String> pemCertificate,
  ) = CertificateManagerCertificateSelfManagedPemCertificate;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [CertificateManagerCertificateSelfManagedCertificate.certificatePem] choice: sets `certificate_pem`.
final class CertificateManagerCertificateSelfManagedCertificatePem
    extends CertificateManagerCertificateSelfManagedCertificate {
  const CertificateManagerCertificateSelfManagedCertificatePem(
    this.certificatePem,
  );

  final Sensitive<String> certificatePem;

  @override
  String get blockKey => 'certificate_pem';

  @override
  Map<String, Object?> encode() => {
    'certificate_pem': certificatePem.toTfJson(),
  };
}

/// The [CertificateManagerCertificateSelfManagedCertificate.pemCertificate] choice: sets `pem_certificate`.
final class CertificateManagerCertificateSelfManagedPemCertificate
    extends CertificateManagerCertificateSelfManagedCertificate {
  const CertificateManagerCertificateSelfManagedPemCertificate(
    this.pemCertificate,
  );

  final TfArg<String> pemCertificate;

  @override
  String get blockKey => 'pem_certificate';

  @override
  Map<String, Object?> encode() => {
    'pem_certificate': pemCertificate.toTfJson(),
  };
}

/// Exactly one of `private_key_pem`, `pem_private_key`, `pem_private_key_wo` on the `self_managed` block of `google_certificate_manager_certificate`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.privateKeyPem(...)`.
sealed class CertificateManagerCertificatePrivateKey {
  const CertificateManagerCertificatePrivateKey();

  /// Sets `private_key_pem`.
  const factory CertificateManagerCertificatePrivateKey.privateKeyPem(
    Sensitive<String> privateKeyPem,
  ) = CertificateManagerCertificatePrivateKeyPem;

  /// Sets `pem_private_key`.
  const factory CertificateManagerCertificatePrivateKey.pemPrivateKey(
    Sensitive<String> pemPrivateKey,
  ) = CertificateManagerCertificatePemPrivateKey;

  /// Sets `pem_private_key_wo`.
  const factory CertificateManagerCertificatePrivateKey.pemPrivateKeyWo(
    TfArg<String> pemPrivateKeyWo,
  ) = CertificateManagerCertificatePrivateKeyPemPrivateKeyWo;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [CertificateManagerCertificatePrivateKey.privateKeyPem] choice: sets `private_key_pem`.
final class CertificateManagerCertificatePrivateKeyPem
    extends CertificateManagerCertificatePrivateKey {
  const CertificateManagerCertificatePrivateKeyPem(this.privateKeyPem);

  final Sensitive<String> privateKeyPem;

  @override
  String get blockKey => 'private_key_pem';

  @override
  Map<String, Object?> encode() => {
    'private_key_pem': privateKeyPem.toTfJson(),
  };
}

/// The [CertificateManagerCertificatePrivateKey.pemPrivateKey] choice: sets `pem_private_key`.
final class CertificateManagerCertificatePemPrivateKey
    extends CertificateManagerCertificatePrivateKey {
  const CertificateManagerCertificatePemPrivateKey(this.pemPrivateKey);

  final Sensitive<String> pemPrivateKey;

  @override
  String get blockKey => 'pem_private_key';

  @override
  Map<String, Object?> encode() => {
    'pem_private_key': pemPrivateKey.toTfJson(),
  };
}

/// The [CertificateManagerCertificatePrivateKey.pemPrivateKeyWo] choice: sets `pem_private_key_wo`.
final class CertificateManagerCertificatePrivateKeyPemPrivateKeyWo
    extends CertificateManagerCertificatePrivateKey {
  const CertificateManagerCertificatePrivateKeyPemPrivateKeyWo(
    this.pemPrivateKeyWo,
  );

  final TfArg<String> pemPrivateKeyWo;

  @override
  String get blockKey => 'pem_private_key_wo';

  @override
  Map<String, Object?> encode() => {
    'pem_private_key_wo': pemPrivateKeyWo.toTfJson(),
  };
}

/// Factory wrapper for `google_certificate_manager_certificate`.
///
/// Certificate represents a HTTP-reachable backend for a Certificate.
///
/// Certificate Manager certificate — Google-managed (auto-renewed) or
/// self-managed (user-uploaded PEM).
///
/// The managed path pairs with [GoogleCertificateManagerDnsAuthorization]
/// via [CertificateManagerCertificateManaged.dnsAuthorizations].
/// Attach issued certs to a load balancer either directly
/// (`certificate_manager_certificates` on internal HTTPS proxies) or via a
/// [GoogleCertificateManagerCertificateMap] + map entry on external HTTPS
/// proxies.
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - [name]: certificate ID.
/// - `provisioning`: sealed [CertificateManagerCertificateProvisioning]
///   — exactly one of `.managed(...)` or `.selfManaged(...)`.
///
/// Example (managed + DNS authorization):
/// ```dart
/// GoogleCertificateManagerCertificate(
///   'app_cert',
///   name: .literal('app-cert'),
///   provisioning: .managed(
///     .new(
///       domains: .literal(['app.example.com']),
///       dnsAuthorizations: .literal([dnsAuth.id.interpolation]),
///     ),
///   ),
/// );
/// ```
final class GoogleCertificateManagerCertificate extends Resource {
  static const String tfType = 'google_certificate_manager_certificate';

  GoogleCertificateManagerCertificate(
    super.localName, {
    required TfArg<String> name,
    required CertificateManagerCertificateProvisioning provisioning,
    TfArg<String>? description,
    TfArg<String>? location,
    CertificateManagerCertificateScope? scope,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           ...provisioning.argMap,
           'description': ?description,
           'location': ?location,
           'scope': ?scope,
           'labels': ?labels,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleCertificateManagerCertificateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleCertificateManagerCertificate>`.
  RefTo<GoogleCertificateManagerCertificate> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `scope` attribute.
  TfRef<String> get scope => TfRef.attribute<String>(this, 'scope');
}

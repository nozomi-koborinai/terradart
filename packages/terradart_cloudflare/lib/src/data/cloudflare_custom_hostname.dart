// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../custom_hostname/cloudflare_custom_hostname.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_custom_hostname`.
const Set<String> _cloudflareCustomHostnameSensitive = <String>{
  'ssl.custom_key',
};

/// Typed helper for the `filter` block of
/// `cloudflare_custom_hostname` (derived from provider schema).
@immutable
final class DataCustomHostnameFilter {
  const DataCustomHostnameFilter({
    this.certificateAuthority,
    this.customOriginServer,
    this.direction,
    this.hostnameStatus,
    this.id,
    this.order,
    this.ssl,
    this.sslStatus,
    this.wildcard,
    this.hostname,
  });

  final DataCustomHostnameCertificateAuthority? certificateAuthority;

  final TfArg<String>? customOriginServer;

  final DataCustomHostnameDirection? direction;

  final DataCustomHostnameFilterHostnameStatus? hostnameStatus;

  final TfArg<String>? id;

  final DataCustomHostnameOrder? order;

  final TfArg<num>? ssl;

  final DataCustomHostnameSslStatus? sslStatus;

  final TfArg<bool>? wildcard;

  final DataCustomHostnameFilterHostname? hostname;

  @internal
  Map<String, Object?> encode() => {
    'certificate_authority': ?certificateAuthority?.toTfJson(),
    'custom_origin_server': ?customOriginServer?.toTfJson(),
    'direction': ?direction?.toTfJson(),
    'hostname_status': ?hostnameStatus?.toTfJson(),
    'id': ?id?.toTfJson(),
    'order': ?order?.toTfJson(),
    'ssl': ?ssl?.toTfJson(),
    'ssl_status': ?sslStatus?.toTfJson(),
    'wildcard': ?wildcard?.toTfJson(),
    'hostname': ?hostname?.encode(),
  };
}

/// `certificate_authority` — derived from the provider schema description.
extension type const DataCustomHostnameCertificateAuthority._(TfArg<String> _)
    implements TfArg<String> {
  DataCustomHostnameCertificateAuthority.variable(String name)
    : this._(TfArg.variable(name));
  DataCustomHostnameCertificateAuthority.expression(String template)
    : this._(TfArg.expression(template));
  const DataCustomHostnameCertificateAuthority.arg(TfArg<String> arg)
    : this._(arg);

  static const google = DataCustomHostnameCertificateAuthority._(
    TfArgLiteral('google'),
  );
  static const letsEncrypt = DataCustomHostnameCertificateAuthority._(
    TfArgLiteral('lets_encrypt'),
  );
  static const sslCom = DataCustomHostnameCertificateAuthority._(
    TfArgLiteral('ssl_com'),
  );

  static const List<DataCustomHostnameCertificateAuthority> values = [
    google,
    letsEncrypt,
    sslCom,
  ];
}

/// `direction` — derived from the provider schema description.
extension type const DataCustomHostnameDirection._(TfArg<String> _)
    implements TfArg<String> {
  DataCustomHostnameDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataCustomHostnameDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataCustomHostnameDirection.arg(TfArg<String> arg) : this._(arg);

  static const asc = DataCustomHostnameDirection._(TfArgLiteral('asc'));
  static const desc = DataCustomHostnameDirection._(TfArgLiteral('desc'));

  static const List<DataCustomHostnameDirection> values = [asc, desc];
}

/// `hostname_status` — derived from the provider schema description.
extension type const DataCustomHostnameFilterHostnameStatus._(TfArg<String> _)
    implements TfArg<String> {
  DataCustomHostnameFilterHostnameStatus.variable(String name)
    : this._(TfArg.variable(name));
  DataCustomHostnameFilterHostnameStatus.expression(String template)
    : this._(TfArg.expression(template));
  const DataCustomHostnameFilterHostnameStatus.arg(TfArg<String> arg)
    : this._(arg);

  static const active = DataCustomHostnameFilterHostnameStatus._(
    TfArgLiteral('active'),
  );
  static const pending = DataCustomHostnameFilterHostnameStatus._(
    TfArgLiteral('pending'),
  );
  static const activeRedeploying = DataCustomHostnameFilterHostnameStatus._(
    TfArgLiteral('active_redeploying'),
  );
  static const moved = DataCustomHostnameFilterHostnameStatus._(
    TfArgLiteral('moved'),
  );
  static const pendingDeletion = DataCustomHostnameFilterHostnameStatus._(
    TfArgLiteral('pending_deletion'),
  );
  static const deleted = DataCustomHostnameFilterHostnameStatus._(
    TfArgLiteral('deleted'),
  );
  static const pendingBlocked = DataCustomHostnameFilterHostnameStatus._(
    TfArgLiteral('pending_blocked'),
  );
  static const pendingMigration = DataCustomHostnameFilterHostnameStatus._(
    TfArgLiteral('pending_migration'),
  );
  static const pendingProvisioned = DataCustomHostnameFilterHostnameStatus._(
    TfArgLiteral('pending_provisioned'),
  );
  static const testPending = DataCustomHostnameFilterHostnameStatus._(
    TfArgLiteral('test_pending'),
  );
  static const testActive = DataCustomHostnameFilterHostnameStatus._(
    TfArgLiteral('test_active'),
  );
  static const testActiveApex = DataCustomHostnameFilterHostnameStatus._(
    TfArgLiteral('test_active_apex'),
  );
  static const testBlocked = DataCustomHostnameFilterHostnameStatus._(
    TfArgLiteral('test_blocked'),
  );
  static const testFailed = DataCustomHostnameFilterHostnameStatus._(
    TfArgLiteral('test_failed'),
  );
  static const provisioned = DataCustomHostnameFilterHostnameStatus._(
    TfArgLiteral('provisioned'),
  );
  static const blocked = DataCustomHostnameFilterHostnameStatus._(
    TfArgLiteral('blocked'),
  );

  static const List<DataCustomHostnameFilterHostnameStatus> values = [
    active,
    pending,
    activeRedeploying,
    moved,
    pendingDeletion,
    deleted,
    pendingBlocked,
    pendingMigration,
    pendingProvisioned,
    testPending,
    testActive,
    testActiveApex,
    testBlocked,
    testFailed,
    provisioned,
    blocked,
  ];
}

/// `order` — derived from the provider schema description.
extension type const DataCustomHostnameOrder._(TfArg<String> _)
    implements TfArg<String> {
  DataCustomHostnameOrder.variable(String name) : this._(TfArg.variable(name));
  DataCustomHostnameOrder.expression(String template)
    : this._(TfArg.expression(template));
  const DataCustomHostnameOrder.arg(TfArg<String> arg) : this._(arg);

  static const ssl = DataCustomHostnameOrder._(TfArgLiteral('ssl'));
  static const sslStatus = DataCustomHostnameOrder._(
    TfArgLiteral('ssl_status'),
  );

  static const List<DataCustomHostnameOrder> values = [ssl, sslStatus];
}

/// `ssl_status` — derived from the provider schema description.
extension type const DataCustomHostnameSslStatus._(TfArg<String> _)
    implements TfArg<String> {
  DataCustomHostnameSslStatus.variable(String name)
    : this._(TfArg.variable(name));
  DataCustomHostnameSslStatus.expression(String template)
    : this._(TfArg.expression(template));
  const DataCustomHostnameSslStatus.arg(TfArg<String> arg) : this._(arg);

  static const initializing = DataCustomHostnameSslStatus._(
    TfArgLiteral('initializing'),
  );
  static const pendingValidation = DataCustomHostnameSslStatus._(
    TfArgLiteral('pending_validation'),
  );
  static const deleted = DataCustomHostnameSslStatus._(TfArgLiteral('deleted'));
  static const pendingIssuance = DataCustomHostnameSslStatus._(
    TfArgLiteral('pending_issuance'),
  );
  static const pendingDeployment = DataCustomHostnameSslStatus._(
    TfArgLiteral('pending_deployment'),
  );
  static const pendingDeletion = DataCustomHostnameSslStatus._(
    TfArgLiteral('pending_deletion'),
  );
  static const pendingExpiration = DataCustomHostnameSslStatus._(
    TfArgLiteral('pending_expiration'),
  );
  static const expired = DataCustomHostnameSslStatus._(TfArgLiteral('expired'));
  static const active = DataCustomHostnameSslStatus._(TfArgLiteral('active'));
  static const initializingTimedOut = DataCustomHostnameSslStatus._(
    TfArgLiteral('initializing_timed_out'),
  );
  static const validationTimedOut = DataCustomHostnameSslStatus._(
    TfArgLiteral('validation_timed_out'),
  );
  static const issuanceTimedOut = DataCustomHostnameSslStatus._(
    TfArgLiteral('issuance_timed_out'),
  );
  static const deploymentTimedOut = DataCustomHostnameSslStatus._(
    TfArgLiteral('deployment_timed_out'),
  );
  static const deletionTimedOut = DataCustomHostnameSslStatus._(
    TfArgLiteral('deletion_timed_out'),
  );
  static const pendingCleanup = DataCustomHostnameSslStatus._(
    TfArgLiteral('pending_cleanup'),
  );
  static const stagingDeployment = DataCustomHostnameSslStatus._(
    TfArgLiteral('staging_deployment'),
  );
  static const stagingActive = DataCustomHostnameSslStatus._(
    TfArgLiteral('staging_active'),
  );
  static const deactivating = DataCustomHostnameSslStatus._(
    TfArgLiteral('deactivating'),
  );
  static const inactive = DataCustomHostnameSslStatus._(
    TfArgLiteral('inactive'),
  );
  static const backupIssued = DataCustomHostnameSslStatus._(
    TfArgLiteral('backup_issued'),
  );
  static const holdingDeployment = DataCustomHostnameSslStatus._(
    TfArgLiteral('holding_deployment'),
  );

  static const List<DataCustomHostnameSslStatus> values = [
    initializing,
    pendingValidation,
    deleted,
    pendingIssuance,
    pendingDeployment,
    pendingDeletion,
    pendingExpiration,
    expired,
    active,
    initializingTimedOut,
    validationTimedOut,
    issuanceTimedOut,
    deploymentTimedOut,
    deletionTimedOut,
    pendingCleanup,
    stagingDeployment,
    stagingActive,
    deactivating,
    inactive,
    backupIssued,
    holdingDeployment,
  ];
}

/// Typed helper for the `filter.hostname` block of
/// `cloudflare_custom_hostname` (derived from provider schema).
@immutable
final class DataCustomHostnameFilterHostname {
  const DataCustomHostnameFilterHostname({
    this.contain,
    this.exact,
    this.startsWith,
  });

  final TfArg<String>? contain;

  final TfArg<String>? exact;

  final TfArg<String>? startsWith;

  @internal
  Map<String, Object?> encode() => {
    'contain': ?contain?.toTfJson(),
    'exact': ?exact?.toTfJson(),
    'starts_with': ?startsWith?.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_custom_hostname`.
///
/// Accepted Permissions
///
/// - `SSL and Certificates Read` - `SSL and Certificates Write`
final class DataCloudflareCustomHostname extends Data {
  static const String tfType = 'cloudflare_custom_hostname';

  DataCloudflareCustomHostname(
    super.localName, {
    TfArg<String>? customHostnameId,
    RefTo<CloudflareZone>? zoneId,
    DataCustomHostnameFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'custom_hostname_id': ?customHostnameId,
           'zone_id': ?zoneId?.encodeAs('id'),
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareCustomHostnameSensitive;

  /// A reference to the `cloudflare_custom_hostname` this data source reads, for
  /// arguments typed `RefTo<CloudflareCustomHostname>`.
  RefTo<CloudflareCustomHostname> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `custom_metadata` attribute.
  TfRef<Map<String, String>> get customMetadata =>
      TfRef.attribute<Map<String, String>>(this, 'custom_metadata');

  /// Reference to `custom_origin_server` attribute.
  TfRef<String> get customOriginServer =>
      TfRef.attribute<String>(this, 'custom_origin_server');

  /// Reference to `custom_origin_sni` attribute.
  TfRef<String> get customOriginSni =>
      TfRef.attribute<String>(this, 'custom_origin_sni');

  /// Reference to `hostname` attribute.
  TfRef<String> get hostname => TfRef.attribute<String>(this, 'hostname');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `verification_errors` attribute.
  TfRef<List<String>> get verificationErrors =>
      TfRef.attribute<List<String>>(this, 'verification_errors');

  /// Reference to `custom_hostname_id` attribute.
  TfRef<String> get customHostnameId =>
      TfRef.attribute<String>(this, 'custom_hostname_id');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}

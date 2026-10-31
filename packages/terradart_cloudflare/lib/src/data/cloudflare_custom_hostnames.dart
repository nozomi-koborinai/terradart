// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_custom_hostnames`.
const Set<String> _cloudflareCustomHostnamesSensitive = <String>{
  'result.ssl.custom_key',
};

/// Data Custom Hostnames Certificate enum for `certificate_authority`.
extension type const DataCustomHostnamesCertificateAuthority._(TfArg<String> _)
    implements TfArg<String> {
  DataCustomHostnamesCertificateAuthority.variable(String name)
    : this._(TfArg.variable(name));
  DataCustomHostnamesCertificateAuthority.expression(String template)
    : this._(TfArg.expression(template));
  const DataCustomHostnamesCertificateAuthority.arg(TfArg<String> arg)
    : this._(arg);

  static const google = DataCustomHostnamesCertificateAuthority._(
    TfArgLiteral('google'),
  );
  static const letsEncrypt = DataCustomHostnamesCertificateAuthority._(
    TfArgLiteral('lets_encrypt'),
  );
  static const sslCom = DataCustomHostnamesCertificateAuthority._(
    TfArgLiteral('ssl_com'),
  );

  static const List<DataCustomHostnamesCertificateAuthority> values = [
    google,
    letsEncrypt,
    sslCom,
  ];
}

/// Data Custom Hostnames enum for `direction`.
extension type const DataCustomHostnamesDirection._(TfArg<String> _)
    implements TfArg<String> {
  DataCustomHostnamesDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataCustomHostnamesDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataCustomHostnamesDirection.arg(TfArg<String> arg) : this._(arg);

  static const asc = DataCustomHostnamesDirection._(TfArgLiteral('asc'));
  static const desc = DataCustomHostnamesDirection._(TfArgLiteral('desc'));

  static const List<DataCustomHostnamesDirection> values = [asc, desc];
}

/// Data Custom Hostnames Hostname enum for `hostname_status`.
extension type const DataCustomHostnamesHostnameStatus._(TfArg<String> _)
    implements TfArg<String> {
  DataCustomHostnamesHostnameStatus.variable(String name)
    : this._(TfArg.variable(name));
  DataCustomHostnamesHostnameStatus.expression(String template)
    : this._(TfArg.expression(template));
  const DataCustomHostnamesHostnameStatus.arg(TfArg<String> arg) : this._(arg);

  static const active = DataCustomHostnamesHostnameStatus._(
    TfArgLiteral('active'),
  );
  static const pending = DataCustomHostnamesHostnameStatus._(
    TfArgLiteral('pending'),
  );
  static const activeRedeploying = DataCustomHostnamesHostnameStatus._(
    TfArgLiteral('active_redeploying'),
  );
  static const moved = DataCustomHostnamesHostnameStatus._(
    TfArgLiteral('moved'),
  );
  static const pendingDeletion = DataCustomHostnamesHostnameStatus._(
    TfArgLiteral('pending_deletion'),
  );
  static const deleted = DataCustomHostnamesHostnameStatus._(
    TfArgLiteral('deleted'),
  );
  static const pendingBlocked = DataCustomHostnamesHostnameStatus._(
    TfArgLiteral('pending_blocked'),
  );
  static const pendingMigration = DataCustomHostnamesHostnameStatus._(
    TfArgLiteral('pending_migration'),
  );
  static const pendingProvisioned = DataCustomHostnamesHostnameStatus._(
    TfArgLiteral('pending_provisioned'),
  );
  static const testPending = DataCustomHostnamesHostnameStatus._(
    TfArgLiteral('test_pending'),
  );
  static const testActive = DataCustomHostnamesHostnameStatus._(
    TfArgLiteral('test_active'),
  );
  static const testActiveApex = DataCustomHostnamesHostnameStatus._(
    TfArgLiteral('test_active_apex'),
  );
  static const testBlocked = DataCustomHostnamesHostnameStatus._(
    TfArgLiteral('test_blocked'),
  );
  static const testFailed = DataCustomHostnamesHostnameStatus._(
    TfArgLiteral('test_failed'),
  );
  static const provisioned = DataCustomHostnamesHostnameStatus._(
    TfArgLiteral('provisioned'),
  );
  static const blocked = DataCustomHostnamesHostnameStatus._(
    TfArgLiteral('blocked'),
  );

  static const List<DataCustomHostnamesHostnameStatus> values = [
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

/// Data Custom Hostnames enum for `order`.
extension type const DataCustomHostnamesOrder._(TfArg<String> _)
    implements TfArg<String> {
  DataCustomHostnamesOrder.variable(String name) : this._(TfArg.variable(name));
  DataCustomHostnamesOrder.expression(String template)
    : this._(TfArg.expression(template));
  const DataCustomHostnamesOrder.arg(TfArg<String> arg) : this._(arg);

  static const ssl = DataCustomHostnamesOrder._(TfArgLiteral('ssl'));
  static const sslStatus = DataCustomHostnamesOrder._(
    TfArgLiteral('ssl_status'),
  );

  static const List<DataCustomHostnamesOrder> values = [ssl, sslStatus];
}

/// Data Custom Hostnames Ssl enum for `ssl_status`.
extension type const DataCustomHostnamesSslStatus._(TfArg<String> _)
    implements TfArg<String> {
  DataCustomHostnamesSslStatus.variable(String name)
    : this._(TfArg.variable(name));
  DataCustomHostnamesSslStatus.expression(String template)
    : this._(TfArg.expression(template));
  const DataCustomHostnamesSslStatus.arg(TfArg<String> arg) : this._(arg);

  static const initializing = DataCustomHostnamesSslStatus._(
    TfArgLiteral('initializing'),
  );
  static const pendingValidation = DataCustomHostnamesSslStatus._(
    TfArgLiteral('pending_validation'),
  );
  static const deleted = DataCustomHostnamesSslStatus._(
    TfArgLiteral('deleted'),
  );
  static const pendingIssuance = DataCustomHostnamesSslStatus._(
    TfArgLiteral('pending_issuance'),
  );
  static const pendingDeployment = DataCustomHostnamesSslStatus._(
    TfArgLiteral('pending_deployment'),
  );
  static const pendingDeletion = DataCustomHostnamesSslStatus._(
    TfArgLiteral('pending_deletion'),
  );
  static const pendingExpiration = DataCustomHostnamesSslStatus._(
    TfArgLiteral('pending_expiration'),
  );
  static const expired = DataCustomHostnamesSslStatus._(
    TfArgLiteral('expired'),
  );
  static const active = DataCustomHostnamesSslStatus._(TfArgLiteral('active'));
  static const initializingTimedOut = DataCustomHostnamesSslStatus._(
    TfArgLiteral('initializing_timed_out'),
  );
  static const validationTimedOut = DataCustomHostnamesSslStatus._(
    TfArgLiteral('validation_timed_out'),
  );
  static const issuanceTimedOut = DataCustomHostnamesSslStatus._(
    TfArgLiteral('issuance_timed_out'),
  );
  static const deploymentTimedOut = DataCustomHostnamesSslStatus._(
    TfArgLiteral('deployment_timed_out'),
  );
  static const deletionTimedOut = DataCustomHostnamesSslStatus._(
    TfArgLiteral('deletion_timed_out'),
  );
  static const pendingCleanup = DataCustomHostnamesSslStatus._(
    TfArgLiteral('pending_cleanup'),
  );
  static const stagingDeployment = DataCustomHostnamesSslStatus._(
    TfArgLiteral('staging_deployment'),
  );
  static const stagingActive = DataCustomHostnamesSslStatus._(
    TfArgLiteral('staging_active'),
  );
  static const deactivating = DataCustomHostnamesSslStatus._(
    TfArgLiteral('deactivating'),
  );
  static const inactive = DataCustomHostnamesSslStatus._(
    TfArgLiteral('inactive'),
  );
  static const backupIssued = DataCustomHostnamesSslStatus._(
    TfArgLiteral('backup_issued'),
  );
  static const holdingDeployment = DataCustomHostnamesSslStatus._(
    TfArgLiteral('holding_deployment'),
  );

  static const List<DataCustomHostnamesSslStatus> values = [
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

/// Typed helper for the `hostname` block of
/// `cloudflare_custom_hostnames` (derived from provider schema).
@immutable
final class DataCustomHostnamesHostname {
  const DataCustomHostnamesHostname({
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

/// Factory wrapper for `cloudflare_custom_hostnames`.
///
/// Accepted Permissions
///
/// - `SSL and Certificates Read` - `SSL and Certificates Write`
final class DataCloudflareCustomHostnames extends Data {
  static const String tfType = 'cloudflare_custom_hostnames';

  DataCloudflareCustomHostnames(
    super.localName, {
    DataCustomHostnamesCertificateAuthority? certificateAuthority,
    TfArg<String>? customOriginServer,
    DataCustomHostnamesDirection? direction,
    DataCustomHostnamesHostnameStatus? hostnameStatus,
    TfArg<num>? maxItems,
    DataCustomHostnamesOrder? order,
    TfArg<num>? ssl,
    DataCustomHostnamesSslStatus? sslStatus,
    TfArg<bool>? wildcard,
    RefTo<CloudflareZone>? zoneId,
    DataCustomHostnamesHostname? hostname,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'certificate_authority': ?certificateAuthority,
           'custom_origin_server': ?customOriginServer,
           'direction': ?direction,
           'hostname_status': ?hostnameStatus,
           'max_items': ?maxItems,
           'order': ?order,
           'ssl': ?ssl,
           'ssl_status': ?sslStatus,
           'wildcard': ?wildcard,
           'zone_id': ?zoneId?.encodeAs('id'),
           if (hostname != null) 'hostname': TfArg.literal(hostname.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareCustomHostnamesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `certificate_authority` attribute.
  TfRef<String> get certificateAuthority =>
      TfRef.attribute<String>(this, 'certificate_authority');

  /// Reference to `custom_origin_server` attribute.
  TfRef<String> get customOriginServer =>
      TfRef.attribute<String>(this, 'custom_origin_server');

  /// Reference to `direction` attribute.
  TfRef<String> get direction => TfRef.attribute<String>(this, 'direction');

  /// Reference to `hostname_status` attribute.
  TfRef<String> get hostnameStatus =>
      TfRef.attribute<String>(this, 'hostname_status');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `order` attribute.
  TfRef<String> get order => TfRef.attribute<String>(this, 'order');

  /// Reference to `ssl` attribute.
  TfRef<num> get ssl => TfRef.attribute<num>(this, 'ssl');

  /// Reference to `ssl_status` attribute.
  TfRef<String> get sslStatus => TfRef.attribute<String>(this, 'ssl_status');

  /// Reference to `wildcard` attribute.
  TfRef<bool> get wildcard => TfRef.attribute<bool>(this, 'wildcard');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}

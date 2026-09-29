// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../custom_hostname/cloudflare_custom_hostname.dart';

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

  final TfArg<DataCustomHostnameFilterCertificateAuthority>?
  certificateAuthority;

  final TfArg<String>? customOriginServer;

  final TfArg<DataCustomHostnameFilterDirection>? direction;

  final TfArg<DataCustomHostnameFilterHostnameStatus>? hostnameStatus;

  final TfArg<String>? id;

  final TfArg<DataCustomHostnameFilterOrder>? order;

  final TfArg<num>? ssl;

  final TfArg<DataCustomHostnameFilterSslStatus>? sslStatus;

  final TfArg<bool>? wildcard;

  final DataCustomHostnameFilterHostname? hostname;

  Map<String, Object?> encode() => {
    if (certificateAuthority != null)
      'certificate_authority': certificateAuthority!.toTfJson(),
    if (customOriginServer != null)
      'custom_origin_server': customOriginServer!.toTfJson(),
    if (direction != null) 'direction': direction!.toTfJson(),
    if (hostnameStatus != null) 'hostname_status': hostnameStatus!.toTfJson(),
    if (id != null) 'id': id!.toTfJson(),
    if (order != null) 'order': order!.toTfJson(),
    if (ssl != null) 'ssl': ssl!.toTfJson(),
    if (sslStatus != null) 'ssl_status': sslStatus!.toTfJson(),
    if (wildcard != null) 'wildcard': wildcard!.toTfJson(),
    if (hostname != null) 'hostname': hostname!.encode(),
  };
}

/// `certificate_authority` — derived from the provider schema description.
enum DataCustomHostnameFilterCertificateAuthority implements TerraformEnum {
  google('google'),
  letsEncrypt('lets_encrypt'),
  sslCom('ssl_com');

  const DataCustomHostnameFilterCertificateAuthority(this.terraformValue);
  @override
  final String terraformValue;
}

/// `direction` — derived from the provider schema description.
enum DataCustomHostnameFilterDirection implements TerraformEnum {
  asc('asc'),
  desc('desc');

  const DataCustomHostnameFilterDirection(this.terraformValue);
  @override
  final String terraformValue;
}

/// `hostname_status` — derived from the provider schema description.
enum DataCustomHostnameFilterHostnameStatus implements TerraformEnum {
  active('active'),
  pending('pending'),
  activeRedeploying('active_redeploying'),
  moved('moved'),
  pendingDeletion('pending_deletion'),
  deleted('deleted'),
  pendingBlocked('pending_blocked'),
  pendingMigration('pending_migration'),
  pendingProvisioned('pending_provisioned'),
  testPending('test_pending'),
  testActive('test_active'),
  testActiveApex('test_active_apex'),
  testBlocked('test_blocked'),
  testFailed('test_failed'),
  provisioned('provisioned'),
  blocked('blocked');

  const DataCustomHostnameFilterHostnameStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// `order` — derived from the provider schema description.
enum DataCustomHostnameFilterOrder implements TerraformEnum {
  ssl('ssl'),
  sslStatus('ssl_status');

  const DataCustomHostnameFilterOrder(this.terraformValue);
  @override
  final String terraformValue;
}

/// `ssl_status` — derived from the provider schema description.
enum DataCustomHostnameFilterSslStatus implements TerraformEnum {
  initializing('initializing'),
  pendingValidation('pending_validation'),
  deleted('deleted'),
  pendingIssuance('pending_issuance'),
  pendingDeployment('pending_deployment'),
  pendingDeletion('pending_deletion'),
  pendingExpiration('pending_expiration'),
  expired('expired'),
  active('active'),
  initializingTimedOut('initializing_timed_out'),
  validationTimedOut('validation_timed_out'),
  issuanceTimedOut('issuance_timed_out'),
  deploymentTimedOut('deployment_timed_out'),
  deletionTimedOut('deletion_timed_out'),
  pendingCleanup('pending_cleanup'),
  stagingDeployment('staging_deployment'),
  stagingActive('staging_active'),
  deactivating('deactivating'),
  inactive('inactive'),
  backupIssued('backup_issued'),
  holdingDeployment('holding_deployment');

  const DataCustomHostnameFilterSslStatus(this.terraformValue);
  @override
  final String terraformValue;
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

  Map<String, Object?> encode() => {
    if (contain != null) 'contain': contain!.toTfJson(),
    if (exact != null) 'exact': exact!.toTfJson(),
    if (startsWith != null) 'starts_with': startsWith!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_custom_hostname`.
///
/// Accepted Permissions
///
/// - `SSL and Certificates Read` - `SSL and Certificates Write`
final class DataCloudflareCustomHostname extends Data {
  static const String tfType = 'cloudflare_custom_hostname';

  DataCloudflareCustomHostname({
    required super.localName,
    TfArg<String>? customHostnameId,
    TfArg<String>? zoneId,
    DataCustomHostnameFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (customHostnameId != null) 'custom_hostname_id': customHostnameId,
           if (zoneId != null) 'zone_id': zoneId,
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
}

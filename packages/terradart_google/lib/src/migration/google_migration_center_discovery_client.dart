// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../iam/google_service_account.dart' show GoogleServiceAccount;
import '../migration/google_migration_center_source.dart'
    show GoogleMigrationCenterSource;

/// Sensitive field paths for `google_migration_center_discovery_client`.
const Set<String> _googleMigrationCenterDiscoveryClientSensitive = <String>{};

/// Terraform `deletion_policy` for Migration Center discovery clients.
enum MigrationCenterDiscoveryClientDeletionPolicy implements TerraformEnum {
  delete('DELETE'),
  prevent('PREVENT'),
  abandon('ABANDON');

  const MigrationCenterDiscoveryClientDeletionPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_migration_center_discovery_client`.
///
/// DiscoveryClient represents an on-premise discovery agent that scans
/// infrastructure and uploads discovery data to Migration Center.
///
/// Migration Center on-prem discovery client bound to a [GoogleMigrationCenterSource].
///
/// Set [source] to `source.name` and [serviceAccount] to the
/// discovery agent service account email.
final class GoogleMigrationCenterDiscoveryClient extends Resource {
  static const String tfType = 'google_migration_center_discovery_client';

  GoogleMigrationCenterDiscoveryClient({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> discoveryClientId,
    required RefTo<GoogleMigrationCenterSource> source,
    required RefTo<GoogleServiceAccount> serviceAccount,
    TfArg<String>? displayName,
    TfArg<String>? description,
    TfArg<String>? ttl,
    TfArg<Map<String, String>>? labels,
    TfArg<MigrationCenterDiscoveryClientDeletionPolicy>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'discovery_client_id': discoveryClientId,
           'source': source.encodeAs('name'),
           'service_account': serviceAccount.encodeAs('email'),
           'display_name': ?displayName,
           'description': ?description,
           'ttl': ?ttl,
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleMigrationCenterDiscoveryClientSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleMigrationCenterDiscoveryClient>`.
  RefTo<GoogleMigrationCenterDiscoveryClient> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `errors` attribute.
  TfRef<List<Map<String, Object?>>> get errors =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'errors');

  /// Reference to `heartbeat_time` attribute.
  TfRef<String> get heartbeatTime =>
      TfRef.attribute<String>(this, 'heartbeat_time');

  /// Reference to `signals_endpoint` attribute.
  TfRef<String> get signalsEndpoint =>
      TfRef.attribute<String>(this, 'signals_endpoint');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `discovery_client_id` attribute.
  TfRef<String> get discoveryClientId =>
      TfRef.attribute<String>(this, 'discovery_client_id');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `expire_time` attribute.
  TfRef<String> get expireTime => TfRef.attribute<String>(this, 'expire_time');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `service_account` attribute.
  TfRef<String> get serviceAccount =>
      TfRef.attribute<String>(this, 'service_account');

  /// Reference to `source` attribute.
  TfRef<String> get source => TfRef.attribute<String>(this, 'source');

  /// Reference to `ttl` attribute.
  TfRef<String> get ttl => TfRef.attribute<String>(this, 'ttl');
}

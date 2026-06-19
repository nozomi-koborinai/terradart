// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
/// Set [source] to `TfArg.ref(source.nameRef)` and [serviceAccount] to the
/// discovery agent service account email.
final class GoogleMigrationCenterDiscoveryClient extends Resource {
  static const String tfType = 'google_migration_center_discovery_client';

  GoogleMigrationCenterDiscoveryClient({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> discoveryClientId,
    required TfArg<String> source,
    required TfArg<String> serviceAccount,
    TfArg<String>? displayName,
    TfArg<String>? description,
    TfArg<String>? ttl,
    TfArg<Map<String, String>>? labels,
    TfArg<MigrationCenterDiscoveryClientDeletionPolicy>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'discovery_client_id': discoveryClientId,
           'source': source,
           'service_account': serviceAccount,
           if (displayName != null) 'display_name': displayName,
           if (description != null) 'description': description,
           if (ttl != null) 'ttl': ttl,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleMigrationCenterDiscoveryClientSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_alloydb_instance`.
const Set<String> _googleAlloydbInstanceSensitive = <String>{};

/// Factory wrapper for `google_alloydb_instance`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleAlloydbInstance extends Data {
  static const String tfType = 'google_alloydb_instance';

  DataGoogleAlloydbInstance({
    required super.localName,
    required TfArg<String> clusterId,
    required TfArg<String> instanceId,
    TfArg<String>? location,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster_id': clusterId,
           'instance_id': instanceId,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleAlloydbInstanceSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `activation_policy` attribute.
  TfRef<String> get activationPolicy =>
      TfRef.attribute<String>(this, 'activation_policy');

  /// Reference to `annotations` attribute.
  TfRef<Map<String, String>> get annotations =>
      TfRef.attribute<Map<String, String>>(this, 'annotations');

  /// Reference to `availability_type` attribute.
  TfRef<String> get availabilityType =>
      TfRef.attribute<String>(this, 'availability_type');

  /// Reference to `client_connection_config` attribute.
  TfRef<List<Map<String, Object?>>> get clientConnectionConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'client_connection_config',
      );

  /// Reference to `cluster` attribute.
  TfRef<String> get cluster => TfRef.attribute<String>(this, 'cluster');

  /// Reference to `connection_pool_config` attribute.
  TfRef<List<Map<String, Object?>>> get connectionPoolConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'connection_pool_config',
      );

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `database_flags` attribute.
  TfRef<Map<String, String>> get databaseFlags =>
      TfRef.attribute<Map<String, String>>(this, 'database_flags');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `effective_annotations` attribute.
  TfRef<Map<String, String>> get effectiveAnnotations =>
      TfRef.attribute<Map<String, String>>(this, 'effective_annotations');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `gce_zone` attribute.
  TfRef<String> get gceZone => TfRef.attribute<String>(this, 'gce_zone');

  /// Reference to `instance_type` attribute.
  TfRef<String> get instanceType =>
      TfRef.attribute<String>(this, 'instance_type');

  /// Reference to `ip_address` attribute.
  TfRef<String> get ipAddress => TfRef.attribute<String>(this, 'ip_address');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `machine_config` attribute.
  TfRef<List<Map<String, Object?>>> get machineConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'machine_config');

  /// Reference to `network_config` attribute.
  TfRef<List<Map<String, Object?>>> get networkConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'network_config');

  /// Reference to `outbound_public_ip_addresses` attribute.
  TfRef<List<String>> get outboundPublicIpAddresses =>
      TfRef.attribute<List<String>>(this, 'outbound_public_ip_addresses');

  /// Reference to `psc_instance_config` attribute.
  TfRef<List<Map<String, Object?>>> get pscInstanceConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'psc_instance_config');

  /// Reference to `public_ip_address` attribute.
  TfRef<String> get publicIpAddress =>
      TfRef.attribute<String>(this, 'public_ip_address');

  /// Reference to `query_insights_config` attribute.
  TfRef<List<Map<String, Object?>>> get queryInsightsConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'query_insights_config',
      );

  /// Reference to `read_pool_config` attribute.
  TfRef<List<Map<String, Object?>>> get readPoolConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'read_pool_config');

  /// Reference to `reconciling` attribute.
  TfRef<bool> get reconciling => TfRef.attribute<bool>(this, 'reconciling');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}

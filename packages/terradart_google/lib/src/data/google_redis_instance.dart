// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_redis_instance`.
const Set<String> _googleRedisInstanceSensitive = <String>{};

/// Factory wrapper for `google_redis_instance`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleRedisInstance extends Data {
  static const String tfType = 'google_redis_instance';

  DataGoogleRedisInstance({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? project,
    TfArg<String>? region,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (project != null) 'project': project,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleRedisInstanceSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `alternative_location_id` attribute.
  TfRef<String> get alternativeLocationId =>
      TfRef.attribute<String>(this, 'alternative_location_id');

  /// Reference to `auth_enabled` attribute.
  TfRef<bool> get authEnabled => TfRef.attribute<bool>(this, 'auth_enabled');

  /// Reference to `auth_string` attribute.
  TfRef<String> get authString => TfRef.attribute<String>(this, 'auth_string');

  /// Reference to `authorized_network` attribute.
  TfRef<String> get authorizedNetwork =>
      TfRef.attribute<String>(this, 'authorized_network');

  /// Reference to `connect_mode` attribute.
  TfRef<String> get connectMode =>
      TfRef.attribute<String>(this, 'connect_mode');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `current_location_id` attribute.
  TfRef<String> get currentLocationId =>
      TfRef.attribute<String>(this, 'current_location_id');

  /// Reference to `customer_managed_key` attribute.
  TfRef<String> get customerManagedKey =>
      TfRef.attribute<String>(this, 'customer_managed_key');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deletion_protection` attribute.
  TfRef<bool> get deletionProtection =>
      TfRef.attribute<bool>(this, 'deletion_protection');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `effective_reserved_ip_range` attribute.
  TfRef<String> get effectiveReservedIpRange =>
      TfRef.attribute<String>(this, 'effective_reserved_ip_range');

  /// Reference to `host` attribute.
  TfRef<String> get host => TfRef.attribute<String>(this, 'host');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location_id` attribute.
  TfRef<String> get locationId => TfRef.attribute<String>(this, 'location_id');

  /// Reference to `maintenance_policy` attribute.
  TfRef<List<Map<String, Object?>>> get maintenancePolicy =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'maintenance_policy');

  /// Reference to `maintenance_schedule` attribute.
  TfRef<List<Map<String, Object?>>> get maintenanceSchedule =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'maintenance_schedule');

  /// Reference to `maintenance_version` attribute.
  TfRef<String> get maintenanceVersion =>
      TfRef.attribute<String>(this, 'maintenance_version');

  /// Reference to `memory_size_gb` attribute.
  TfRef<num> get memorySizeGb => TfRef.attribute<num>(this, 'memory_size_gb');

  /// Reference to `nodes` attribute.
  TfRef<List<Map<String, Object?>>> get nodes =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'nodes');

  /// Reference to `persistence_config` attribute.
  TfRef<List<Map<String, Object?>>> get persistenceConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'persistence_config');

  /// Reference to `persistence_iam_identity` attribute.
  TfRef<String> get persistenceIamIdentity =>
      TfRef.attribute<String>(this, 'persistence_iam_identity');

  /// Reference to `port` attribute.
  TfRef<num> get port => TfRef.attribute<num>(this, 'port');

  /// Reference to `read_endpoint` attribute.
  TfRef<String> get readEndpoint =>
      TfRef.attribute<String>(this, 'read_endpoint');

  /// Reference to `read_endpoint_port` attribute.
  TfRef<num> get readEndpointPort =>
      TfRef.attribute<num>(this, 'read_endpoint_port');

  /// Reference to `read_replicas_mode` attribute.
  TfRef<String> get readReplicasMode =>
      TfRef.attribute<String>(this, 'read_replicas_mode');

  /// Reference to `redis_configs` attribute.
  TfRef<Map<String, String>> get redisConfigs =>
      TfRef.attribute<Map<String, String>>(this, 'redis_configs');

  /// Reference to `redis_version` attribute.
  TfRef<String> get redisVersion =>
      TfRef.attribute<String>(this, 'redis_version');

  /// Reference to `replica_count` attribute.
  TfRef<num> get replicaCount => TfRef.attribute<num>(this, 'replica_count');

  /// Reference to `reserved_ip_range` attribute.
  TfRef<String> get reservedIpRange =>
      TfRef.attribute<String>(this, 'reserved_ip_range');

  /// Reference to `secondary_ip_range` attribute.
  TfRef<String> get secondaryIpRange =>
      TfRef.attribute<String>(this, 'secondary_ip_range');

  /// Reference to `server_ca_certs` attribute.
  TfRef<List<Map<String, Object?>>> get serverCaCerts =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'server_ca_certs');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `tier` attribute.
  TfRef<String> get tier => TfRef.attribute<String>(this, 'tier');

  /// Reference to `transit_encryption_mode` attribute.
  TfRef<String> get transitEncryptionMode =>
      TfRef.attribute<String>(this, 'transit_encryption_mode');
}

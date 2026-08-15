// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_memcache_instance`.
const Set<String> _googleMemcacheInstanceSensitive = <String>{};

/// Factory wrapper for `google_memcache_instance`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleMemcacheInstance extends Data {
  static const String tfType = 'google_memcache_instance';

  DataGoogleMemcacheInstance({
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
  Set<String> get sensitiveFields => _googleMemcacheInstanceSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `authorized_network` attribute.
  TfRef<String> get authorizedNetwork =>
      TfRef.attribute<String>(this, 'authorized_network');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deletion_protection` attribute.
  TfRef<bool> get deletionProtection =>
      TfRef.attribute<bool>(this, 'deletion_protection');

  /// Reference to `discovery_endpoint` attribute.
  TfRef<String> get discoveryEndpoint =>
      TfRef.attribute<String>(this, 'discovery_endpoint');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `maintenance_policy` attribute.
  TfRef<List<Map<String, Object?>>> get maintenancePolicy =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'maintenance_policy');

  /// Reference to `maintenance_schedule` attribute.
  TfRef<List<Map<String, Object?>>> get maintenanceSchedule =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'maintenance_schedule');

  /// Reference to `memcache_full_version` attribute.
  TfRef<String> get memcacheFullVersion =>
      TfRef.attribute<String>(this, 'memcache_full_version');

  /// Reference to `memcache_nodes` attribute.
  TfRef<List<Map<String, Object?>>> get memcacheNodes =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'memcache_nodes');

  /// Reference to `memcache_parameters` attribute.
  TfRef<List<Map<String, Object?>>> get memcacheParameters =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'memcache_parameters');

  /// Reference to `memcache_version` attribute.
  TfRef<String> get memcacheVersion =>
      TfRef.attribute<String>(this, 'memcache_version');

  /// Reference to `node_config` attribute.
  TfRef<List<Map<String, Object?>>> get nodeConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'node_config');

  /// Reference to `node_count` attribute.
  TfRef<num> get nodeCount => TfRef.attribute<num>(this, 'node_count');

  /// Reference to `reserved_ip_range_id` attribute.
  TfRef<List<String>> get reservedIpRangeId =>
      TfRef.attribute<List<String>>(this, 'reserved_ip_range_id');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `zones` attribute.
  TfRef<List<String>> get zones => TfRef.attribute<List<String>>(this, 'zones');
}

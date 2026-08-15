// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_lustre_instance`.
const Set<String> _googleLustreInstanceSensitive = <String>{};

/// Factory wrapper for `google_lustre_instance`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleLustreInstance extends Data {
  static const String tfType = 'google_lustre_instance';

  DataGoogleLustreInstance({
    required super.localName,
    required TfArg<String> instanceId,
    TfArg<String>? project,
    TfArg<String>? zone,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance_id': instanceId,
           if (project != null) 'project': project,
           if (zone != null) 'zone': zone,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleLustreInstanceSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `access_rules_options` attribute.
  TfRef<List<Map<String, Object?>>> get accessRulesOptions =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'access_rules_options');

  /// Reference to `capacity_gib` attribute.
  TfRef<String> get capacityGib =>
      TfRef.attribute<String>(this, 'capacity_gib');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `dynamic_tier_options` attribute.
  TfRef<List<Map<String, Object?>>> get dynamicTierOptions =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'dynamic_tier_options');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `filesystem` attribute.
  TfRef<String> get filesystem => TfRef.attribute<String>(this, 'filesystem');

  /// Reference to `gke_support_enabled` attribute.
  TfRef<bool> get gkeSupportEnabled =>
      TfRef.attribute<bool>(this, 'gke_support_enabled');

  /// Reference to `kms_key` attribute.
  TfRef<String> get kmsKey => TfRef.attribute<String>(this, 'kms_key');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `maintenance_policy` attribute.
  TfRef<List<Map<String, Object?>>> get maintenancePolicy =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'maintenance_policy');

  /// Reference to `mount_point` attribute.
  TfRef<String> get mountPoint => TfRef.attribute<String>(this, 'mount_point');

  /// Reference to `network` attribute.
  TfRef<String> get network => TfRef.attribute<String>(this, 'network');

  /// Reference to `per_unit_storage_throughput` attribute.
  TfRef<String> get perUnitStorageThroughput =>
      TfRef.attribute<String>(this, 'per_unit_storage_throughput');

  /// Reference to `placement_policy` attribute.
  TfRef<String> get placementPolicy =>
      TfRef.attribute<String>(this, 'placement_policy');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `state_reason` attribute.
  TfRef<String> get stateReason =>
      TfRef.attribute<String>(this, 'state_reason');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `upcoming_maintenance_schedule` attribute.
  TfRef<List<Map<String, Object?>>> get upcomingMaintenanceSchedule =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'upcoming_maintenance_schedule',
      );

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}

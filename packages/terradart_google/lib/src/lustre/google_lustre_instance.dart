// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_lustre_instance`.
const Set<String> _googleLustreInstanceSensitive = <String>{};

/// Factory wrapper for `google_lustre_instance`.
///
/// A Managed Lustre instance
///
/// Managed Lustre **instance** — Google-managed Lustre parallel file
/// system capacity.
///
/// **Cost:** Managed Lustre `B384-1FDE-A709` bills provisioned capacity
/// while the instance exists — e.g. Capacity 125-Perf us-central1
/// (Iowa) SKU `517C-E77D-C11A` **$0.145/GiBy·mo** (250/500/1000-Perf and
/// Dynamic-Perf SKUs also listed). Destroy stops capacity charges. TiB-scale
/// minimums make this too expensive for apply-smoke — ships without a
/// quickstart (`tool/example_debt.yaml`).
///
/// Enable `lustre.googleapis.com` via [GoogleProjectService] before apply.
/// [network] is a VPC network self-link / id; [capacityGib] is provisioned
/// size.
final class GoogleLustreInstance extends Resource {
  static const String tfType = 'google_lustre_instance';

  GoogleLustreInstance({
    required super.localName,
    required TfArg<String> instanceId,
    required TfArg<String> location,
    required TfArg<String> filesystem,
    required TfArg<String> capacityGib,
    required TfArg<String> network,
    TfArg<String>? description,
    TfArg<String>? perUnitStorageThroughput,
    TfArg<bool>? gkeSupportEnabled,
    TfArg<String>? kmsKey,
    TfArg<String>? placementPolicy,
    TfArg<Map<String, dynamic>>? accessRulesOptions,
    TfArg<Map<String, dynamic>>? dynamicTierOptions,
    TfArg<Map<String, dynamic>>? maintenancePolicy,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance_id': instanceId,
           'location': location,
           'filesystem': filesystem,
           'capacity_gib': capacityGib,
           'network': network,
           if (description != null) 'description': description,
           if (perUnitStorageThroughput != null)
             'per_unit_storage_throughput': perUnitStorageThroughput,
           if (gkeSupportEnabled != null)
             'gke_support_enabled': gkeSupportEnabled,
           if (kmsKey != null) 'kms_key': kmsKey,
           if (placementPolicy != null) 'placement_policy': placementPolicy,
           if (accessRulesOptions != null)
             'access_rules_options': accessRulesOptions,
           if (dynamicTierOptions != null)
             'dynamic_tier_options': dynamicTierOptions,
           if (maintenancePolicy != null)
             'maintenance_policy': maintenancePolicy,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleLustreInstanceSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `mount_point` attribute.
  TfRef<String> get mountPoint => TfRef.attribute<String>(this, 'mount_point');

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

  /// Reference to `instance_id` / name segment.
  TfRef<String> get instanceIdRef =>
      TfRef.attribute<String>(this, 'instance_id');
}

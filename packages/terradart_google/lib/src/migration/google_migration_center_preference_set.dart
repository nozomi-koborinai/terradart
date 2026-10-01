// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_migration_center_preference_set`.
const Set<String> _googleMigrationCenterPreferenceSetSensitive = <String>{};

/// Terraform `deletion_policy` for Migration Center preference sets.
enum MigrationCenterPreferenceSetDeletionPolicy implements TerraformEnum {
  delete('DELETE'),
  prevent('PREVENT'),
  abandon('ABANDON');

  const MigrationCenterPreferenceSetDeletionPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `virtual_machine_preferences` block of
/// `google_migration_center_preference_set` (derived from provider schema).
@immutable
final class MigrationCenterPreferenceSetVirtualMachinePreferences {
  const MigrationCenterPreferenceSetVirtualMachinePreferences({
    this.commitmentPlan,
    this.sizingOptimizationStrategy,
    this.targetProduct,
    this.computeEnginePreferences,
    this.regionPreferences,
    this.soleTenancyPreferences,
    this.vmwareEnginePreferences,
  });

  final TfArg<String>? commitmentPlan;

  final TfArg<String>? sizingOptimizationStrategy;

  final TfArg<String>? targetProduct;

  final MigrationCenterPreferenceSetComputeEnginePreferences?
  computeEnginePreferences;

  final MigrationCenterPreferenceSetRegionPreferences? regionPreferences;

  final MigrationCenterPreferenceSetSoleTenancyPreferences?
  soleTenancyPreferences;

  final MigrationCenterPreferenceSetVmwareEnginePreferences?
  vmwareEnginePreferences;

  Map<String, Object?> encode() => {
    'commitment_plan': ?commitmentPlan?.toTfJson(),
    'sizing_optimization_strategy': ?sizingOptimizationStrategy?.toTfJson(),
    'target_product': ?targetProduct?.toTfJson(),
    'compute_engine_preferences': ?computeEnginePreferences?.encode(),
    'region_preferences': ?regionPreferences?.encode(),
    'sole_tenancy_preferences': ?soleTenancyPreferences?.encode(),
    'vmware_engine_preferences': ?vmwareEnginePreferences?.encode(),
  };
}

/// Typed helper for the `virtual_machine_preferences.compute_engine_preferences` block of
/// `google_migration_center_preference_set` (derived from provider schema).
@immutable
final class MigrationCenterPreferenceSetComputeEnginePreferences {
  const MigrationCenterPreferenceSetComputeEnginePreferences({
    this.licenseType,
    this.persistentDiskType,
    this.machinePreferences,
  });

  final TfArg<String>? licenseType;

  final TfArg<MigrationCenterPreferenceSetPersistentDiskType>?
  persistentDiskType;

  final MigrationCenterPreferenceSetMachinePreferences? machinePreferences;

  Map<String, Object?> encode() => {
    'license_type': ?licenseType?.toTfJson(),
    'persistent_disk_type': ?persistentDiskType?.toTfJson(),
    'machine_preferences': ?machinePreferences?.encode(),
  };
}

/// `persistent_disk_type` — derived from the provider schema description.
enum MigrationCenterPreferenceSetPersistentDiskType implements TerraformEnum {
  persistentDiskTypeStandard('PERSISTENT_DISK_TYPE_STANDARD'),
  persistentDiskTypeBalanced('PERSISTENT_DISK_TYPE_BALANCED'),
  persistentDiskTypeSsd('PERSISTENT_DISK_TYPE_SSD');

  const MigrationCenterPreferenceSetPersistentDiskType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `virtual_machine_preferences.compute_engine_preferences.machine_preferences` block of
/// `google_migration_center_preference_set` (derived from provider schema).
@immutable
final class MigrationCenterPreferenceSetMachinePreferences {
  const MigrationCenterPreferenceSetMachinePreferences({
    this.allowedMachineSeries,
  });

  final List<MigrationCenterPreferenceSetAllowedMachineSeries>?
  allowedMachineSeries;

  Map<String, Object?> encode() => {
    if (allowedMachineSeries != null)
      'allowed_machine_series': [
        for (final e in allowedMachineSeries!) e.encode(),
      ],
  };
}

/// Typed helper for the `virtual_machine_preferences.compute_engine_preferences.machine_preferences.allowed_machine_series` block of
/// `google_migration_center_preference_set` (derived from provider schema).
@immutable
final class MigrationCenterPreferenceSetAllowedMachineSeries {
  const MigrationCenterPreferenceSetAllowedMachineSeries({this.code});

  final TfArg<String>? code;

  Map<String, Object?> encode() => {'code': ?code?.toTfJson()};
}

/// Typed helper for the `virtual_machine_preferences.region_preferences` block of
/// `google_migration_center_preference_set` (derived from provider schema).
@immutable
final class MigrationCenterPreferenceSetRegionPreferences {
  const MigrationCenterPreferenceSetRegionPreferences({this.preferredRegions});

  final TfArg<List<String>>? preferredRegions;

  Map<String, Object?> encode() => {
    'preferred_regions': ?preferredRegions?.toTfJson(),
  };
}

/// Typed helper for the `virtual_machine_preferences.sole_tenancy_preferences` block of
/// `google_migration_center_preference_set` (derived from provider schema).
@immutable
final class MigrationCenterPreferenceSetSoleTenancyPreferences {
  const MigrationCenterPreferenceSetSoleTenancyPreferences({
    this.commitmentPlan,
    this.cpuOvercommitRatio,
    this.hostMaintenancePolicy,
    this.nodeTypes,
  });

  final TfArg<String>? commitmentPlan;

  final TfArg<num>? cpuOvercommitRatio;

  final TfArg<String>? hostMaintenancePolicy;

  final List<MigrationCenterPreferenceSetNodeTypes>? nodeTypes;

  Map<String, Object?> encode() => {
    'commitment_plan': ?commitmentPlan?.toTfJson(),
    'cpu_overcommit_ratio': ?cpuOvercommitRatio?.toTfJson(),
    'host_maintenance_policy': ?hostMaintenancePolicy?.toTfJson(),
    if (nodeTypes != null)
      'node_types': [for (final e in nodeTypes!) e.encode()],
  };
}

/// Typed helper for the `virtual_machine_preferences.sole_tenancy_preferences.node_types` block of
/// `google_migration_center_preference_set` (derived from provider schema).
@immutable
final class MigrationCenterPreferenceSetNodeTypes {
  const MigrationCenterPreferenceSetNodeTypes({this.nodeName});

  final TfArg<String>? nodeName;

  Map<String, Object?> encode() => {'node_name': ?nodeName?.toTfJson()};
}

/// Typed helper for the `virtual_machine_preferences.vmware_engine_preferences` block of
/// `google_migration_center_preference_set` (derived from provider schema).
@immutable
final class MigrationCenterPreferenceSetVmwareEnginePreferences {
  const MigrationCenterPreferenceSetVmwareEnginePreferences({
    this.commitmentPlan,
    this.cpuOvercommitRatio,
    this.memoryOvercommitRatio,
    this.storageDeduplicationCompressionRatio,
  });

  final TfArg<String>? commitmentPlan;

  final TfArg<num>? cpuOvercommitRatio;

  final TfArg<num>? memoryOvercommitRatio;

  final TfArg<num>? storageDeduplicationCompressionRatio;

  Map<String, Object?> encode() => {
    'commitment_plan': ?commitmentPlan?.toTfJson(),
    'cpu_overcommit_ratio': ?cpuOvercommitRatio?.toTfJson(),
    'memory_overcommit_ratio': ?memoryOvercommitRatio?.toTfJson(),
    'storage_deduplication_compression_ratio':
        ?storageDeduplicationCompressionRatio?.toTfJson(),
  };
}

/// Factory wrapper for `google_migration_center_preference_set`.
///
/// Manages the PreferenceSet resource.
///
/// Migration Center preference set — sizing / target-product assumptions for reports.
///
/// Pair with [GoogleMigrationCenterGroup] via
/// [GoogleMigrationCenterReportConfig] `group_preferenceset_assignments`.
/// Optional `virtual_machine_preferences` nested blocks are omitted from this
/// curated surface; extend the override when a Wave needs typed VM prefs.
final class GoogleMigrationCenterPreferenceSet extends Resource {
  static const String tfType = 'google_migration_center_preference_set';

  GoogleMigrationCenterPreferenceSet(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> preferenceSetId,
    TfArg<String>? displayName,
    TfArg<String>? description,
    TfArg<MigrationCenterPreferenceSetDeletionPolicy>? deletionPolicy,
    MigrationCenterPreferenceSetVirtualMachinePreferences?
    virtualMachinePreferences,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'preference_set_id': preferenceSetId,
           'display_name': ?displayName,
           'description': ?description,
           'deletion_policy': ?deletionPolicy,
           if (virtualMachinePreferences != null)
             'virtual_machine_preferences': TfArg.literal(
               virtualMachinePreferences.encode(),
             ),
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleMigrationCenterPreferenceSetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleMigrationCenterPreferenceSet>`.
  RefTo<GoogleMigrationCenterPreferenceSet> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `preference_set_id` attribute.
  TfRef<String> get preferenceSetId =>
      TfRef.attribute<String>(this, 'preference_set_id');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}

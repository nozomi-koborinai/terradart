// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_migration_center_preference_set`.
const Set<String> _googleMigrationCenterPreferenceSetSensitive = <String>{};

/// Terraform `deletion_policy` for Migration Center preference sets.
extension type const MigrationCenterPreferenceSetDeletionPolicy._(
  TfArg<String> _
) implements TfArg<String> {
  MigrationCenterPreferenceSetDeletionPolicy.variable(String name)
    : this._(TfArg.variable(name));
  MigrationCenterPreferenceSetDeletionPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const MigrationCenterPreferenceSetDeletionPolicy.arg(TfArg<String> arg)
    : this._(arg);

  static const delete = MigrationCenterPreferenceSetDeletionPolicy._(
    TfArgLiteral('DELETE'),
  );
  static const prevent = MigrationCenterPreferenceSetDeletionPolicy._(
    TfArgLiteral('PREVENT'),
  );
  static const abandon = MigrationCenterPreferenceSetDeletionPolicy._(
    TfArgLiteral('ABANDON'),
  );

  static const List<MigrationCenterPreferenceSetDeletionPolicy> values = [
    delete,
    prevent,
    abandon,
  ];
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

  final MigrationCenterPreferenceSetCommitmentPlan? commitmentPlan;

  final MigrationCenterPreferenceSetSizingOptimizationStrategy?
  sizingOptimizationStrategy;

  final MigrationCenterPreferenceSetTargetProduct? targetProduct;

  final MigrationCenterPreferenceSetComputeEnginePreferences?
  computeEnginePreferences;

  final MigrationCenterPreferenceSetRegionPreferences? regionPreferences;

  final MigrationCenterPreferenceSetSoleTenancyPreferences?
  soleTenancyPreferences;

  final MigrationCenterPreferenceSetVmwareEnginePreferences?
  vmwareEnginePreferences;

  @internal
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

/// `commitment_plan` — derived from the provider schema description.
extension type const MigrationCenterPreferenceSetCommitmentPlan._(
  TfArg<String> _
) implements TfArg<String> {
  MigrationCenterPreferenceSetCommitmentPlan.variable(String name)
    : this._(TfArg.variable(name));
  MigrationCenterPreferenceSetCommitmentPlan.expression(String template)
    : this._(TfArg.expression(template));
  const MigrationCenterPreferenceSetCommitmentPlan.arg(TfArg<String> arg)
    : this._(arg);

  static const commitmentPlanUnspecified =
      MigrationCenterPreferenceSetCommitmentPlan._(
        TfArgLiteral('COMMITMENT_PLAN_UNSPECIFIED'),
      );
  static const commitmentPlanNone =
      MigrationCenterPreferenceSetCommitmentPlan._(
        TfArgLiteral('COMMITMENT_PLAN_NONE'),
      );
  static const commitmentPlanOneYear =
      MigrationCenterPreferenceSetCommitmentPlan._(
        TfArgLiteral('COMMITMENT_PLAN_ONE_YEAR'),
      );
  static const commitmentPlanThreeYears =
      MigrationCenterPreferenceSetCommitmentPlan._(
        TfArgLiteral('COMMITMENT_PLAN_THREE_YEARS'),
      );

  static const List<MigrationCenterPreferenceSetCommitmentPlan> values = [
    commitmentPlanUnspecified,
    commitmentPlanNone,
    commitmentPlanOneYear,
    commitmentPlanThreeYears,
  ];
}

/// `sizing_optimization_strategy` — derived from the provider schema description.
extension type const MigrationCenterPreferenceSetSizingOptimizationStrategy._(
  TfArg<String> _
) implements TfArg<String> {
  MigrationCenterPreferenceSetSizingOptimizationStrategy.variable(String name)
    : this._(TfArg.variable(name));
  MigrationCenterPreferenceSetSizingOptimizationStrategy.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const MigrationCenterPreferenceSetSizingOptimizationStrategy.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const sizingOptimizationStrategyUnspecified =
      MigrationCenterPreferenceSetSizingOptimizationStrategy._(
        TfArgLiteral('SIZING_OPTIMIZATION_STRATEGY_UNSPECIFIED'),
      );
  static const sizingOptimizationStrategySameAsSource =
      MigrationCenterPreferenceSetSizingOptimizationStrategy._(
        TfArgLiteral('SIZING_OPTIMIZATION_STRATEGY_SAME_AS_SOURCE'),
      );
  static const sizingOptimizationStrategyModerate =
      MigrationCenterPreferenceSetSizingOptimizationStrategy._(
        TfArgLiteral('SIZING_OPTIMIZATION_STRATEGY_MODERATE'),
      );
  static const sizingOptimizationStrategyAggressive =
      MigrationCenterPreferenceSetSizingOptimizationStrategy._(
        TfArgLiteral('SIZING_OPTIMIZATION_STRATEGY_AGGRESSIVE'),
      );

  static const List<MigrationCenterPreferenceSetSizingOptimizationStrategy>
  values = [
    sizingOptimizationStrategyUnspecified,
    sizingOptimizationStrategySameAsSource,
    sizingOptimizationStrategyModerate,
    sizingOptimizationStrategyAggressive,
  ];
}

/// `target_product` — derived from the provider schema description.
extension type const MigrationCenterPreferenceSetTargetProduct._(
  TfArg<String> _
) implements TfArg<String> {
  MigrationCenterPreferenceSetTargetProduct.variable(String name)
    : this._(TfArg.variable(name));
  MigrationCenterPreferenceSetTargetProduct.expression(String template)
    : this._(TfArg.expression(template));
  const MigrationCenterPreferenceSetTargetProduct.arg(TfArg<String> arg)
    : this._(arg);

  static const computeMigrationTargetProductUnspecified =
      MigrationCenterPreferenceSetTargetProduct._(
        TfArgLiteral('COMPUTE_MIGRATION_TARGET_PRODUCT_UNSPECIFIED'),
      );
  static const computeMigrationTargetProductComputeEngine =
      MigrationCenterPreferenceSetTargetProduct._(
        TfArgLiteral('COMPUTE_MIGRATION_TARGET_PRODUCT_COMPUTE_ENGINE'),
      );
  static const computeMigrationTargetProductVmwareEngine =
      MigrationCenterPreferenceSetTargetProduct._(
        TfArgLiteral('COMPUTE_MIGRATION_TARGET_PRODUCT_VMWARE_ENGINE'),
      );
  static const computeMigrationTargetProductSoleTenancy =
      MigrationCenterPreferenceSetTargetProduct._(
        TfArgLiteral('COMPUTE_MIGRATION_TARGET_PRODUCT_SOLE_TENANCY'),
      );

  static const List<MigrationCenterPreferenceSetTargetProduct> values = [
    computeMigrationTargetProductUnspecified,
    computeMigrationTargetProductComputeEngine,
    computeMigrationTargetProductVmwareEngine,
    computeMigrationTargetProductSoleTenancy,
  ];
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

  final MigrationCenterPreferenceSetLicenseType? licenseType;

  final MigrationCenterPreferenceSetPersistentDiskType? persistentDiskType;

  final MigrationCenterPreferenceSetMachinePreferences? machinePreferences;

  @internal
  Map<String, Object?> encode() => {
    'license_type': ?licenseType?.toTfJson(),
    'persistent_disk_type': ?persistentDiskType?.toTfJson(),
    'machine_preferences': ?machinePreferences?.encode(),
  };
}

/// `license_type` — derived from the provider schema description.
extension type const MigrationCenterPreferenceSetLicenseType._(TfArg<String> _)
    implements TfArg<String> {
  MigrationCenterPreferenceSetLicenseType.variable(String name)
    : this._(TfArg.variable(name));
  MigrationCenterPreferenceSetLicenseType.expression(String template)
    : this._(TfArg.expression(template));
  const MigrationCenterPreferenceSetLicenseType.arg(TfArg<String> arg)
    : this._(arg);

  static const licenseTypeUnspecified =
      MigrationCenterPreferenceSetLicenseType._(
        TfArgLiteral('LICENSE_TYPE_UNSPECIFIED'),
      );
  static const licenseTypeDefault = MigrationCenterPreferenceSetLicenseType._(
    TfArgLiteral('LICENSE_TYPE_DEFAULT'),
  );
  static const licenseTypeBringYourOwnLicense =
      MigrationCenterPreferenceSetLicenseType._(
        TfArgLiteral('LICENSE_TYPE_BRING_YOUR_OWN_LICENSE'),
      );

  static const List<MigrationCenterPreferenceSetLicenseType> values = [
    licenseTypeUnspecified,
    licenseTypeDefault,
    licenseTypeBringYourOwnLicense,
  ];
}

/// `persistent_disk_type` — derived from the provider schema description.
extension type const MigrationCenterPreferenceSetPersistentDiskType._(
  TfArg<String> _
) implements TfArg<String> {
  MigrationCenterPreferenceSetPersistentDiskType.variable(String name)
    : this._(TfArg.variable(name));
  MigrationCenterPreferenceSetPersistentDiskType.expression(String template)
    : this._(TfArg.expression(template));
  const MigrationCenterPreferenceSetPersistentDiskType.arg(TfArg<String> arg)
    : this._(arg);

  static const persistentDiskTypeStandard =
      MigrationCenterPreferenceSetPersistentDiskType._(
        TfArgLiteral('PERSISTENT_DISK_TYPE_STANDARD'),
      );
  static const persistentDiskTypeBalanced =
      MigrationCenterPreferenceSetPersistentDiskType._(
        TfArgLiteral('PERSISTENT_DISK_TYPE_BALANCED'),
      );
  static const persistentDiskTypeSsd =
      MigrationCenterPreferenceSetPersistentDiskType._(
        TfArgLiteral('PERSISTENT_DISK_TYPE_SSD'),
      );

  static const List<MigrationCenterPreferenceSetPersistentDiskType> values = [
    persistentDiskTypeStandard,
    persistentDiskTypeBalanced,
    persistentDiskTypeSsd,
  ];
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

  @internal
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

  @internal
  Map<String, Object?> encode() => {'code': ?code?.toTfJson()};
}

/// Typed helper for the `virtual_machine_preferences.region_preferences` block of
/// `google_migration_center_preference_set` (derived from provider schema).
@immutable
final class MigrationCenterPreferenceSetRegionPreferences {
  const MigrationCenterPreferenceSetRegionPreferences({this.preferredRegions});

  final TfArg<List<String>>? preferredRegions;

  @internal
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

  final MigrationCenterPreferenceSetSoleTenancyPreferencesCommitmentPlan?
  commitmentPlan;

  final TfArg<num>? cpuOvercommitRatio;

  final MigrationCenterPreferenceSetHostMaintenancePolicy?
  hostMaintenancePolicy;

  final List<MigrationCenterPreferenceSetNodeTypes>? nodeTypes;

  @internal
  Map<String, Object?> encode() => {
    'commitment_plan': ?commitmentPlan?.toTfJson(),
    'cpu_overcommit_ratio': ?cpuOvercommitRatio?.toTfJson(),
    'host_maintenance_policy': ?hostMaintenancePolicy?.toTfJson(),
    if (nodeTypes != null)
      'node_types': [for (final e in nodeTypes!) e.encode()],
  };
}

/// `commitment_plan` — derived from the provider schema description.
extension type const MigrationCenterPreferenceSetSoleTenancyPreferencesCommitmentPlan._(
  TfArg<String> _
) implements TfArg<String> {
  MigrationCenterPreferenceSetSoleTenancyPreferencesCommitmentPlan.variable(
    String name,
  ) : this._(TfArg.variable(name));
  MigrationCenterPreferenceSetSoleTenancyPreferencesCommitmentPlan.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const MigrationCenterPreferenceSetSoleTenancyPreferencesCommitmentPlan.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const commitmentPlanUnspecified =
      MigrationCenterPreferenceSetSoleTenancyPreferencesCommitmentPlan._(
        TfArgLiteral('COMMITMENT_PLAN_UNSPECIFIED'),
      );
  static const onDemand =
      MigrationCenterPreferenceSetSoleTenancyPreferencesCommitmentPlan._(
        TfArgLiteral('ON_DEMAND'),
      );
  static const commitment1Year =
      MigrationCenterPreferenceSetSoleTenancyPreferencesCommitmentPlan._(
        TfArgLiteral('COMMITMENT_1_YEAR'),
      );
  static const commitment3Year =
      MigrationCenterPreferenceSetSoleTenancyPreferencesCommitmentPlan._(
        TfArgLiteral('COMMITMENT_3_YEAR'),
      );

  static const List<
    MigrationCenterPreferenceSetSoleTenancyPreferencesCommitmentPlan
  >
  values = [
    commitmentPlanUnspecified,
    onDemand,
    commitment1Year,
    commitment3Year,
  ];
}

/// `host_maintenance_policy` — derived from the provider schema description.
extension type const MigrationCenterPreferenceSetHostMaintenancePolicy._(
  TfArg<String> _
) implements TfArg<String> {
  MigrationCenterPreferenceSetHostMaintenancePolicy.variable(String name)
    : this._(TfArg.variable(name));
  MigrationCenterPreferenceSetHostMaintenancePolicy.expression(String template)
    : this._(TfArg.expression(template));
  const MigrationCenterPreferenceSetHostMaintenancePolicy.arg(TfArg<String> arg)
    : this._(arg);

  static const hostMaintenancePolicyUnspecified =
      MigrationCenterPreferenceSetHostMaintenancePolicy._(
        TfArgLiteral('HOST_MAINTENANCE_POLICY_UNSPECIFIED'),
      );
  static const hostMaintenancePolicyDefault =
      MigrationCenterPreferenceSetHostMaintenancePolicy._(
        TfArgLiteral('HOST_MAINTENANCE_POLICY_DEFAULT'),
      );
  static const hostMaintenancePolicyRestartInPlace =
      MigrationCenterPreferenceSetHostMaintenancePolicy._(
        TfArgLiteral('HOST_MAINTENANCE_POLICY_RESTART_IN_PLACE'),
      );
  static const hostMaintenancePolicyMigrateWithinNodeGroup =
      MigrationCenterPreferenceSetHostMaintenancePolicy._(
        TfArgLiteral('HOST_MAINTENANCE_POLICY_MIGRATE_WITHIN_NODE_GROUP'),
      );

  static const List<MigrationCenterPreferenceSetHostMaintenancePolicy> values =
      [
        hostMaintenancePolicyUnspecified,
        hostMaintenancePolicyDefault,
        hostMaintenancePolicyRestartInPlace,
        hostMaintenancePolicyMigrateWithinNodeGroup,
      ];
}

/// Typed helper for the `virtual_machine_preferences.sole_tenancy_preferences.node_types` block of
/// `google_migration_center_preference_set` (derived from provider schema).
@immutable
final class MigrationCenterPreferenceSetNodeTypes {
  const MigrationCenterPreferenceSetNodeTypes({this.nodeName});

  final TfArg<String>? nodeName;

  @internal
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

  final MigrationCenterPreferenceSetVmwareEnginePreferencesCommitmentPlan?
  commitmentPlan;

  final TfArg<num>? cpuOvercommitRatio;

  final TfArg<num>? memoryOvercommitRatio;

  final TfArg<num>? storageDeduplicationCompressionRatio;

  @internal
  Map<String, Object?> encode() => {
    'commitment_plan': ?commitmentPlan?.toTfJson(),
    'cpu_overcommit_ratio': ?cpuOvercommitRatio?.toTfJson(),
    'memory_overcommit_ratio': ?memoryOvercommitRatio?.toTfJson(),
    'storage_deduplication_compression_ratio':
        ?storageDeduplicationCompressionRatio?.toTfJson(),
  };
}

/// `commitment_plan` — derived from the provider schema description.
extension type const MigrationCenterPreferenceSetVmwareEnginePreferencesCommitmentPlan._(
  TfArg<String> _
) implements TfArg<String> {
  MigrationCenterPreferenceSetVmwareEnginePreferencesCommitmentPlan.variable(
    String name,
  ) : this._(TfArg.variable(name));
  MigrationCenterPreferenceSetVmwareEnginePreferencesCommitmentPlan.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const MigrationCenterPreferenceSetVmwareEnginePreferencesCommitmentPlan.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const commitmentPlanUnspecified =
      MigrationCenterPreferenceSetVmwareEnginePreferencesCommitmentPlan._(
        TfArgLiteral('COMMITMENT_PLAN_UNSPECIFIED'),
      );
  static const onDemand =
      MigrationCenterPreferenceSetVmwareEnginePreferencesCommitmentPlan._(
        TfArgLiteral('ON_DEMAND'),
      );
  static const commitment1YearMonthlyPayments =
      MigrationCenterPreferenceSetVmwareEnginePreferencesCommitmentPlan._(
        TfArgLiteral('COMMITMENT_1_YEAR_MONTHLY_PAYMENTS'),
      );
  static const commitment3YearMonthlyPayments =
      MigrationCenterPreferenceSetVmwareEnginePreferencesCommitmentPlan._(
        TfArgLiteral('COMMITMENT_3_YEAR_MONTHLY_PAYMENTS'),
      );
  static const commitment1YearUpfrontPayment =
      MigrationCenterPreferenceSetVmwareEnginePreferencesCommitmentPlan._(
        TfArgLiteral('COMMITMENT_1_YEAR_UPFRONT_PAYMENT'),
      );
  static const commitment3YearUpfrontPayment =
      MigrationCenterPreferenceSetVmwareEnginePreferencesCommitmentPlan._(
        TfArgLiteral('COMMITMENT_3_YEAR_UPFRONT_PAYMENT'),
      );

  static const List<
    MigrationCenterPreferenceSetVmwareEnginePreferencesCommitmentPlan
  >
  values = [
    commitmentPlanUnspecified,
    onDemand,
    commitment1YearMonthlyPayments,
    commitment3YearMonthlyPayments,
    commitment1YearUpfrontPayment,
    commitment3YearUpfrontPayment,
  ];
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
    MigrationCenterPreferenceSetDeletionPolicy? deletionPolicy,
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

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_gke_backup_restore_plan`.
const Set<String> _googleGkeBackupRestorePlanSensitive = <String>{};

/// Typed helper for the `restore_config` block of
/// `google_gke_backup_restore_plan` (derived from provider schema).
@immutable
final class GkeBackupRestorePlanRestoreConfig {
  const GkeBackupRestorePlanRestoreConfig({
    required this.namespaces,
    this.clusterResourceConflictPolicy,
    this.namespacedResourceRestoreMode,
    this.volumeDataRestorePolicy,
    this.clusterResourceRestoreScope,
    this.restoreOrder,
    this.transformationRules,
    this.volumeDataRestorePolicyBindings,
  });

  final GkeBackupRestorePlanRestoreConfigNamespaces namespaces;

  final TfArg<GkeBackupRestorePlanRestoreConfigClusterResourceConflictPolicy>?
  clusterResourceConflictPolicy;

  final TfArg<GkeBackupRestorePlanRestoreConfigNamespacedResourceRestoreMode>?
  namespacedResourceRestoreMode;

  final TfArg<GkeBackupRestorePlanRestoreConfigVolumeDataRestorePolicy>?
  volumeDataRestorePolicy;

  final GkeBackupRestorePlanRestoreConfigClusterResourceRestoreScope?
  clusterResourceRestoreScope;

  final GkeBackupRestorePlanRestoreConfigRestoreOrder? restoreOrder;

  final List<GkeBackupRestorePlanRestoreConfigTransformationRules>?
  transformationRules;

  final List<GkeBackupRestorePlanRestoreConfigVolumeDataRestorePolicyBindings>?
  volumeDataRestorePolicyBindings;

  Map<String, Object?> encode() => {
    ...namespaces.encode(),
    'cluster_resource_conflict_policy': ?clusterResourceConflictPolicy
        ?.toTfJson(),
    'namespaced_resource_restore_mode': ?namespacedResourceRestoreMode
        ?.toTfJson(),
    'volume_data_restore_policy': ?volumeDataRestorePolicy?.toTfJson(),
    'cluster_resource_restore_scope': ?clusterResourceRestoreScope?.encode(),
    'restore_order': ?restoreOrder?.encode(),
    if (transformationRules != null)
      'transformation_rules': [
        for (final e in transformationRules!) e.encode(),
      ],
    if (volumeDataRestorePolicyBindings != null)
      'volume_data_restore_policy_bindings': [
        for (final e in volumeDataRestorePolicyBindings!) e.encode(),
      ],
  };
}

/// Exactly one of `all_namespaces`, `excluded_namespaces`, `selected_namespaces`, `selected_applications`, `no_namespaces` on the `restore_config` block of `google_gke_backup_restore_plan`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.allNamespaces(...)`.
sealed class GkeBackupRestorePlanRestoreConfigNamespaces {
  const GkeBackupRestorePlanRestoreConfigNamespaces();

  /// Sets `all_namespaces`.
  const factory GkeBackupRestorePlanRestoreConfigNamespaces.allNamespaces(
    TfArg<bool> allNamespaces,
  ) = GkeBackupRestorePlanRestoreConfigNamespacesAllNamespaces;

  /// Sets `excluded_namespaces`.
  const factory GkeBackupRestorePlanRestoreConfigNamespaces.excludedNamespaces(
    GkeBackupRestorePlanRestoreConfigExcludedNamespaces excludedNamespaces,
  ) = GkeBackupRestorePlanRestoreConfigNamespacesExcludedNamespaces;

  /// Sets `selected_namespaces`.
  const factory GkeBackupRestorePlanRestoreConfigNamespaces.selectedNamespaces(
    GkeBackupRestorePlanRestoreConfigSelectedNamespaces selectedNamespaces,
  ) = GkeBackupRestorePlanRestoreConfigNamespacesSelectedNamespaces;

  /// Sets `selected_applications`.
  const factory GkeBackupRestorePlanRestoreConfigNamespaces.selectedApplications(
    GkeBackupRestorePlanRestoreConfigSelectedApplications selectedApplications,
  ) = GkeBackupRestorePlanRestoreConfigNamespacesSelectedApplications;

  /// Sets `no_namespaces`.
  const factory GkeBackupRestorePlanRestoreConfigNamespaces.noNamespaces(
    TfArg<bool> noNamespaces,
  ) = GkeBackupRestorePlanRestoreConfigNamespacesNoNamespaces;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [GkeBackupRestorePlanRestoreConfigNamespaces.allNamespaces] choice: sets `all_namespaces`.
final class GkeBackupRestorePlanRestoreConfigNamespacesAllNamespaces
    extends GkeBackupRestorePlanRestoreConfigNamespaces {
  const GkeBackupRestorePlanRestoreConfigNamespacesAllNamespaces(
    this.allNamespaces,
  );

  final TfArg<bool> allNamespaces;

  @override
  String get blockKey => 'all_namespaces';

  @override
  Map<String, Object?> encode() => {'all_namespaces': allNamespaces.toTfJson()};
}

/// The [GkeBackupRestorePlanRestoreConfigNamespaces.excludedNamespaces] choice: sets `excluded_namespaces`.
final class GkeBackupRestorePlanRestoreConfigNamespacesExcludedNamespaces
    extends GkeBackupRestorePlanRestoreConfigNamespaces {
  const GkeBackupRestorePlanRestoreConfigNamespacesExcludedNamespaces(
    this.excludedNamespaces,
  );

  final GkeBackupRestorePlanRestoreConfigExcludedNamespaces excludedNamespaces;

  @override
  String get blockKey => 'excluded_namespaces';

  @override
  Map<String, Object?> encode() => {
    'excluded_namespaces': excludedNamespaces.encode(),
  };
}

/// The [GkeBackupRestorePlanRestoreConfigNamespaces.selectedNamespaces] choice: sets `selected_namespaces`.
final class GkeBackupRestorePlanRestoreConfigNamespacesSelectedNamespaces
    extends GkeBackupRestorePlanRestoreConfigNamespaces {
  const GkeBackupRestorePlanRestoreConfigNamespacesSelectedNamespaces(
    this.selectedNamespaces,
  );

  final GkeBackupRestorePlanRestoreConfigSelectedNamespaces selectedNamespaces;

  @override
  String get blockKey => 'selected_namespaces';

  @override
  Map<String, Object?> encode() => {
    'selected_namespaces': selectedNamespaces.encode(),
  };
}

/// The [GkeBackupRestorePlanRestoreConfigNamespaces.selectedApplications] choice: sets `selected_applications`.
final class GkeBackupRestorePlanRestoreConfigNamespacesSelectedApplications
    extends GkeBackupRestorePlanRestoreConfigNamespaces {
  const GkeBackupRestorePlanRestoreConfigNamespacesSelectedApplications(
    this.selectedApplications,
  );

  final GkeBackupRestorePlanRestoreConfigSelectedApplications
  selectedApplications;

  @override
  String get blockKey => 'selected_applications';

  @override
  Map<String, Object?> encode() => {
    'selected_applications': selectedApplications.encode(),
  };
}

/// The [GkeBackupRestorePlanRestoreConfigNamespaces.noNamespaces] choice: sets `no_namespaces`.
final class GkeBackupRestorePlanRestoreConfigNamespacesNoNamespaces
    extends GkeBackupRestorePlanRestoreConfigNamespaces {
  const GkeBackupRestorePlanRestoreConfigNamespacesNoNamespaces(
    this.noNamespaces,
  );

  final TfArg<bool> noNamespaces;

  @override
  String get blockKey => 'no_namespaces';

  @override
  Map<String, Object?> encode() => {'no_namespaces': noNamespaces.toTfJson()};
}

/// `cluster_resource_conflict_policy` — derived from the provider schema description.
enum GkeBackupRestorePlanRestoreConfigClusterResourceConflictPolicy
    implements TerraformEnum {
  useExistingVersion('USE_EXISTING_VERSION'),
  useBackupVersion('USE_BACKUP_VERSION');

  const GkeBackupRestorePlanRestoreConfigClusterResourceConflictPolicy(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `namespaced_resource_restore_mode` — derived from the provider schema description.
enum GkeBackupRestorePlanRestoreConfigNamespacedResourceRestoreMode
    implements TerraformEnum {
  deleteAndRestore('DELETE_AND_RESTORE'),
  failOnConflict('FAIL_ON_CONFLICT'),
  mergeSkipOnConflict('MERGE_SKIP_ON_CONFLICT'),
  mergeReplaceVolumeOnConflict('MERGE_REPLACE_VOLUME_ON_CONFLICT'),
  mergeReplaceOnConflict('MERGE_REPLACE_ON_CONFLICT');

  const GkeBackupRestorePlanRestoreConfigNamespacedResourceRestoreMode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `volume_data_restore_policy` — derived from the provider schema description.
enum GkeBackupRestorePlanRestoreConfigVolumeDataRestorePolicy
    implements TerraformEnum {
  restoreVolumeDataFromBackup('RESTORE_VOLUME_DATA_FROM_BACKUP'),
  reuseVolumeHandleFromBackup('REUSE_VOLUME_HANDLE_FROM_BACKUP'),
  noVolumeDataRestoration('NO_VOLUME_DATA_RESTORATION');

  const GkeBackupRestorePlanRestoreConfigVolumeDataRestorePolicy(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Exactly one of `all_group_kinds`, `excluded_group_kinds`, `selected_group_kinds`, `no_group_kinds` on the `restore_config.cluster_resource_restore_scope` block of `google_gke_backup_restore_plan`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.allGroupKinds(...)`.
sealed class GkeBackupRestorePlanRestoreConfigClusterResourceRestoreScope {
  const GkeBackupRestorePlanRestoreConfigClusterResourceRestoreScope();

  /// Sets `all_group_kinds`.
  const factory GkeBackupRestorePlanRestoreConfigClusterResourceRestoreScope.allGroupKinds(
    TfArg<bool> allGroupKinds,
  ) = GkeBackupRestorePlanRestoreConfigClusterResourceRestoreScopeAllGroupKinds;

  /// Sets `excluded_group_kinds`.
  const factory GkeBackupRestorePlanRestoreConfigClusterResourceRestoreScope.excludedGroupKinds(
    List<
      GkeBackupRestorePlanRestoreConfigClusterResourceRestoreScopeExcludedGroupKinds
    >
    excludedGroupKinds,
  ) = GkeBackupRestorePlanRestoreConfigClusterResourceRestoreScopeExcludedGroupKindsChoice;

  /// Sets `selected_group_kinds`.
  const factory GkeBackupRestorePlanRestoreConfigClusterResourceRestoreScope.selectedGroupKinds(
    List<
      GkeBackupRestorePlanRestoreConfigClusterResourceRestoreScopeSelectedGroupKinds
    >
    selectedGroupKinds,
  ) = GkeBackupRestorePlanRestoreConfigClusterResourceRestoreScopeSelectedGroupKindsChoice;

  /// Sets `no_group_kinds`.
  const factory GkeBackupRestorePlanRestoreConfigClusterResourceRestoreScope.noGroupKinds(
    TfArg<bool> noGroupKinds,
  ) = GkeBackupRestorePlanRestoreConfigClusterResourceRestoreScopeNoGroupKinds;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [GkeBackupRestorePlanRestoreConfigClusterResourceRestoreScope.allGroupKinds] choice: sets `all_group_kinds`.
final class GkeBackupRestorePlanRestoreConfigClusterResourceRestoreScopeAllGroupKinds
    extends GkeBackupRestorePlanRestoreConfigClusterResourceRestoreScope {
  const GkeBackupRestorePlanRestoreConfigClusterResourceRestoreScopeAllGroupKinds(
    this.allGroupKinds,
  );

  final TfArg<bool> allGroupKinds;

  @override
  String get blockKey => 'all_group_kinds';

  @override
  Map<String, Object?> encode() => {
    'all_group_kinds': allGroupKinds.toTfJson(),
  };
}

/// The [GkeBackupRestorePlanRestoreConfigClusterResourceRestoreScope.excludedGroupKinds] choice: sets `excluded_group_kinds`.
final class GkeBackupRestorePlanRestoreConfigClusterResourceRestoreScopeExcludedGroupKindsChoice
    extends GkeBackupRestorePlanRestoreConfigClusterResourceRestoreScope {
  const GkeBackupRestorePlanRestoreConfigClusterResourceRestoreScopeExcludedGroupKindsChoice(
    this.excludedGroupKinds,
  );

  final List<
    GkeBackupRestorePlanRestoreConfigClusterResourceRestoreScopeExcludedGroupKinds
  >
  excludedGroupKinds;

  @override
  String get blockKey => 'excluded_group_kinds';

  @override
  Map<String, Object?> encode() => {
    'excluded_group_kinds': [for (final e in excludedGroupKinds) e.encode()],
  };
}

/// The [GkeBackupRestorePlanRestoreConfigClusterResourceRestoreScope.selectedGroupKinds] choice: sets `selected_group_kinds`.
final class GkeBackupRestorePlanRestoreConfigClusterResourceRestoreScopeSelectedGroupKindsChoice
    extends GkeBackupRestorePlanRestoreConfigClusterResourceRestoreScope {
  const GkeBackupRestorePlanRestoreConfigClusterResourceRestoreScopeSelectedGroupKindsChoice(
    this.selectedGroupKinds,
  );

  final List<
    GkeBackupRestorePlanRestoreConfigClusterResourceRestoreScopeSelectedGroupKinds
  >
  selectedGroupKinds;

  @override
  String get blockKey => 'selected_group_kinds';

  @override
  Map<String, Object?> encode() => {
    'selected_group_kinds': [for (final e in selectedGroupKinds) e.encode()],
  };
}

/// The [GkeBackupRestorePlanRestoreConfigClusterResourceRestoreScope.noGroupKinds] choice: sets `no_group_kinds`.
final class GkeBackupRestorePlanRestoreConfigClusterResourceRestoreScopeNoGroupKinds
    extends GkeBackupRestorePlanRestoreConfigClusterResourceRestoreScope {
  const GkeBackupRestorePlanRestoreConfigClusterResourceRestoreScopeNoGroupKinds(
    this.noGroupKinds,
  );

  final TfArg<bool> noGroupKinds;

  @override
  String get blockKey => 'no_group_kinds';

  @override
  Map<String, Object?> encode() => {'no_group_kinds': noGroupKinds.toTfJson()};
}

/// Typed helper for the `restore_config.cluster_resource_restore_scope.excluded_group_kinds` block of
/// `google_gke_backup_restore_plan` (derived from provider schema).
@immutable
final class GkeBackupRestorePlanRestoreConfigClusterResourceRestoreScopeExcludedGroupKinds {
  const GkeBackupRestorePlanRestoreConfigClusterResourceRestoreScopeExcludedGroupKinds({
    this.resourceGroup,
    this.resourceKind,
  });

  final TfArg<String>? resourceGroup;

  final TfArg<String>? resourceKind;

  Map<String, Object?> encode() => {
    'resource_group': ?resourceGroup?.toTfJson(),
    'resource_kind': ?resourceKind?.toTfJson(),
  };
}

/// Typed helper for the `restore_config.cluster_resource_restore_scope.selected_group_kinds` block of
/// `google_gke_backup_restore_plan` (derived from provider schema).
@immutable
final class GkeBackupRestorePlanRestoreConfigClusterResourceRestoreScopeSelectedGroupKinds {
  const GkeBackupRestorePlanRestoreConfigClusterResourceRestoreScopeSelectedGroupKinds({
    this.resourceGroup,
    this.resourceKind,
  });

  final TfArg<String>? resourceGroup;

  final TfArg<String>? resourceKind;

  Map<String, Object?> encode() => {
    'resource_group': ?resourceGroup?.toTfJson(),
    'resource_kind': ?resourceKind?.toTfJson(),
  };
}

/// Typed helper for the `restore_config.excluded_namespaces` block of
/// `google_gke_backup_restore_plan` (derived from provider schema).
@immutable
final class GkeBackupRestorePlanRestoreConfigExcludedNamespaces {
  const GkeBackupRestorePlanRestoreConfigExcludedNamespaces({
    required this.namespaces,
  });

  final TfArg<List<Object?>> namespaces;

  Map<String, Object?> encode() => {'namespaces': namespaces.toTfJson()};
}

/// Typed helper for the `restore_config.restore_order` block of
/// `google_gke_backup_restore_plan` (derived from provider schema).
@immutable
final class GkeBackupRestorePlanRestoreConfigRestoreOrder {
  const GkeBackupRestorePlanRestoreConfigRestoreOrder({
    required this.groupKindDependencies,
  });

  final List<GkeBackupRestorePlanRestoreConfigRestoreOrderGroupKindDependencies>
  groupKindDependencies;

  Map<String, Object?> encode() => {
    'group_kind_dependencies': [
      for (final e in groupKindDependencies) e.encode(),
    ],
  };
}

/// Typed helper for the `restore_config.restore_order.group_kind_dependencies` block of
/// `google_gke_backup_restore_plan` (derived from provider schema).
@immutable
final class GkeBackupRestorePlanRestoreConfigRestoreOrderGroupKindDependencies {
  const GkeBackupRestorePlanRestoreConfigRestoreOrderGroupKindDependencies({
    required this.requiring,
    required this.satisfying,
  });

  final GkeBackupRestorePlanRestoreConfigRestoreOrderGroupKindDependenciesRequiring
  requiring;

  final GkeBackupRestorePlanRestoreConfigRestoreOrderGroupKindDependenciesSatisfying
  satisfying;

  Map<String, Object?> encode() => {
    'requiring': requiring.encode(),
    'satisfying': satisfying.encode(),
  };
}

/// Typed helper for the `restore_config.restore_order.group_kind_dependencies.requiring` block of
/// `google_gke_backup_restore_plan` (derived from provider schema).
@immutable
final class GkeBackupRestorePlanRestoreConfigRestoreOrderGroupKindDependenciesRequiring {
  const GkeBackupRestorePlanRestoreConfigRestoreOrderGroupKindDependenciesRequiring({
    this.resourceGroup,
    this.resourceKind,
  });

  final TfArg<String>? resourceGroup;

  final TfArg<String>? resourceKind;

  Map<String, Object?> encode() => {
    'resource_group': ?resourceGroup?.toTfJson(),
    'resource_kind': ?resourceKind?.toTfJson(),
  };
}

/// Typed helper for the `restore_config.restore_order.group_kind_dependencies.satisfying` block of
/// `google_gke_backup_restore_plan` (derived from provider schema).
@immutable
final class GkeBackupRestorePlanRestoreConfigRestoreOrderGroupKindDependenciesSatisfying {
  const GkeBackupRestorePlanRestoreConfigRestoreOrderGroupKindDependenciesSatisfying({
    this.resourceGroup,
    this.resourceKind,
  });

  final TfArg<String>? resourceGroup;

  final TfArg<String>? resourceKind;

  Map<String, Object?> encode() => {
    'resource_group': ?resourceGroup?.toTfJson(),
    'resource_kind': ?resourceKind?.toTfJson(),
  };
}

/// Typed helper for the `restore_config.selected_applications` block of
/// `google_gke_backup_restore_plan` (derived from provider schema).
@immutable
final class GkeBackupRestorePlanRestoreConfigSelectedApplications {
  const GkeBackupRestorePlanRestoreConfigSelectedApplications({
    required this.namespacedNames,
  });

  final List<
    GkeBackupRestorePlanRestoreConfigSelectedApplicationsNamespacedNames
  >
  namespacedNames;

  Map<String, Object?> encode() => {
    'namespaced_names': [for (final e in namespacedNames) e.encode()],
  };
}

/// Typed helper for the `restore_config.selected_applications.namespaced_names` block of
/// `google_gke_backup_restore_plan` (derived from provider schema).
@immutable
final class GkeBackupRestorePlanRestoreConfigSelectedApplicationsNamespacedNames {
  const GkeBackupRestorePlanRestoreConfigSelectedApplicationsNamespacedNames({
    required this.name,
    required this.namespace,
  });

  final TfArg<String> name;

  final TfArg<String> namespace;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'namespace': namespace.toTfJson(),
  };
}

/// Typed helper for the `restore_config.selected_namespaces` block of
/// `google_gke_backup_restore_plan` (derived from provider schema).
@immutable
final class GkeBackupRestorePlanRestoreConfigSelectedNamespaces {
  const GkeBackupRestorePlanRestoreConfigSelectedNamespaces({
    required this.namespaces,
  });

  final TfArg<List<Object?>> namespaces;

  Map<String, Object?> encode() => {'namespaces': namespaces.toTfJson()};
}

/// Typed helper for the `restore_config.transformation_rules` block of
/// `google_gke_backup_restore_plan` (derived from provider schema).
@immutable
final class GkeBackupRestorePlanRestoreConfigTransformationRules {
  const GkeBackupRestorePlanRestoreConfigTransformationRules({
    this.description,
    required this.fieldActions,
    this.resourceFilter,
  });

  final TfArg<String>? description;

  final List<GkeBackupRestorePlanRestoreConfigTransformationRulesFieldActions>
  fieldActions;

  final GkeBackupRestorePlanRestoreConfigTransformationRulesResourceFilter?
  resourceFilter;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'field_actions': [for (final e in fieldActions) e.encode()],
    'resource_filter': ?resourceFilter?.encode(),
  };
}

/// Typed helper for the `restore_config.transformation_rules.field_actions` block of
/// `google_gke_backup_restore_plan` (derived from provider schema).
@immutable
final class GkeBackupRestorePlanRestoreConfigTransformationRulesFieldActions {
  const GkeBackupRestorePlanRestoreConfigTransformationRulesFieldActions({
    this.fromPath,
    required this.op,
    this.path,
    this.value,
  });

  final TfArg<String>? fromPath;

  final TfArg<
    GkeBackupRestorePlanRestoreConfigTransformationRulesFieldActionsOp
  >
  op;

  final TfArg<String>? path;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'from_path': ?fromPath?.toTfJson(),
    'op': op.toTfJson(),
    'path': ?path?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// `op` — derived from the provider schema description.
enum GkeBackupRestorePlanRestoreConfigTransformationRulesFieldActionsOp
    implements TerraformEnum {
  remove('REMOVE'),
  move('MOVE'),
  copy('COPY'),
  add('ADD'),
  test('TEST'),
  replace('REPLACE');

  const GkeBackupRestorePlanRestoreConfigTransformationRulesFieldActionsOp(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `restore_config.transformation_rules.resource_filter` block of
/// `google_gke_backup_restore_plan` (derived from provider schema).
@immutable
final class GkeBackupRestorePlanRestoreConfigTransformationRulesResourceFilter {
  const GkeBackupRestorePlanRestoreConfigTransformationRulesResourceFilter({
    this.jsonPath,
    this.namespaces,
    this.groupKinds,
  });

  final TfArg<String>? jsonPath;

  final TfArg<List<Object?>>? namespaces;

  final List<
    GkeBackupRestorePlanRestoreConfigTransformationRulesResourceFilterGroupKinds
  >?
  groupKinds;

  Map<String, Object?> encode() => {
    'json_path': ?jsonPath?.toTfJson(),
    'namespaces': ?namespaces?.toTfJson(),
    if (groupKinds != null)
      'group_kinds': [for (final e in groupKinds!) e.encode()],
  };
}

/// Typed helper for the `restore_config.transformation_rules.resource_filter.group_kinds` block of
/// `google_gke_backup_restore_plan` (derived from provider schema).
@immutable
final class GkeBackupRestorePlanRestoreConfigTransformationRulesResourceFilterGroupKinds {
  const GkeBackupRestorePlanRestoreConfigTransformationRulesResourceFilterGroupKinds({
    this.resourceGroup,
    this.resourceKind,
  });

  final TfArg<String>? resourceGroup;

  final TfArg<String>? resourceKind;

  Map<String, Object?> encode() => {
    'resource_group': ?resourceGroup?.toTfJson(),
    'resource_kind': ?resourceKind?.toTfJson(),
  };
}

/// Typed helper for the `restore_config.volume_data_restore_policy_bindings` block of
/// `google_gke_backup_restore_plan` (derived from provider schema).
@immutable
final class GkeBackupRestorePlanRestoreConfigVolumeDataRestorePolicyBindings {
  const GkeBackupRestorePlanRestoreConfigVolumeDataRestorePolicyBindings({
    required this.policy,
    required this.volumeType,
  });

  final TfArg<
    GkeBackupRestorePlanRestoreConfigVolumeDataRestorePolicyBindingsPolicy
  >
  policy;

  final TfArg<String> volumeType;

  Map<String, Object?> encode() => {
    'policy': policy.toTfJson(),
    'volume_type': volumeType.toTfJson(),
  };
}

/// `policy` — derived from the provider schema description.
enum GkeBackupRestorePlanRestoreConfigVolumeDataRestorePolicyBindingsPolicy
    implements TerraformEnum {
  restoreVolumeDataFromBackup('RESTORE_VOLUME_DATA_FROM_BACKUP'),
  reuseVolumeHandleFromBackup('REUSE_VOLUME_HANDLE_FROM_BACKUP'),
  noVolumeDataRestoration('NO_VOLUME_DATA_RESTORATION');

  const GkeBackupRestorePlanRestoreConfigVolumeDataRestorePolicyBindingsPolicy(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_gke_backup_restore_plan`.
///
/// Represents a Restore Plan instance.
///
/// Defines a **GKE restore plan** — restores workloads from a
/// [GoogleGkeBackupBackupPlan] into a [GoogleContainerCluster].
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - `name`: restore plan ID (unique per project/location).
/// - `location`: GCP region (e.g. `'asia-northeast1'`).
/// - `backupPlan`: source plan — `TfArg.ref(backupPlan.nameRef)`.
/// - `cluster`: target cluster — `TfArg.ref(cluster.id)`.
final class GoogleGkeBackupRestorePlan extends Resource {
  static const String tfType = 'google_gke_backup_restore_plan';

  GoogleGkeBackupRestorePlan({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    required TfArg<String> backupPlan,
    required TfArg<String> cluster,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    required GkeBackupRestorePlanRestoreConfig restoreConfig,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'backup_plan': backupPlan,
           'cluster': cluster,
           'description': ?description,
           'labels': ?labels,
           'restore_config': TfArg.literal(restoreConfig.encode()),
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleGkeBackupRestorePlanSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleGkeBackupRestorePlan>`.
  RefTo<GoogleGkeBackupRestorePlan> get ref => RefTo.of(this);

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

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

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}

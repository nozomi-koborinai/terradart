// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../container/google_container_cluster.dart' show GoogleContainerCluster;
import '../gke_backup/google_gke_backup_backup_plan.dart'
    show GoogleGkeBackupBackupPlan;

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

  final GkeBackupRestorePlanNamespaces namespaces;

  final TfArg<GkeBackupRestorePlanClusterResourceConflictPolicy>?
  clusterResourceConflictPolicy;

  final TfArg<GkeBackupRestorePlanNamespacedResourceRestoreMode>?
  namespacedResourceRestoreMode;

  final TfArg<GkeBackupRestorePlanVolumeDataRestorePolicy>?
  volumeDataRestorePolicy;

  final GkeBackupRestorePlanClusterResourceRestoreScope?
  clusterResourceRestoreScope;

  final GkeBackupRestorePlanRestoreOrder? restoreOrder;

  final List<GkeBackupRestorePlanTransformationRules>? transformationRules;

  final List<GkeBackupRestorePlanVolumeDataRestorePolicyBindings>?
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
sealed class GkeBackupRestorePlanNamespaces {
  const GkeBackupRestorePlanNamespaces();

  /// Sets `all_namespaces`.
  const factory GkeBackupRestorePlanNamespaces.allNamespaces(
    TfArg<bool> allNamespaces,
  ) = GkeBackupRestorePlanAllNamespaces;

  /// Sets `excluded_namespaces`.
  const factory GkeBackupRestorePlanNamespaces.excludedNamespaces(
    GkeBackupRestorePlanExcludedNamespaces excludedNamespaces,
  ) = GkeBackupRestorePlanExcludedNamespacesChoice;

  /// Sets `selected_namespaces`.
  const factory GkeBackupRestorePlanNamespaces.selectedNamespaces(
    GkeBackupRestorePlanSelectedNamespaces selectedNamespaces,
  ) = GkeBackupRestorePlanSelectedNamespacesChoice;

  /// Sets `selected_applications`.
  const factory GkeBackupRestorePlanNamespaces.selectedApplications(
    GkeBackupRestorePlanSelectedApplications selectedApplications,
  ) = GkeBackupRestorePlanNamespacesSelectedApplications;

  /// Sets `no_namespaces`.
  const factory GkeBackupRestorePlanNamespaces.noNamespaces(
    TfArg<bool> noNamespaces,
  ) = GkeBackupRestorePlanNoNamespaces;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [GkeBackupRestorePlanNamespaces.allNamespaces] choice: sets `all_namespaces`.
final class GkeBackupRestorePlanAllNamespaces
    extends GkeBackupRestorePlanNamespaces {
  const GkeBackupRestorePlanAllNamespaces(this.allNamespaces);

  final TfArg<bool> allNamespaces;

  @override
  String get blockKey => 'all_namespaces';

  @override
  Map<String, Object?> encode() => {'all_namespaces': allNamespaces.toTfJson()};
}

/// The [GkeBackupRestorePlanNamespaces.excludedNamespaces] choice: sets `excluded_namespaces`.
final class GkeBackupRestorePlanExcludedNamespacesChoice
    extends GkeBackupRestorePlanNamespaces {
  const GkeBackupRestorePlanExcludedNamespacesChoice(this.excludedNamespaces);

  final GkeBackupRestorePlanExcludedNamespaces excludedNamespaces;

  @override
  String get blockKey => 'excluded_namespaces';

  @override
  Map<String, Object?> encode() => {
    'excluded_namespaces': excludedNamespaces.encode(),
  };
}

/// The [GkeBackupRestorePlanNamespaces.selectedNamespaces] choice: sets `selected_namespaces`.
final class GkeBackupRestorePlanSelectedNamespacesChoice
    extends GkeBackupRestorePlanNamespaces {
  const GkeBackupRestorePlanSelectedNamespacesChoice(this.selectedNamespaces);

  final GkeBackupRestorePlanSelectedNamespaces selectedNamespaces;

  @override
  String get blockKey => 'selected_namespaces';

  @override
  Map<String, Object?> encode() => {
    'selected_namespaces': selectedNamespaces.encode(),
  };
}

/// The [GkeBackupRestorePlanNamespaces.selectedApplications] choice: sets `selected_applications`.
final class GkeBackupRestorePlanNamespacesSelectedApplications
    extends GkeBackupRestorePlanNamespaces {
  const GkeBackupRestorePlanNamespacesSelectedApplications(
    this.selectedApplications,
  );

  final GkeBackupRestorePlanSelectedApplications selectedApplications;

  @override
  String get blockKey => 'selected_applications';

  @override
  Map<String, Object?> encode() => {
    'selected_applications': selectedApplications.encode(),
  };
}

/// The [GkeBackupRestorePlanNamespaces.noNamespaces] choice: sets `no_namespaces`.
final class GkeBackupRestorePlanNoNamespaces
    extends GkeBackupRestorePlanNamespaces {
  const GkeBackupRestorePlanNoNamespaces(this.noNamespaces);

  final TfArg<bool> noNamespaces;

  @override
  String get blockKey => 'no_namespaces';

  @override
  Map<String, Object?> encode() => {'no_namespaces': noNamespaces.toTfJson()};
}

/// `cluster_resource_conflict_policy` — derived from the provider schema description.
enum GkeBackupRestorePlanClusterResourceConflictPolicy
    implements TerraformEnum {
  useExistingVersion('USE_EXISTING_VERSION'),
  useBackupVersion('USE_BACKUP_VERSION');

  const GkeBackupRestorePlanClusterResourceConflictPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// `namespaced_resource_restore_mode` — derived from the provider schema description.
enum GkeBackupRestorePlanNamespacedResourceRestoreMode
    implements TerraformEnum {
  deleteAndRestore('DELETE_AND_RESTORE'),
  failOnConflict('FAIL_ON_CONFLICT'),
  mergeSkipOnConflict('MERGE_SKIP_ON_CONFLICT'),
  mergeReplaceVolumeOnConflict('MERGE_REPLACE_VOLUME_ON_CONFLICT'),
  mergeReplaceOnConflict('MERGE_REPLACE_ON_CONFLICT');

  const GkeBackupRestorePlanNamespacedResourceRestoreMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// `volume_data_restore_policy` — derived from the provider schema description.
enum GkeBackupRestorePlanVolumeDataRestorePolicy implements TerraformEnum {
  restoreVolumeDataFromBackup('RESTORE_VOLUME_DATA_FROM_BACKUP'),
  reuseVolumeHandleFromBackup('REUSE_VOLUME_HANDLE_FROM_BACKUP'),
  noVolumeDataRestoration('NO_VOLUME_DATA_RESTORATION');

  const GkeBackupRestorePlanVolumeDataRestorePolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Exactly one of `all_group_kinds`, `excluded_group_kinds`, `selected_group_kinds`, `no_group_kinds` on the `restore_config.cluster_resource_restore_scope` block of `google_gke_backup_restore_plan`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.allGroupKinds(...)`.
sealed class GkeBackupRestorePlanClusterResourceRestoreScope {
  const GkeBackupRestorePlanClusterResourceRestoreScope();

  /// Sets `all_group_kinds`.
  const factory GkeBackupRestorePlanClusterResourceRestoreScope.allGroupKinds(
    TfArg<bool> allGroupKinds,
  ) = GkeBackupRestorePlanClusterResourceRestoreScopeAllGroupKinds;

  /// Sets `excluded_group_kinds`.
  const factory GkeBackupRestorePlanClusterResourceRestoreScope.excludedGroupKinds(
    List<GkeBackupRestorePlanExcludedGroupKinds> excludedGroupKinds,
  ) = GkeBackupRestorePlanClusterResourceRestoreScopeExcludedGroupKinds;

  /// Sets `selected_group_kinds`.
  const factory GkeBackupRestorePlanClusterResourceRestoreScope.selectedGroupKinds(
    List<GkeBackupRestorePlanSelectedGroupKinds> selectedGroupKinds,
  ) = GkeBackupRestorePlanClusterResourceRestoreScopeSelectedGroupKinds;

  /// Sets `no_group_kinds`.
  const factory GkeBackupRestorePlanClusterResourceRestoreScope.noGroupKinds(
    TfArg<bool> noGroupKinds,
  ) = GkeBackupRestorePlanClusterResourceRestoreScopeNoGroupKinds;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [GkeBackupRestorePlanClusterResourceRestoreScope.allGroupKinds] choice: sets `all_group_kinds`.
final class GkeBackupRestorePlanClusterResourceRestoreScopeAllGroupKinds
    extends GkeBackupRestorePlanClusterResourceRestoreScope {
  const GkeBackupRestorePlanClusterResourceRestoreScopeAllGroupKinds(
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

/// The [GkeBackupRestorePlanClusterResourceRestoreScope.excludedGroupKinds] choice: sets `excluded_group_kinds`.
final class GkeBackupRestorePlanClusterResourceRestoreScopeExcludedGroupKinds
    extends GkeBackupRestorePlanClusterResourceRestoreScope {
  const GkeBackupRestorePlanClusterResourceRestoreScopeExcludedGroupKinds(
    this.excludedGroupKinds,
  );

  final List<GkeBackupRestorePlanExcludedGroupKinds> excludedGroupKinds;

  @override
  String get blockKey => 'excluded_group_kinds';

  @override
  Map<String, Object?> encode() => {
    'excluded_group_kinds': [for (final e in excludedGroupKinds) e.encode()],
  };
}

/// The [GkeBackupRestorePlanClusterResourceRestoreScope.selectedGroupKinds] choice: sets `selected_group_kinds`.
final class GkeBackupRestorePlanClusterResourceRestoreScopeSelectedGroupKinds
    extends GkeBackupRestorePlanClusterResourceRestoreScope {
  const GkeBackupRestorePlanClusterResourceRestoreScopeSelectedGroupKinds(
    this.selectedGroupKinds,
  );

  final List<GkeBackupRestorePlanSelectedGroupKinds> selectedGroupKinds;

  @override
  String get blockKey => 'selected_group_kinds';

  @override
  Map<String, Object?> encode() => {
    'selected_group_kinds': [for (final e in selectedGroupKinds) e.encode()],
  };
}

/// The [GkeBackupRestorePlanClusterResourceRestoreScope.noGroupKinds] choice: sets `no_group_kinds`.
final class GkeBackupRestorePlanClusterResourceRestoreScopeNoGroupKinds
    extends GkeBackupRestorePlanClusterResourceRestoreScope {
  const GkeBackupRestorePlanClusterResourceRestoreScopeNoGroupKinds(
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
final class GkeBackupRestorePlanExcludedGroupKinds {
  const GkeBackupRestorePlanExcludedGroupKinds({
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
final class GkeBackupRestorePlanSelectedGroupKinds {
  const GkeBackupRestorePlanSelectedGroupKinds({
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
final class GkeBackupRestorePlanExcludedNamespaces {
  const GkeBackupRestorePlanExcludedNamespaces({required this.namespaces});

  final TfArg<List<String>> namespaces;

  Map<String, Object?> encode() => {'namespaces': namespaces.toTfJson()};
}

/// Typed helper for the `restore_config.restore_order` block of
/// `google_gke_backup_restore_plan` (derived from provider schema).
@immutable
final class GkeBackupRestorePlanRestoreOrder {
  const GkeBackupRestorePlanRestoreOrder({required this.groupKindDependencies});

  final List<GkeBackupRestorePlanGroupKindDependencies> groupKindDependencies;

  Map<String, Object?> encode() => {
    'group_kind_dependencies': [
      for (final e in groupKindDependencies) e.encode(),
    ],
  };
}

/// Typed helper for the `restore_config.restore_order.group_kind_dependencies` block of
/// `google_gke_backup_restore_plan` (derived from provider schema).
@immutable
final class GkeBackupRestorePlanGroupKindDependencies {
  const GkeBackupRestorePlanGroupKindDependencies({
    required this.requiring,
    required this.satisfying,
  });

  final GkeBackupRestorePlanRequiring requiring;

  final GkeBackupRestorePlanSatisfying satisfying;

  Map<String, Object?> encode() => {
    'requiring': requiring.encode(),
    'satisfying': satisfying.encode(),
  };
}

/// Typed helper for the `restore_config.restore_order.group_kind_dependencies.requiring` block of
/// `google_gke_backup_restore_plan` (derived from provider schema).
@immutable
final class GkeBackupRestorePlanRequiring {
  const GkeBackupRestorePlanRequiring({this.resourceGroup, this.resourceKind});

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
final class GkeBackupRestorePlanSatisfying {
  const GkeBackupRestorePlanSatisfying({this.resourceGroup, this.resourceKind});

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
final class GkeBackupRestorePlanSelectedApplications {
  const GkeBackupRestorePlanSelectedApplications({
    required this.namespacedNames,
  });

  final List<GkeBackupRestorePlanNamespacedNames> namespacedNames;

  Map<String, Object?> encode() => {
    'namespaced_names': [for (final e in namespacedNames) e.encode()],
  };
}

/// Typed helper for the `restore_config.selected_applications.namespaced_names` block of
/// `google_gke_backup_restore_plan` (derived from provider schema).
@immutable
final class GkeBackupRestorePlanNamespacedNames {
  const GkeBackupRestorePlanNamespacedNames({
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
final class GkeBackupRestorePlanSelectedNamespaces {
  const GkeBackupRestorePlanSelectedNamespaces({required this.namespaces});

  final TfArg<List<String>> namespaces;

  Map<String, Object?> encode() => {'namespaces': namespaces.toTfJson()};
}

/// Typed helper for the `restore_config.transformation_rules` block of
/// `google_gke_backup_restore_plan` (derived from provider schema).
@immutable
final class GkeBackupRestorePlanTransformationRules {
  const GkeBackupRestorePlanTransformationRules({
    this.description,
    required this.fieldActions,
    this.resourceFilter,
  });

  final TfArg<String>? description;

  final List<GkeBackupRestorePlanFieldActions> fieldActions;

  final GkeBackupRestorePlanResourceFilter? resourceFilter;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'field_actions': [for (final e in fieldActions) e.encode()],
    'resource_filter': ?resourceFilter?.encode(),
  };
}

/// Typed helper for the `restore_config.transformation_rules.field_actions` block of
/// `google_gke_backup_restore_plan` (derived from provider schema).
@immutable
final class GkeBackupRestorePlanFieldActions {
  const GkeBackupRestorePlanFieldActions({
    this.fromPath,
    required this.op,
    this.path,
    this.value,
  });

  final TfArg<String>? fromPath;

  final TfArg<GkeBackupRestorePlanOp> op;

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
enum GkeBackupRestorePlanOp implements TerraformEnum {
  remove('REMOVE'),
  move('MOVE'),
  copy('COPY'),
  add('ADD'),
  test('TEST'),
  replace('REPLACE');

  const GkeBackupRestorePlanOp(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `restore_config.transformation_rules.resource_filter` block of
/// `google_gke_backup_restore_plan` (derived from provider schema).
@immutable
final class GkeBackupRestorePlanResourceFilter {
  const GkeBackupRestorePlanResourceFilter({
    this.jsonPath,
    this.namespaces,
    this.groupKinds,
  });

  final TfArg<String>? jsonPath;

  final TfArg<List<String>>? namespaces;

  final List<GkeBackupRestorePlanGroupKinds>? groupKinds;

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
final class GkeBackupRestorePlanGroupKinds {
  const GkeBackupRestorePlanGroupKinds({this.resourceGroup, this.resourceKind});

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
final class GkeBackupRestorePlanVolumeDataRestorePolicyBindings {
  const GkeBackupRestorePlanVolumeDataRestorePolicyBindings({
    required this.policy,
    required this.volumeType,
  });

  final TfArg<GkeBackupRestorePlanPolicy> policy;

  final TfArg<String> volumeType;

  Map<String, Object?> encode() => {
    'policy': policy.toTfJson(),
    'volume_type': volumeType.toTfJson(),
  };
}

/// `policy` — derived from the provider schema description.
enum GkeBackupRestorePlanPolicy implements TerraformEnum {
  restoreVolumeDataFromBackup('RESTORE_VOLUME_DATA_FROM_BACKUP'),
  reuseVolumeHandleFromBackup('REUSE_VOLUME_HANDLE_FROM_BACKUP'),
  noVolumeDataRestoration('NO_VOLUME_DATA_RESTORATION');

  const GkeBackupRestorePlanPolicy(this.terraformValue);
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
    required RefTo<GoogleGkeBackupBackupPlan> backupPlan,
    required RefTo<GoogleContainerCluster> cluster,
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
           'backup_plan': backupPlan.encodeAs('id'),
           'cluster': cluster.encodeAs('id'),
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

  /// Reference to `backup_plan` attribute.
  TfRef<String> get backupPlanRef =>
      TfRef.attribute<String>(this, 'backup_plan');

  /// Reference to `cluster` attribute.
  TfRef<String> get clusterRef => TfRef.attribute<String>(this, 'cluster');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}

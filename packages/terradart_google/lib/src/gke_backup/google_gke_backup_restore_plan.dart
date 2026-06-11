// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_gke_backup_restore_plan`.
const Set<String> _googleGkeBackupRestorePlanSensitive = <String>{};

enum GkeBackupRestorePlanClusterResourceConflictPolicy
    implements TerraformEnum {
  useExistingVersion('USE_EXISTING_VERSION'),
  useBackupVersion('USE_BACKUP_VERSION');

  const GkeBackupRestorePlanClusterResourceConflictPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

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

enum GkeBackupRestorePlanVolumeDataRestorePolicy implements TerraformEnum {
  restoreVolumeDataFromBackup('RESTORE_VOLUME_DATA_FROM_BACKUP'),
  reuseVolumeHandleFromBackup('REUSE_VOLUME_HANDLE_FROM_BACKUP'),
  noVolumeDataRestoration('NO_VOLUME_DATA_RESTORATION');

  const GkeBackupRestorePlanVolumeDataRestorePolicy(this.terraformValue);
  @override
  final String terraformValue;
}

enum GkeBackupRestorePlanTransformationFieldActionOp implements TerraformEnum {
  remove('REMOVE'),
  move('MOVE'),
  copy('COPY'),
  add('ADD'),
  test('TEST'),
  replace('REPLACE');

  const GkeBackupRestorePlanTransformationFieldActionOp(this.terraformValue);
  @override
  final String terraformValue;
}

@immutable
class GkeBackupRestorePlanTransformationFieldAction {
  const GkeBackupRestorePlanTransformationFieldAction({this.op});

  final GkeBackupRestorePlanTransformationFieldActionOp? op;

  Map<String, Object?> toArgMap() => {if (op != null) 'op': op!.terraformValue};
}

@immutable
class GkeBackupRestorePlanTransformationRule {
  const GkeBackupRestorePlanTransformationRule({this.fieldActions});

  final List<GkeBackupRestorePlanTransformationFieldAction>? fieldActions;

  Map<String, Object?> toArgMap() => {
    if (fieldActions != null)
      'field_actions': fieldActions!.map((a) => a.toArgMap()).toList(),
  };
}

@immutable
class GkeBackupRestorePlanVolumeDataRestorePolicyBinding {
  const GkeBackupRestorePlanVolumeDataRestorePolicyBinding({this.policy});

  final GkeBackupRestorePlanVolumeDataRestorePolicy? policy;

  Map<String, Object?> toArgMap() => {
    if (policy != null) 'policy': policy!.terraformValue,
  };
}

@immutable
class GkeBackupRestorePlanRestoreConfig {
  const GkeBackupRestorePlanRestoreConfig({
    this.allNamespaces,
    this.clusterResourceConflictPolicy,
    this.namespacedResourceRestoreMode,
    this.volumeDataRestorePolicy,
    this.transformationRules,
    this.volumeDataRestorePolicyBindings,
  });

  final TfArg<bool>? allNamespaces;
  final GkeBackupRestorePlanClusterResourceConflictPolicy?
  clusterResourceConflictPolicy;
  final GkeBackupRestorePlanNamespacedResourceRestoreMode?
  namespacedResourceRestoreMode;
  final GkeBackupRestorePlanVolumeDataRestorePolicy? volumeDataRestorePolicy;
  final List<GkeBackupRestorePlanTransformationRule>? transformationRules;
  final List<GkeBackupRestorePlanVolumeDataRestorePolicyBinding>?
  volumeDataRestorePolicyBindings;

  Map<String, Object?> encode() => {
    if (allNamespaces != null) 'all_namespaces': allNamespaces!.toTfJson(),
    if (clusterResourceConflictPolicy != null)
      'cluster_resource_conflict_policy':
          clusterResourceConflictPolicy!.terraformValue,
    if (namespacedResourceRestoreMode != null)
      'namespaced_resource_restore_mode':
          namespacedResourceRestoreMode!.terraformValue,
    if (volumeDataRestorePolicy != null)
      'volume_data_restore_policy': volumeDataRestorePolicy!.terraformValue,
    if (transformationRules != null)
      'transformation_rules': transformationRules!
          .map((r) => r.toArgMap())
          .toList(),
    if (volumeDataRestorePolicyBindings != null)
      'volume_data_restore_policy_bindings': volumeDataRestorePolicyBindings!
          .map((b) => b.toArgMap())
          .toList(),
  };
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
    GkeBackupRestorePlanRestoreConfig? restoreConfig,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'backup_plan': backupPlan,
           'cluster': cluster,
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
           if (restoreConfig != null)
             'restore_config': TfArg.literal([restoreConfig.encode()]),
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleGkeBackupRestorePlanSensitive;

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

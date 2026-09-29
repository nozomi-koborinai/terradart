// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_gke_backup_backup_plan`.
const Set<String> _googleGkeBackupBackupPlanSensitive = <String>{};

enum GkeBackupBackupPlanDayOfWeek implements TerraformEnum {
  monday('MONDAY'),
  tuesday('TUESDAY'),
  wednesday('WEDNESDAY'),
  thursday('THURSDAY'),
  friday('FRIDAY'),
  saturday('SATURDAY'),
  sunday('SUNDAY');

  const GkeBackupBackupPlanDayOfWeek(this.terraformValue);
  @override
  final String terraformValue;
}

@immutable
class GkeBackupBackupPlanExclusionWindowDaysOfWeek {
  const GkeBackupBackupPlanExclusionWindowDaysOfWeek({this.daysOfWeek});

  final List<GkeBackupBackupPlanDayOfWeek>? daysOfWeek;

  Map<String, Object?> toArgMap() => {
    if (daysOfWeek != null)
      'days_of_week': daysOfWeek!.map((d) => d.terraformValue).toList(),
  };
}

@immutable
class GkeBackupBackupPlanExclusionWindow {
  const GkeBackupBackupPlanExclusionWindow({this.daysOfWeek});

  final GkeBackupBackupPlanExclusionWindowDaysOfWeek? daysOfWeek;

  Map<String, Object?> toArgMap() => {
    if (daysOfWeek != null) 'days_of_week': [daysOfWeek!.toArgMap()],
  };
}

@immutable
class GkeBackupBackupPlanRpoConfig {
  const GkeBackupBackupPlanRpoConfig({this.exclusionWindows});

  final List<GkeBackupBackupPlanExclusionWindow>? exclusionWindows;

  Map<String, Object?> toArgMap() => {
    if (exclusionWindows != null)
      'exclusion_windows': exclusionWindows!.map((w) => w.toArgMap()).toList(),
  };
}

@immutable
class GkeBackupBackupPlanBackupSchedule {
  const GkeBackupBackupPlanBackupSchedule({this.cronSchedule, this.rpoConfig});

  final TfArg<String>? cronSchedule;
  final GkeBackupBackupPlanRpoConfig? rpoConfig;

  Map<String, Object?> encode() => {
    if (cronSchedule != null) 'cron_schedule': cronSchedule!.toTfJson(),
    if (rpoConfig != null) 'rpo_config': [rpoConfig!.toArgMap()],
  };
}

/// Typed helper for the `backup_config` block of
/// `google_gke_backup_backup_plan` (derived from provider schema).
@immutable
final class GkeBackupBackupPlanBackupConfig {
  const GkeBackupBackupPlanBackupConfig({
    required this.allNamespacesOrSelectedNamespacesOrSelectedApplicationsOrSelectedNamespaceLabels,
    this.includeSecrets,
    this.includeVolumeData,
    this.permissiveMode,
    this.encryptionKey,
  });

  final GkeBackupBackupPlanBackupConfigAllNamespacesOrSelectedNamespacesOrSelectedApplicationsOrSelectedNamespaceLabels
  allNamespacesOrSelectedNamespacesOrSelectedApplicationsOrSelectedNamespaceLabels;

  final TfArg<bool>? includeSecrets;

  final TfArg<bool>? includeVolumeData;

  final TfArg<bool>? permissiveMode;

  final GkeBackupBackupPlanBackupConfigEncryptionKey? encryptionKey;

  Map<String, Object?> encode() => {
    ...allNamespacesOrSelectedNamespacesOrSelectedApplicationsOrSelectedNamespaceLabels
        .encode(),
    if (includeSecrets != null) 'include_secrets': includeSecrets!.toTfJson(),
    if (includeVolumeData != null)
      'include_volume_data': includeVolumeData!.toTfJson(),
    if (permissiveMode != null) 'permissive_mode': permissiveMode!.toTfJson(),
    if (encryptionKey != null) 'encryption_key': encryptionKey!.encode(),
  };
}

/// Exactly one of `all_namespaces`, `selected_namespaces`, `selected_applications`, `selected_namespace_labels` on the `backup_config` block of `google_gke_backup_backup_plan`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.allNamespaces(...)`.
sealed class GkeBackupBackupPlanBackupConfigAllNamespacesOrSelectedNamespacesOrSelectedApplicationsOrSelectedNamespaceLabels {
  const GkeBackupBackupPlanBackupConfigAllNamespacesOrSelectedNamespacesOrSelectedApplicationsOrSelectedNamespaceLabels();

  /// Sets `all_namespaces`.
  const factory GkeBackupBackupPlanBackupConfigAllNamespacesOrSelectedNamespacesOrSelectedApplicationsOrSelectedNamespaceLabels.allNamespaces(
    TfArg<bool> allNamespaces,
  ) = GkeBackupBackupPlanBackupConfigAllNamespacesOrSelectedNamespacesOrSelectedApplicationsOrSelectedNamespaceLabelsAllNamespaces;

  /// Sets `selected_namespaces`.
  const factory GkeBackupBackupPlanBackupConfigAllNamespacesOrSelectedNamespacesOrSelectedApplicationsOrSelectedNamespaceLabels.selectedNamespaces(
    GkeBackupBackupPlanBackupConfigSelectedNamespaces selectedNamespaces,
  ) = GkeBackupBackupPlanBackupConfigAllNamespacesOrSelectedNamespacesOrSelectedApplicationsOrSelectedNamespaceLabelsSelectedNamespaces;

  /// Sets `selected_applications`.
  const factory GkeBackupBackupPlanBackupConfigAllNamespacesOrSelectedNamespacesOrSelectedApplicationsOrSelectedNamespaceLabels.selectedApplications(
    GkeBackupBackupPlanBackupConfigSelectedApplications selectedApplications,
  ) = GkeBackupBackupPlanBackupConfigAllNamespacesOrSelectedNamespacesOrSelectedApplicationsOrSelectedNamespaceLabelsSelectedApplications;

  /// Sets `selected_namespace_labels`.
  const factory GkeBackupBackupPlanBackupConfigAllNamespacesOrSelectedNamespacesOrSelectedApplicationsOrSelectedNamespaceLabels.selectedNamespaceLabels(
    GkeBackupBackupPlanBackupConfigSelectedNamespaceLabels
    selectedNamespaceLabels,
  ) = GkeBackupBackupPlanBackupConfigAllNamespacesOrSelectedNamespacesOrSelectedApplicationsOrSelectedNamespaceLabelsSelectedNamespaceLabels;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [GkeBackupBackupPlanBackupConfigAllNamespacesOrSelectedNamespacesOrSelectedApplicationsOrSelectedNamespaceLabels.allNamespaces] choice: sets `all_namespaces`.
final class GkeBackupBackupPlanBackupConfigAllNamespacesOrSelectedNamespacesOrSelectedApplicationsOrSelectedNamespaceLabelsAllNamespaces
    extends
        GkeBackupBackupPlanBackupConfigAllNamespacesOrSelectedNamespacesOrSelectedApplicationsOrSelectedNamespaceLabels {
  const GkeBackupBackupPlanBackupConfigAllNamespacesOrSelectedNamespacesOrSelectedApplicationsOrSelectedNamespaceLabelsAllNamespaces(
    this.allNamespaces,
  );

  final TfArg<bool> allNamespaces;

  @override
  String get blockKey => 'all_namespaces';

  @override
  Map<String, Object?> encode() => {'all_namespaces': allNamespaces.toTfJson()};
}

/// The [GkeBackupBackupPlanBackupConfigAllNamespacesOrSelectedNamespacesOrSelectedApplicationsOrSelectedNamespaceLabels.selectedNamespaces] choice: sets `selected_namespaces`.
final class GkeBackupBackupPlanBackupConfigAllNamespacesOrSelectedNamespacesOrSelectedApplicationsOrSelectedNamespaceLabelsSelectedNamespaces
    extends
        GkeBackupBackupPlanBackupConfigAllNamespacesOrSelectedNamespacesOrSelectedApplicationsOrSelectedNamespaceLabels {
  const GkeBackupBackupPlanBackupConfigAllNamespacesOrSelectedNamespacesOrSelectedApplicationsOrSelectedNamespaceLabelsSelectedNamespaces(
    this.selectedNamespaces,
  );

  final GkeBackupBackupPlanBackupConfigSelectedNamespaces selectedNamespaces;

  @override
  String get blockKey => 'selected_namespaces';

  @override
  Map<String, Object?> encode() => {
    'selected_namespaces': selectedNamespaces.encode(),
  };
}

/// The [GkeBackupBackupPlanBackupConfigAllNamespacesOrSelectedNamespacesOrSelectedApplicationsOrSelectedNamespaceLabels.selectedApplications] choice: sets `selected_applications`.
final class GkeBackupBackupPlanBackupConfigAllNamespacesOrSelectedNamespacesOrSelectedApplicationsOrSelectedNamespaceLabelsSelectedApplications
    extends
        GkeBackupBackupPlanBackupConfigAllNamespacesOrSelectedNamespacesOrSelectedApplicationsOrSelectedNamespaceLabels {
  const GkeBackupBackupPlanBackupConfigAllNamespacesOrSelectedNamespacesOrSelectedApplicationsOrSelectedNamespaceLabelsSelectedApplications(
    this.selectedApplications,
  );

  final GkeBackupBackupPlanBackupConfigSelectedApplications
  selectedApplications;

  @override
  String get blockKey => 'selected_applications';

  @override
  Map<String, Object?> encode() => {
    'selected_applications': selectedApplications.encode(),
  };
}

/// The [GkeBackupBackupPlanBackupConfigAllNamespacesOrSelectedNamespacesOrSelectedApplicationsOrSelectedNamespaceLabels.selectedNamespaceLabels] choice: sets `selected_namespace_labels`.
final class GkeBackupBackupPlanBackupConfigAllNamespacesOrSelectedNamespacesOrSelectedApplicationsOrSelectedNamespaceLabelsSelectedNamespaceLabels
    extends
        GkeBackupBackupPlanBackupConfigAllNamespacesOrSelectedNamespacesOrSelectedApplicationsOrSelectedNamespaceLabels {
  const GkeBackupBackupPlanBackupConfigAllNamespacesOrSelectedNamespacesOrSelectedApplicationsOrSelectedNamespaceLabelsSelectedNamespaceLabels(
    this.selectedNamespaceLabels,
  );

  final GkeBackupBackupPlanBackupConfigSelectedNamespaceLabels
  selectedNamespaceLabels;

  @override
  String get blockKey => 'selected_namespace_labels';

  @override
  Map<String, Object?> encode() => {
    'selected_namespace_labels': selectedNamespaceLabels.encode(),
  };
}

/// Typed helper for the `backup_config.encryption_key` block of
/// `google_gke_backup_backup_plan` (derived from provider schema).
@immutable
final class GkeBackupBackupPlanBackupConfigEncryptionKey {
  const GkeBackupBackupPlanBackupConfigEncryptionKey({
    required this.gcpKmsEncryptionKey,
  });

  final TfArg<String> gcpKmsEncryptionKey;

  Map<String, Object?> encode() => {
    'gcp_kms_encryption_key': gcpKmsEncryptionKey.toTfJson(),
  };
}

/// Typed helper for the `backup_config.selected_applications` block of
/// `google_gke_backup_backup_plan` (derived from provider schema).
@immutable
final class GkeBackupBackupPlanBackupConfigSelectedApplications {
  const GkeBackupBackupPlanBackupConfigSelectedApplications({
    required this.namespacedNames,
  });

  final List<GkeBackupBackupPlanBackupConfigSelectedApplicationsNamespacedNames>
  namespacedNames;

  Map<String, Object?> encode() => {
    'namespaced_names': [for (final e in namespacedNames) e.encode()],
  };
}

/// Typed helper for the `backup_config.selected_applications.namespaced_names` block of
/// `google_gke_backup_backup_plan` (derived from provider schema).
@immutable
final class GkeBackupBackupPlanBackupConfigSelectedApplicationsNamespacedNames {
  const GkeBackupBackupPlanBackupConfigSelectedApplicationsNamespacedNames({
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

/// Typed helper for the `backup_config.selected_namespace_labels` block of
/// `google_gke_backup_backup_plan` (derived from provider schema).
@immutable
final class GkeBackupBackupPlanBackupConfigSelectedNamespaceLabels {
  const GkeBackupBackupPlanBackupConfigSelectedNamespaceLabels({
    required this.resourceLabels,
  });

  final List<
    GkeBackupBackupPlanBackupConfigSelectedNamespaceLabelsResourceLabels
  >
  resourceLabels;

  Map<String, Object?> encode() => {
    'resource_labels': [for (final e in resourceLabels) e.encode()],
  };
}

/// Typed helper for the `backup_config.selected_namespace_labels.resource_labels` block of
/// `google_gke_backup_backup_plan` (derived from provider schema).
@immutable
final class GkeBackupBackupPlanBackupConfigSelectedNamespaceLabelsResourceLabels {
  const GkeBackupBackupPlanBackupConfigSelectedNamespaceLabelsResourceLabels({
    required this.key,
    required this.value,
  });

  final TfArg<String> key;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `backup_config.selected_namespaces` block of
/// `google_gke_backup_backup_plan` (derived from provider schema).
@immutable
final class GkeBackupBackupPlanBackupConfigSelectedNamespaces {
  const GkeBackupBackupPlanBackupConfigSelectedNamespaces({
    required this.namespaces,
  });

  final TfArg<List<Object?>> namespaces;

  Map<String, Object?> encode() => {'namespaces': namespaces.toTfJson()};
}

/// Typed helper for the `retention_policy` block of
/// `google_gke_backup_backup_plan` (derived from provider schema).
@immutable
final class GkeBackupBackupPlanRetentionPolicy {
  const GkeBackupBackupPlanRetentionPolicy({
    this.backupDeleteLockDays,
    this.backupRetainDays,
    this.locked,
  });

  final TfArg<num>? backupDeleteLockDays;

  final TfArg<num>? backupRetainDays;

  final TfArg<bool>? locked;

  Map<String, Object?> encode() => {
    if (backupDeleteLockDays != null)
      'backup_delete_lock_days': backupDeleteLockDays!.toTfJson(),
    if (backupRetainDays != null)
      'backup_retain_days': backupRetainDays!.toTfJson(),
    if (locked != null) 'locked': locked!.toTfJson(),
  };
}

/// Factory wrapper for `google_gke_backup_backup_plan`.
///
/// Represents a Backup Plan instance.
///
/// Defines a **GKE Backup plan** — scheduled backups of a
/// [GoogleContainerCluster] into a backup store.
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - `name`: backup plan ID (unique per project/location).
/// - `location`: GCP region (e.g. `'asia-northeast1'`).
/// - `cluster`: target cluster — typically `TfArg.ref(cluster.id)`.
///
/// Pair with [GoogleGkeBackupRestorePlan] for restore workflows.
final class GoogleGkeBackupBackupPlan extends Resource {
  static const String tfType = 'google_gke_backup_backup_plan';

  GoogleGkeBackupBackupPlan({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    required TfArg<String> cluster,
    TfArg<String>? description,
    TfArg<bool>? deactivated,
    TfArg<Map<String, String>>? labels,
    GkeBackupBackupPlanBackupConfig? backupConfig,
    GkeBackupBackupPlanBackupSchedule? backupSchedule,
    GkeBackupBackupPlanRetentionPolicy? retentionPolicy,
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
           'cluster': cluster,
           if (description != null) 'description': description,
           if (deactivated != null) 'deactivated': deactivated,
           if (labels != null) 'labels': labels,
           if (backupConfig != null)
             'backup_config': TfArg.literal(backupConfig.encode()),
           if (backupSchedule != null)
             'backup_schedule': TfArg.literal([backupSchedule.encode()]),
           if (retentionPolicy != null)
             'retention_policy': TfArg.literal(retentionPolicy.encode()),
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleGkeBackupBackupPlanSensitive;

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `protected_namespace_count` attribute.
  TfRef<num> get protectedNamespaceCount =>
      TfRef.attribute<num>(this, 'protected_namespace_count');

  /// Reference to `protected_pod_count` attribute.
  TfRef<num> get protectedPodCount =>
      TfRef.attribute<num>(this, 'protected_pod_count');

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

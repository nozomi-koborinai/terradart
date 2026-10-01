// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../container/google_container_cluster.dart' show GoogleContainerCluster;

/// Sensitive field paths for `google_gke_backup_backup_plan`.
const Set<String> _googleGkeBackupBackupPlanSensitive = <String>{};

extension type const GkeBackupBackupPlanDayOfWeek._(TfArg<String> _)
    implements TfArg<String> {
  GkeBackupBackupPlanDayOfWeek.variable(String name)
    : this._(TfArg.variable(name));
  GkeBackupBackupPlanDayOfWeek.expression(String template)
    : this._(TfArg.expression(template));
  const GkeBackupBackupPlanDayOfWeek.arg(TfArg<String> arg) : this._(arg);

  static const monday = GkeBackupBackupPlanDayOfWeek._(TfArgLiteral('MONDAY'));
  static const tuesday = GkeBackupBackupPlanDayOfWeek._(
    TfArgLiteral('TUESDAY'),
  );
  static const wednesday = GkeBackupBackupPlanDayOfWeek._(
    TfArgLiteral('WEDNESDAY'),
  );
  static const thursday = GkeBackupBackupPlanDayOfWeek._(
    TfArgLiteral('THURSDAY'),
  );
  static const friday = GkeBackupBackupPlanDayOfWeek._(TfArgLiteral('FRIDAY'));
  static const saturday = GkeBackupBackupPlanDayOfWeek._(
    TfArgLiteral('SATURDAY'),
  );
  static const sunday = GkeBackupBackupPlanDayOfWeek._(TfArgLiteral('SUNDAY'));

  static const List<GkeBackupBackupPlanDayOfWeek> values = [
    monday,
    tuesday,
    wednesday,
    thursday,
    friday,
    saturday,
    sunday,
  ];
}

@immutable
class GkeBackupBackupPlanExclusionWindowDaysOfWeek {
  const GkeBackupBackupPlanExclusionWindowDaysOfWeek({this.daysOfWeek});

  final List<GkeBackupBackupPlanDayOfWeek>? daysOfWeek;

  Map<String, Object?> toArgMap() => {
    if (daysOfWeek != null)
      'days_of_week': daysOfWeek!.map((d) => d.toTfJson()).toList(),
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
    required this.scope,
    this.includeSecrets,
    this.includeVolumeData,
    this.permissiveMode,
    this.encryptionKey,
  });

  final GkeBackupBackupPlanScope scope;

  final TfArg<bool>? includeSecrets;

  final TfArg<bool>? includeVolumeData;

  final TfArg<bool>? permissiveMode;

  final GkeBackupBackupPlanEncryptionKey? encryptionKey;

  Map<String, Object?> encode() => {
    ...scope.encode(),
    'include_secrets': ?includeSecrets?.toTfJson(),
    'include_volume_data': ?includeVolumeData?.toTfJson(),
    'permissive_mode': ?permissiveMode?.toTfJson(),
    'encryption_key': ?encryptionKey?.encode(),
  };
}

/// Exactly one of `all_namespaces`, `selected_namespaces`, `selected_applications`, `selected_namespace_labels` on the `backup_config` block of `google_gke_backup_backup_plan`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.allNamespaces(...)`.
sealed class GkeBackupBackupPlanScope {
  const GkeBackupBackupPlanScope();

  /// Sets `all_namespaces`.
  const factory GkeBackupBackupPlanScope.allNamespaces(
    TfArg<bool> allNamespaces,
  ) = GkeBackupBackupPlanScopeAllNamespaces;

  /// Sets `selected_namespaces`.
  const factory GkeBackupBackupPlanScope.selectedNamespaces(
    GkeBackupBackupPlanSelectedNamespaces selectedNamespaces,
  ) = GkeBackupBackupPlanScopeSelectedNamespaces;

  /// Sets `selected_applications`.
  const factory GkeBackupBackupPlanScope.selectedApplications(
    GkeBackupBackupPlanSelectedApplications selectedApplications,
  ) = GkeBackupBackupPlanScopeSelectedApplications;

  /// Sets `selected_namespace_labels`.
  const factory GkeBackupBackupPlanScope.selectedNamespaceLabels(
    GkeBackupBackupPlanSelectedNamespaceLabels selectedNamespaceLabels,
  ) = GkeBackupBackupPlanScopeSelectedNamespaceLabels;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [GkeBackupBackupPlanScope.allNamespaces] choice: sets `all_namespaces`.
final class GkeBackupBackupPlanScopeAllNamespaces
    extends GkeBackupBackupPlanScope {
  const GkeBackupBackupPlanScopeAllNamespaces(this.allNamespaces);

  final TfArg<bool> allNamespaces;

  @override
  String get blockKey => 'all_namespaces';

  @override
  Map<String, Object?> encode() => {'all_namespaces': allNamespaces.toTfJson()};
}

/// The [GkeBackupBackupPlanScope.selectedNamespaces] choice: sets `selected_namespaces`.
final class GkeBackupBackupPlanScopeSelectedNamespaces
    extends GkeBackupBackupPlanScope {
  const GkeBackupBackupPlanScopeSelectedNamespaces(this.selectedNamespaces);

  final GkeBackupBackupPlanSelectedNamespaces selectedNamespaces;

  @override
  String get blockKey => 'selected_namespaces';

  @override
  Map<String, Object?> encode() => {
    'selected_namespaces': selectedNamespaces.encode(),
  };
}

/// The [GkeBackupBackupPlanScope.selectedApplications] choice: sets `selected_applications`.
final class GkeBackupBackupPlanScopeSelectedApplications
    extends GkeBackupBackupPlanScope {
  const GkeBackupBackupPlanScopeSelectedApplications(this.selectedApplications);

  final GkeBackupBackupPlanSelectedApplications selectedApplications;

  @override
  String get blockKey => 'selected_applications';

  @override
  Map<String, Object?> encode() => {
    'selected_applications': selectedApplications.encode(),
  };
}

/// The [GkeBackupBackupPlanScope.selectedNamespaceLabels] choice: sets `selected_namespace_labels`.
final class GkeBackupBackupPlanScopeSelectedNamespaceLabels
    extends GkeBackupBackupPlanScope {
  const GkeBackupBackupPlanScopeSelectedNamespaceLabels(
    this.selectedNamespaceLabels,
  );

  final GkeBackupBackupPlanSelectedNamespaceLabels selectedNamespaceLabels;

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
final class GkeBackupBackupPlanEncryptionKey {
  const GkeBackupBackupPlanEncryptionKey({required this.gcpKmsEncryptionKey});

  final TfArg<String> gcpKmsEncryptionKey;

  Map<String, Object?> encode() => {
    'gcp_kms_encryption_key': gcpKmsEncryptionKey.toTfJson(),
  };
}

/// Typed helper for the `backup_config.selected_applications` block of
/// `google_gke_backup_backup_plan` (derived from provider schema).
@immutable
final class GkeBackupBackupPlanSelectedApplications {
  const GkeBackupBackupPlanSelectedApplications({
    required this.namespacedNames,
  });

  final List<GkeBackupBackupPlanNamespacedNames> namespacedNames;

  Map<String, Object?> encode() => {
    'namespaced_names': [for (final e in namespacedNames) e.encode()],
  };
}

/// Typed helper for the `backup_config.selected_applications.namespaced_names` block of
/// `google_gke_backup_backup_plan` (derived from provider schema).
@immutable
final class GkeBackupBackupPlanNamespacedNames {
  const GkeBackupBackupPlanNamespacedNames({
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
final class GkeBackupBackupPlanSelectedNamespaceLabels {
  const GkeBackupBackupPlanSelectedNamespaceLabels({
    required this.resourceLabels,
  });

  final List<GkeBackupBackupPlanResourceLabels> resourceLabels;

  Map<String, Object?> encode() => {
    'resource_labels': [for (final e in resourceLabels) e.encode()],
  };
}

/// Typed helper for the `backup_config.selected_namespace_labels.resource_labels` block of
/// `google_gke_backup_backup_plan` (derived from provider schema).
@immutable
final class GkeBackupBackupPlanResourceLabels {
  const GkeBackupBackupPlanResourceLabels({
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
final class GkeBackupBackupPlanSelectedNamespaces {
  const GkeBackupBackupPlanSelectedNamespaces({required this.namespaces});

  final TfArg<List<String>> namespaces;

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
    'backup_delete_lock_days': ?backupDeleteLockDays?.toTfJson(),
    'backup_retain_days': ?backupRetainDays?.toTfJson(),
    'locked': ?locked?.toTfJson(),
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
/// - `cluster`: target cluster — typically `cluster.id`.
///
/// Pair with [GoogleGkeBackupRestorePlan] for restore workflows.
final class GoogleGkeBackupBackupPlan extends Resource {
  static const String tfType = 'google_gke_backup_backup_plan';

  GoogleGkeBackupBackupPlan(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> location,
    required RefTo<GoogleContainerCluster> cluster,
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
           'cluster': cluster.encodeAs('id'),
           'description': ?description,
           'deactivated': ?deactivated,
           'labels': ?labels,
           if (backupConfig != null)
             'backup_config': TfArg.literal(backupConfig.encode()),
           if (backupSchedule != null)
             'backup_schedule': TfArg.literal([backupSchedule.encode()]),
           if (retentionPolicy != null)
             'retention_policy': TfArg.literal(retentionPolicy.encode()),
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleGkeBackupBackupPlanSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleGkeBackupBackupPlan>`.
  RefTo<GoogleGkeBackupBackupPlan> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `cluster` attribute.
  TfRef<String> get cluster => TfRef.attribute<String>(this, 'cluster');

  /// Reference to `deactivated` attribute.
  TfRef<bool> get deactivated => TfRef.attribute<bool>(this, 'deactivated');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}

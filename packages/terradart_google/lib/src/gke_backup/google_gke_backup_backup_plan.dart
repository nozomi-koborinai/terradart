// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_gke_backup_backup_plan`.
const Set<String> _googleGkeBackupBackupPlanSensitive = <String>{};

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
    TfArg<Map<String, dynamic>>? backupConfig,
    TfArg<Map<String, dynamic>>? backupSchedule,
    TfArg<Map<String, dynamic>>? retentionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'cluster': cluster,
           if (description != null) 'description': description,
           if (deactivated != null) 'deactivated': deactivated,
           if (labels != null) 'labels': labels,
           if (backupConfig != null) 'backup_config': backupConfig,
           if (backupSchedule != null) 'backup_schedule': backupSchedule,
           if (retentionPolicy != null) 'retention_policy': retentionPolicy,
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

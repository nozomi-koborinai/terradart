// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_gke_backup_restore_plan`.
const Set<String> _googleGkeBackupRestorePlanSensitive = <String>{};

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
    required TfArg<Map<String, dynamic>> restoreConfig,
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
           'restore_config': restoreConfig,
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

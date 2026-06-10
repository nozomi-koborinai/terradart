// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_gke_backup_backup_channel`.
const Set<String> _googleGkeBackupBackupChannelSensitive = <String>{};

/// Factory wrapper for `google_gke_backup_backup_channel`.
///
/// A BackupChannel imposes constraints on where clusters can be backed up. The
/// BackupChannel should be in the same project and region as the cluster being
/// backed up. The backup can be created only in destination_project.
///
/// A **backup channel** routes GKE Backup data to a destination project.
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - `name`: channel ID (unique per project/location).
/// - `location`: GCP region.
/// - `destinationProject`: project where backups are stored, in
///   `projects/{project}` form (bare project IDs are rejected).
final class GoogleGkeBackupBackupChannel extends Resource {
  static const String tfType = 'google_gke_backup_backup_channel';

  GoogleGkeBackupBackupChannel({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    required TfArg<String> destinationProject,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'destination_project': destinationProject,
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleGkeBackupBackupChannelSensitive;

  /// Reference to `destination_project_id` attribute.
  TfRef<String> get destinationProjectId =>
      TfRef.attribute<String>(this, 'destination_project_id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}

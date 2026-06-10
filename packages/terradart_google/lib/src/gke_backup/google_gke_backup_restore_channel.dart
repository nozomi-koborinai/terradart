// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_gke_backup_restore_channel`.
const Set<String> _googleGkeBackupRestoreChannelSensitive = <String>{};

/// Factory wrapper for `google_gke_backup_restore_channel`.
///
/// A RestoreChannel imposes constraints on where backups can be restored. The
/// RestoreChannel should be in the same project and region as the backups. The
/// backups can only be restored in the destination_project.
///
/// A **restore channel** routes restore data from a source project.
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - `name`: channel ID (unique per project/location).
/// - `location`: GCP region.
/// - `destinationProject`: project restores are delivered to, in
///   `projects/{project}` form (bare project IDs are rejected).
final class GoogleGkeBackupRestoreChannel extends Resource {
  static const String tfType = 'google_gke_backup_restore_channel';

  GoogleGkeBackupRestoreChannel({
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
  Set<String> get sensitiveFields => _googleGkeBackupRestoreChannelSensitive;

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

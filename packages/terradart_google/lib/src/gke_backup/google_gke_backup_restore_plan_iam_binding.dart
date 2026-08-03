// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_gke_backup_restore_plan_iam_binding`.
const Set<String> _googleGkeBackupRestorePlanIamBindingSensitive = <String>{};

/// Factory wrapper for `google_gke_backup_restore_plan_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a GKE Backup restore
/// plan.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleGkeBackupRestorePlanIamMember] for additive grants. Resource-level
/// setIamPolicy on restore plans has failed apply-smoke with 400; ships
/// debt-only with the sibling member.
final class GoogleGkeBackupRestorePlanIamBinding extends Resource {
  static const String tfType = 'google_gke_backup_restore_plan_iam_binding';

  GoogleGkeBackupRestorePlanIamBinding({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<String>? location,
    TfArg<Map<String, dynamic>>? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'role': role,
           'members': members,
           if (location != null) 'location': location,
           if (condition != null) 'condition': condition,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleGkeBackupRestorePlanIamBindingSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}

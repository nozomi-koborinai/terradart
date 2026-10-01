// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../gke_backup/google_gke_backup_backup_plan.dart'
    show GoogleGkeBackupBackupPlan;

/// Sensitive field paths for `google_gke_backup_backup_plan_iam_policy`.
const Set<String> _googleGkeBackupBackupPlanIamPolicySensitive = <String>{};

/// Factory wrapper for `google_gke_backup_backup_plan_iam_policy`.
///
/// Authoritative IAM policy for a GKE Backup backup plan.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleGkeBackupBackupPlanIamMember] for single-principal grants.
final class GoogleGkeBackupBackupPlanIamPolicy extends Resource {
  static const String tfType = 'google_gke_backup_backup_plan_iam_policy';

  GoogleGkeBackupBackupPlanIamPolicy({
    required super.localName,
    required RefTo<GoogleGkeBackupBackupPlan> backupPlan,
    required TfArg<String> policyData,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': backupPlan.encodeAs('name'),
           'policy_data': policyData,
           'location': ?(location ?? backupPlan.alsoAs('location')),
           'project': ?(project ?? backupPlan.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleGkeBackupBackupPlanIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleGkeBackupBackupPlanIamPolicy>`.
  RefTo<GoogleGkeBackupBackupPlanIamPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyDataRef =>
      TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');
}

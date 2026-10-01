// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../gke_backup/google_gke_backup_restore_plan.dart'
    show GoogleGkeBackupRestorePlan;

/// Sensitive field paths for `google_gke_backup_restore_plan_iam_policy`.
const Set<String> _googleGkeBackupRestorePlanIamPolicySensitive = <String>{};

/// Factory wrapper for `google_gke_backup_restore_plan_iam_policy`.
///
/// Authoritative IAM policy for a GKE Backup restore plan.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleGkeBackupRestorePlanIamMember] for single-principal grants.
/// Resource-level setIamPolicy on restore plans has failed apply-smoke with
/// 400; ships debt-only with the sibling member.
final class GoogleGkeBackupRestorePlanIamPolicy extends Resource {
  static const String tfType = 'google_gke_backup_restore_plan_iam_policy';

  GoogleGkeBackupRestorePlanIamPolicy(
    super.localName, {
    required RefTo<GoogleGkeBackupRestorePlan> restorePlan,
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
           'name': restorePlan.encodeAs('name'),
           'policy_data': policyData,
           'location': ?(location ?? restorePlan.alsoAs('location')),
           'project': ?(project ?? restorePlan.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleGkeBackupRestorePlanIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleGkeBackupRestorePlanIamPolicy>`.
  RefTo<GoogleGkeBackupRestorePlanIamPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}

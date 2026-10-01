// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../gke_backup/google_gke_backup_backup_plan.dart'
    show GoogleGkeBackupBackupPlan;

/// Sensitive field paths for `google_gke_backup_backup_plan_iam_binding`.
const Set<String> _googleGkeBackupBackupPlanIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_gke_backup_backup_plan_iam_binding` (derived from provider schema).
@immutable
final class GkeBackupBackupPlanIamBindingCondition {
  const GkeBackupBackupPlanIamBindingCondition({
    this.description,
    required this.expression,
    required this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String> title;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'title': title.toTfJson(),
  };
}

/// Factory wrapper for `google_gke_backup_backup_plan_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a GKE Backup backup
/// plan.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleGkeBackupBackupPlanIamMember] for additive grants.
final class GoogleGkeBackupBackupPlanIamBinding extends Resource {
  static const String tfType = 'google_gke_backup_backup_plan_iam_binding';

  GoogleGkeBackupBackupPlanIamBinding({
    required super.localName,
    required RefTo<GoogleGkeBackupBackupPlan> backupPlan,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<String>? location,
    GkeBackupBackupPlanIamBindingCondition? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': backupPlan.encodeAs('name'),
           'role': role,
           'members': members,
           'location': ?(location ?? backupPlan.alsoAs('location')),
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'project': ?(project ?? backupPlan.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleGkeBackupBackupPlanIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleGkeBackupBackupPlanIamBinding>`.
  RefTo<GoogleGkeBackupBackupPlanIamBinding> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `members` attribute.
  TfRef<List<String>> get membersRef =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../gke_backup/google_gke_backup_backup_plan.dart'
    show GoogleGkeBackupBackupPlan;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_gke_backup_backup_plan_iam_member`.
const Set<String> _googleGkeBackupBackupPlanIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_gke_backup_backup_plan_iam_member` (derived from provider schema).
@immutable
final class GkeBackupBackupPlanIamMemberCondition {
  const GkeBackupBackupPlanIamMemberCondition({
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

/// Factory wrapper for `google_gke_backup_backup_plan_iam_member`.
final class GoogleGkeBackupBackupPlanIamMember extends Resource {
  static const String tfType = 'google_gke_backup_backup_plan_iam_member';

  GoogleGkeBackupBackupPlanIamMember({
    required super.localName,
    required RefTo<GoogleGkeBackupBackupPlan> backupPlan,
    required TfArg<String> role,
    required IamPrincipal member,
    TfArg<String>? location,
    GkeBackupBackupPlanIamMemberCondition? condition,
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
           'member': member,
           'location': ?(location ?? backupPlan.alsoAs('location')),
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'project': ?(project ?? backupPlan.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleGkeBackupBackupPlanIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleGkeBackupBackupPlanIamMember>`.
  RefTo<GoogleGkeBackupBackupPlanIamMember> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `member` attribute.
  TfRef<String> get memberRef => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');
}

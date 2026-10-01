// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../gke_backup/google_gke_backup_restore_plan.dart'
    show GoogleGkeBackupRestorePlan;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_gke_backup_restore_plan_iam_member`.
const Set<String> _googleGkeBackupRestorePlanIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_gke_backup_restore_plan_iam_member` (derived from provider schema).
@immutable
final class GkeBackupRestorePlanIamMemberCondition {
  const GkeBackupRestorePlanIamMemberCondition({
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

/// Factory wrapper for `google_gke_backup_restore_plan_iam_member`.
final class GoogleGkeBackupRestorePlanIamMember extends Resource {
  static const String tfType = 'google_gke_backup_restore_plan_iam_member';

  GoogleGkeBackupRestorePlanIamMember({
    required super.localName,
    required RefTo<GoogleGkeBackupRestorePlan> restorePlan,
    required TfArg<String> role,
    required IamPrincipal member,
    TfArg<String>? location,
    GkeBackupRestorePlanIamMemberCondition? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': restorePlan.encodeAs('name'),
           'role': role,
           'member': member,
           'location': ?(location ?? restorePlan.alsoAs('location')),
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'project': ?(project ?? restorePlan.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleGkeBackupRestorePlanIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleGkeBackupRestorePlanIamMember>`.
  RefTo<GoogleGkeBackupRestorePlanIamMember> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `member` attribute.
  TfRef<String> get member => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}

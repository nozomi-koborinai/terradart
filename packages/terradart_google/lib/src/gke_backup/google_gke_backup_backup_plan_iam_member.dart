// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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
    required TfArg<String> name,
    required TfArg<String> role,
    required TfArg<String> member,
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
           'name': name,
           'role': role,
           'member': member,
           'location': ?location,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'project': ?project,
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
}

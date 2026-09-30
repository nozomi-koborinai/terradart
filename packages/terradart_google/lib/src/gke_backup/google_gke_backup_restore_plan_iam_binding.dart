// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_gke_backup_restore_plan_iam_binding`.
const Set<String> _googleGkeBackupRestorePlanIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_gke_backup_restore_plan_iam_binding` (derived from provider schema).
@immutable
final class GkeBackupRestorePlanIamBindingCondition {
  const GkeBackupRestorePlanIamBindingCondition({
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
    GkeBackupRestorePlanIamBindingCondition? condition,
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
           'members': members,
           'location': ?location,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleGkeBackupRestorePlanIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleGkeBackupRestorePlanIamBinding>`.
  RefTo<GoogleGkeBackupRestorePlanIamBinding> get ref => RefTo.of(this);

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

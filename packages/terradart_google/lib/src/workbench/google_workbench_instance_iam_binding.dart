// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_workbench_instance_iam_binding`.
const Set<String> _googleWorkbenchInstanceIamBindingSensitive = <String>{};

/// Factory wrapper for `google_workbench_instance_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Vertex AI Workbench
/// instance.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleWorkbenchInstanceIamMember] for additive grants. Deferred with
/// the never_apply Workbench instance (no apply-smoke quickstart).
final class GoogleWorkbenchInstanceIamBinding extends Resource {
  static const String tfType = 'google_workbench_instance_iam_binding';

  GoogleWorkbenchInstanceIamBinding({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<String>? location,
    TfArg<String>? project,
    TfArg<Map<String, dynamic>>? condition,
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
           'project': ?project,
           'condition': ?condition,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleWorkbenchInstanceIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleWorkbenchInstanceIamBinding>`.
  RefTo<GoogleWorkbenchInstanceIamBinding> get ref => RefTo.of(this);

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

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
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'role': role,
           'members': members,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleWorkbenchInstanceIamBindingSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}

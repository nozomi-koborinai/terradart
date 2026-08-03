// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_notebooks_instance_iam_binding`.
const Set<String> _googleNotebooksInstanceIamBindingSensitive = <String>{};

/// Factory wrapper for `google_notebooks_instance_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Vertex AI Workbench
/// notebook instance.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleNotebooksInstanceIamMember] for additive grants. Deferred with
/// the never_apply notebook instance (no apply-smoke quickstart).
final class GoogleNotebooksInstanceIamBinding extends Resource {
  static const String tfType = 'google_notebooks_instance_iam_binding';

  GoogleNotebooksInstanceIamBinding({
    required super.localName,
    required TfArg<String> instanceName,
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
           'instance_name': instanceName,
           'role': role,
           'members': members,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNotebooksInstanceIamBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}

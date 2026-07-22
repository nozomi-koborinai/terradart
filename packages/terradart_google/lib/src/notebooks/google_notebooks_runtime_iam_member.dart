// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_notebooks_runtime_iam_member`.
const Set<String> _googleNotebooksRuntimeIamMemberSensitive = <String>{};

/// Factory wrapper for `google_notebooks_runtime_iam_member`.
///
/// Non-authoritative IAM member on a Vertex AI Workbench notebook
/// runtime.
///
/// Deferred with the never_apply notebook runtime (no apply-smoke
/// quickstart).
final class GoogleNotebooksRuntimeIamMember extends Resource {
  static const String tfType = 'google_notebooks_runtime_iam_member';

  GoogleNotebooksRuntimeIamMember({
    required super.localName,
    required TfArg<String> runtimeName,
    required TfArg<String> role,
    required TfArg<String> member,
    TfArg<String>? location,
    TfArg<String>? project,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'runtime_name': runtimeName,
           'role': role,
           'member': member,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleNotebooksRuntimeIamMemberSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}

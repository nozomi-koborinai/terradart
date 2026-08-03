// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_notebooks_runtime_iam_policy`.
const Set<String> _googleNotebooksRuntimeIamPolicySensitive = <String>{};

/// Factory wrapper for `google_notebooks_runtime_iam_policy`.
///
/// Authoritative IAM policy for a Vertex AI Workbench notebook runtime.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleNotebooksRuntimeIamMember] for single-principal grants.
/// Deferred with the never_apply notebook runtime (no apply-smoke
/// quickstart).
final class GoogleNotebooksRuntimeIamPolicy extends Resource {
  static const String tfType = 'google_notebooks_runtime_iam_policy';

  GoogleNotebooksRuntimeIamPolicy({
    required super.localName,
    required TfArg<String> runtimeName,
    required TfArg<String> policyData,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'runtime_name': runtimeName,
           'policy_data': policyData,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleNotebooksRuntimeIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_notebooks_instance_iam_policy`.
const Set<String> _googleNotebooksInstanceIamPolicySensitive = <String>{};

/// Factory wrapper for `google_notebooks_instance_iam_policy`.
///
/// Authoritative IAM policy for a Vertex AI Workbench notebook instance.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleNotebooksInstanceIamMember] for single-principal grants.
/// Deferred with the never_apply notebook instance (no apply-smoke
/// quickstart).
final class GoogleNotebooksInstanceIamPolicy extends Resource {
  static const String tfType = 'google_notebooks_instance_iam_policy';

  GoogleNotebooksInstanceIamPolicy({
    required super.localName,
    required TfArg<String> instanceName,
    required TfArg<String> policyData,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance_name': instanceName,
           'policy_data': policyData,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleNotebooksInstanceIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}

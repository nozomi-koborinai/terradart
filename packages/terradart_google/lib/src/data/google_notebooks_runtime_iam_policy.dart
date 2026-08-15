// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_notebooks_runtime_iam_policy`.
const Set<String> _googleNotebooksRuntimeIamPolicySensitive = <String>{};

/// Factory wrapper for `google_notebooks_runtime_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleNotebooksRuntimeIamPolicy extends Data {
  static const String tfType = 'google_notebooks_runtime_iam_policy';

  DataGoogleNotebooksRuntimeIamPolicy({
    required super.localName,
    TfArg<String>? location,
    TfArg<String>? project,
    required TfArg<String> runtimeName,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (location != null) 'location': location,
           if (project != null) 'project': project,
           'runtime_name': runtimeName,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleNotebooksRuntimeIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');
}

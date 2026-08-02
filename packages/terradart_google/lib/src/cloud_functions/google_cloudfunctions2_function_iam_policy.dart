// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_cloudfunctions2_function_iam_policy`.
const Set<String> _googleCloudfunctions2FunctionIamPolicySensitive = <String>{};

/// Factory wrapper for `google_cloudfunctions2_function_iam_policy`.
///
/// Authoritative IAM policy for a Cloud Functions (2nd gen) function.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleCloudfunctions2FunctionIamMember] for single-principal grants.
final class GoogleCloudfunctions2FunctionIamPolicy extends Resource {
  static const String tfType = 'google_cloudfunctions2_function_iam_policy';

  GoogleCloudfunctions2FunctionIamPolicy({
    required super.localName,
    required TfArg<String> cloudFunction,
    required TfArg<String> policyData,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cloud_function': cloudFunction,
           'policy_data': policyData,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleCloudfunctions2FunctionIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_cloudfunctions_function_iam_policy`.
const Set<String> _googleCloudfunctionsFunctionIamPolicySensitive = <String>{};

/// Factory wrapper for `google_cloudfunctions_function_iam_policy`.
///
/// Authoritative IAM policy for a Cloud Functions (1st gen) function.
///
/// `policy_data` replaces the entire IAM policy, overwriting grants made
/// outside Terraform. Prefer [GoogleCloudfunctionsFunctionIamMember] for single-principal grants.
/// Prefer [GoogleCloudfunctions2FunctionIamMember] for 2nd gen functions.
final class GoogleCloudfunctionsFunctionIamPolicy extends Resource {
  static const String tfType = 'google_cloudfunctions_function_iam_policy';

  GoogleCloudfunctionsFunctionIamPolicy({
    required super.localName,
    required TfArg<String> cloudFunction,
    required TfArg<String> policyData,
    TfArg<String>? region,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cloud_function': cloudFunction,
           'policy_data': policyData,
           if (region != null) 'region': region,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleCloudfunctionsFunctionIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}

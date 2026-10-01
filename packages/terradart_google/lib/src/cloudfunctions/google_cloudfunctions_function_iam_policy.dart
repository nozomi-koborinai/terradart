// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../cloudfunctions/google_cloudfunctions_function.dart'
    show GoogleCloudfunctionsFunction;

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

  GoogleCloudfunctionsFunctionIamPolicy(
    super.localName, {
    required RefTo<GoogleCloudfunctionsFunction> function,
    required TfArg<String> policyData,
    TfArg<String>? region,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cloud_function': function.encodeAs('name'),
           'policy_data': policyData,
           'region': ?(region ?? function.alsoAs('region')),
           'project': ?(project ?? function.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleCloudfunctionsFunctionIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleCloudfunctionsFunctionIamPolicy>`.
  RefTo<GoogleCloudfunctionsFunctionIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `cloud_function` attribute.
  TfRef<String> get cloudFunction =>
      TfRef.attribute<String>(this, 'cloud_function');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}

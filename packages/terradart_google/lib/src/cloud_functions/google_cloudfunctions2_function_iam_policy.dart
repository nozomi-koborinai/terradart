// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../cloud_functions/google_cloudfunctions2_function.dart'
    show GoogleCloudfunctions2Function;

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
    required RefTo<GoogleCloudfunctions2Function> function,
    required TfArg<String> policyData,
    TfArg<String>? location,
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
           'location': ?(location ?? function.alsoAs('location')),
           'project': ?(project ?? function.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleCloudfunctions2FunctionIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleCloudfunctions2FunctionIamPolicy>`.
  RefTo<GoogleCloudfunctions2FunctionIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `cloud_function` attribute.
  TfRef<String> get cloudFunction =>
      TfRef.attribute<String>(this, 'cloud_function');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}

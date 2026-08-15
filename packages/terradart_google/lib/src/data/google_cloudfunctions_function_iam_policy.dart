// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_cloudfunctions_function_iam_policy`.
const Set<String> _googleCloudfunctionsFunctionIamPolicySensitive = <String>{};

/// Factory wrapper for `google_cloudfunctions_function_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleCloudfunctionsFunctionIamPolicy extends Data {
  static const String tfType = 'google_cloudfunctions_function_iam_policy';

  DataGoogleCloudfunctionsFunctionIamPolicy({
    required super.localName,
    required TfArg<String> cloudFunction,
    TfArg<String>? project,
    TfArg<String>? region,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cloud_function': cloudFunction,
           if (project != null) 'project': project,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleCloudfunctionsFunctionIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');
}

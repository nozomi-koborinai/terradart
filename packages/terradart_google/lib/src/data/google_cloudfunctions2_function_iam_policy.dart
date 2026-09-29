// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../cloud_functions/google_cloudfunctions2_function_iam_policy.dart';

/// Sensitive field paths for `google_cloudfunctions2_function_iam_policy`.
const Set<String> _googleCloudfunctions2FunctionIamPolicySensitive = <String>{};

/// Factory wrapper for `google_cloudfunctions2_function_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleCloudfunctions2FunctionIamPolicy extends Data {
  static const String tfType = 'google_cloudfunctions2_function_iam_policy';

  DataGoogleCloudfunctions2FunctionIamPolicy({
    required super.localName,
    required TfArg<String> cloudFunction,
    TfArg<String>? location,
    TfArg<String>? project,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cloud_function': cloudFunction,
           'location': ?location,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleCloudfunctions2FunctionIamPolicySensitive;

  /// A reference to the `google_cloudfunctions2_function_iam_policy` this data source reads, for
  /// arguments typed `RefTo<GoogleCloudfunctions2FunctionIamPolicy>`.
  RefTo<GoogleCloudfunctions2FunctionIamPolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_apigee_environment_iam_policy`.
const Set<String> _googleApigeeEnvironmentIamPolicySensitive = <String>{};

/// Factory wrapper for `google_apigee_environment_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleApigeeEnvironmentIamPolicy extends Data {
  static const String tfType = 'google_apigee_environment_iam_policy';

  DataGoogleApigeeEnvironmentIamPolicy({
    required super.localName,
    required TfArg<String> envId,
    required TfArg<String> orgId,
  }) : super(terraformType: tfType, argMap: {'env_id': envId, 'org_id': orgId});

  @override
  Set<String> get sensitiveFields => _googleApigeeEnvironmentIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');
}

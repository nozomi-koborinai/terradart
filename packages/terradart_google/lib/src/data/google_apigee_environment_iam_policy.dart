// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../apigee/google_apigee_environment_iam_policy.dart';

/// Sensitive field paths for `google_apigee_environment_iam_policy`.
const Set<String> _googleApigeeEnvironmentIamPolicySensitive = <String>{};

/// Factory wrapper for `google_apigee_environment_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleApigeeEnvironmentIamPolicy extends Data {
  static const String tfType = 'google_apigee_environment_iam_policy';

  DataGoogleApigeeEnvironmentIamPolicy(
    super.localName, {
    required TfArg<String> envId,
    required TfArg<String> orgId,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'env_id': envId, 'org_id': orgId});

  @override
  Set<String> get sensitiveFields => _googleApigeeEnvironmentIamPolicySensitive;

  /// A reference to the `google_apigee_environment_iam_policy` this data source reads, for
  /// arguments typed `RefTo<GoogleApigeeEnvironmentIamPolicy>`.
  RefTo<GoogleApigeeEnvironmentIamPolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `env_id` attribute.
  TfRef<String> get envId => TfRef.attribute<String>(this, 'env_id');

  /// Reference to `org_id` attribute.
  TfRef<String> get orgId => TfRef.attribute<String>(this, 'org_id');
}

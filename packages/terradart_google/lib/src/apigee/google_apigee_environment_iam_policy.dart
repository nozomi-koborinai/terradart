// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_apigee_environment_iam_policy`.
const Set<String> _googleApigeeEnvironmentIamPolicySensitive = <String>{};

/// Factory wrapper for `google_apigee_environment_iam_policy`.
///
/// Authoritative IAM policy for an Apigee environment.
///
/// `policy_data` replaces the entire IAM policy, overwriting grants made
/// outside Terraform. Prefer [GoogleApigeeEnvironmentIamMember] for single-principal grants.
final class GoogleApigeeEnvironmentIamPolicy extends Resource {
  static const String tfType = 'google_apigee_environment_iam_policy';

  GoogleApigeeEnvironmentIamPolicy({
    required super.localName,
    required TfArg<String> orgId,
    required TfArg<String> envId,
    required TfArg<String> policyData,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {'org_id': orgId, 'env_id': envId, 'policy_data': policyData},
       );

  @override
  Set<String> get sensitiveFields => _googleApigeeEnvironmentIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}

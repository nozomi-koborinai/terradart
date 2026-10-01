// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../apigee/google_apigee_environment.dart' show GoogleApigeeEnvironment;

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
    TfArg<String>? orgId,
    required RefTo<GoogleApigeeEnvironment> environment,
    required TfArg<String> policyData,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'org_id': ?(orgId ?? environment.alsoAs('org_id')),
           'env_id': environment.encodeAs('name'),
           'policy_data': policyData,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApigeeEnvironmentIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleApigeeEnvironmentIamPolicy>`.
  RefTo<GoogleApigeeEnvironmentIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `env_id` attribute.
  TfRef<String> get envIdRef => TfRef.attribute<String>(this, 'env_id');

  /// Reference to `org_id` attribute.
  TfRef<String> get orgIdRef => TfRef.attribute<String>(this, 'org_id');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyDataRef =>
      TfRef.attribute<String>(this, 'policy_data');
}

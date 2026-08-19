// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_backend_service_iam_policy`.
const Set<String> _googleComputeBackendServiceIamPolicySensitive = <String>{};

/// Factory wrapper for `google_compute_backend_service_iam_policy`.
///
/// Authoritative IAM policy for a Compute Backend Service.
///
/// Overwrites every role binding on the resource. Prefer
/// [GoogleComputeBackendServiceIamMember] for additive grants.
final class GoogleComputeBackendServiceIamPolicy extends Resource {
  static const String tfType = 'google_compute_backend_service_iam_policy';

  GoogleComputeBackendServiceIamPolicy({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           'name': name,
           'policy_data': policyData,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeBackendServiceIamPolicySensitive;
}

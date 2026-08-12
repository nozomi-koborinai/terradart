// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iam_workforce_pool_iam_policy`.
const Set<String> _googleIamWorkforcePoolIamPolicySensitive = <String>{};

/// Factory wrapper for `google_iam_workforce_pool_iam_policy`.
///
/// Authoritative IAM policy for a Workforce Identity Federation pool.
///
/// `policy_data` replaces the entire IAM policy, overwriting grants made
/// outside Terraform. Prefer [GoogleIamWorkforcePoolIamMember] for single-principal grants.
final class GoogleIamWorkforcePoolIamPolicy extends Resource {
  static const String tfType = 'google_iam_workforce_pool_iam_policy';

  GoogleIamWorkforcePoolIamPolicy({
    required super.localName,
    required TfArg<String> workforcePoolId,
    required TfArg<String> policyData,
    TfArg<String>? location,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'workforce_pool_id': workforcePoolId,
           'policy_data': policyData,
           if (location != null) 'location': location,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleIamWorkforcePoolIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}

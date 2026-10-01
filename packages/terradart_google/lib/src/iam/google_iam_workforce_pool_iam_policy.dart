// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../iam/google_iam_workforce_pool.dart' show GoogleIamWorkforcePool;

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
    required RefTo<GoogleIamWorkforcePool> workforcePool,
    required TfArg<String> policyData,
    TfArg<String>? location,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'workforce_pool_id': workforcePool.encodeAs('workforce_pool_id'),
           'policy_data': policyData,
           'location': ?(location ?? workforcePool.alsoAs('location')),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleIamWorkforcePoolIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleIamWorkforcePoolIamPolicy>`.
  RefTo<GoogleIamWorkforcePoolIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyDataRef =>
      TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `workforce_pool_id` attribute.
  TfRef<String> get workforcePoolIdRef =>
      TfRef.attribute<String>(this, 'workforce_pool_id');
}

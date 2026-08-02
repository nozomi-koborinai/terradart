// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_privateca_ca_pool_iam_policy`.
const Set<String> _googlePrivatecaCaPoolIamPolicySensitive = <String>{};

/// Factory wrapper for `google_privateca_ca_pool_iam_policy`.
///
/// Authoritative IAM policy for a Private CA pool.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GooglePrivatecaCaPoolIamMember] for single-principal grants.
final class GooglePrivatecaCaPoolIamPolicy extends Resource {
  static const String tfType = 'google_privateca_ca_pool_iam_policy';

  GooglePrivatecaCaPoolIamPolicy({
    required super.localName,
    required TfArg<String> caPool,
    required TfArg<String> policyData,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {'ca_pool': caPool, 'policy_data': policyData},
       );

  @override
  Set<String> get sensitiveFields => _googlePrivatecaCaPoolIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}

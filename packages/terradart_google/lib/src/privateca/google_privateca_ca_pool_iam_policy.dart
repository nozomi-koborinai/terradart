// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../privateca/google_privateca_ca_pool.dart' show GooglePrivatecaCaPool;

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
    required RefTo<GooglePrivatecaCaPool> caPool,
    required TfArg<String> policyData,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'ca_pool': caPool.encodeAs('id'), 'policy_data': policyData},
       );

  @override
  Set<String> get sensitiveFields => _googlePrivatecaCaPoolIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GooglePrivatecaCaPoolIamPolicy>`.
  RefTo<GooglePrivatecaCaPoolIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `ca_pool` attribute.
  TfRef<String> get caPoolRef => TfRef.attribute<String>(this, 'ca_pool');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyDataRef =>
      TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');
}

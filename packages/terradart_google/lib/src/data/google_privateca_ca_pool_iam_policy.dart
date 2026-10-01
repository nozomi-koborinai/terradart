// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../privateca/google_privateca_ca_pool_iam_policy.dart';

/// Sensitive field paths for `google_privateca_ca_pool_iam_policy`.
const Set<String> _googlePrivatecaCaPoolIamPolicySensitive = <String>{};

/// Factory wrapper for `google_privateca_ca_pool_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGooglePrivatecaCaPoolIamPolicy extends Data {
  static const String tfType = 'google_privateca_ca_pool_iam_policy';

  DataGooglePrivatecaCaPoolIamPolicy({
    required super.localName,
    required TfArg<String> caPool,
    TfArg<String>? location,
    TfArg<String>? project,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'ca_pool': caPool,
           'location': ?location,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googlePrivatecaCaPoolIamPolicySensitive;

  /// A reference to the `google_privateca_ca_pool_iam_policy` this data source reads, for
  /// arguments typed `RefTo<GooglePrivatecaCaPoolIamPolicy>`.
  RefTo<GooglePrivatecaCaPoolIamPolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `ca_pool` attribute.
  TfRef<String> get caPool => TfRef.attribute<String>(this, 'ca_pool');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../scc/google_scc_source_iam_policy.dart';

/// Sensitive field paths for `google_scc_source_iam_policy`.
const Set<String> _googleSccSourceIamPolicySensitive = <String>{};

/// Factory wrapper for `google_scc_source_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleSccSourceIamPolicy extends Data {
  static const String tfType = 'google_scc_source_iam_policy';

  DataGoogleSccSourceIamPolicy(
    super.localName, {
    required TfArg<String> organization,
    required TfArg<String> source,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'organization': organization, 'source': source},
       );

  @override
  Set<String> get sensitiveFields => _googleSccSourceIamPolicySensitive;

  /// A reference to the `google_scc_source_iam_policy` this data source reads, for
  /// arguments typed `RefTo<GoogleSccSourceIamPolicy>`.
  RefTo<GoogleSccSourceIamPolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `organization` attribute.
  TfRef<String> get organization =>
      TfRef.attribute<String>(this, 'organization');

  /// Reference to `source` attribute.
  TfRef<String> get source => TfRef.attribute<String>(this, 'source');
}

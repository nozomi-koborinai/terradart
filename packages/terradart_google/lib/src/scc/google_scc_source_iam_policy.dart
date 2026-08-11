// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_scc_source_iam_policy`.
const Set<String> _googleSccSourceIamPolicySensitive = <String>{};

/// Factory wrapper for `google_scc_source_iam_policy`.
///
/// Authoritative IAM policy for a Security Command Center source.
///
/// `policy_data` replaces the entire IAM policy, overwriting grants made
/// outside Terraform. Prefer [GoogleSccSourceIamMember] for single-principal grants.
final class GoogleSccSourceIamPolicy extends Resource {
  static const String tfType = 'google_scc_source_iam_policy';

  GoogleSccSourceIamPolicy({
    required super.localName,
    required TfArg<String> source,
    required TfArg<String> organization,
    required TfArg<String> policyData,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'source': source,
           'organization': organization,
           'policy_data': policyData,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleSccSourceIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}

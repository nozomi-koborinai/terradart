// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_sourcerepo_repository_iam_policy`.
const Set<String> _googleSourcerepoRepositoryIamPolicySensitive = <String>{};

/// Factory wrapper for `google_sourcerepo_repository_iam_policy`.
///
/// Authoritative IAM policy for a Cloud Source Repository.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleSourcerepoRepositoryIamMember] for single-principal grants.
final class GoogleSourcerepoRepositoryIamPolicy extends Resource {
  static const String tfType = 'google_sourcerepo_repository_iam_policy';

  GoogleSourcerepoRepositoryIamPolicy({
    required super.localName,
    required TfArg<String> repository,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'repository': repository,
           'policy_data': policyData,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleSourcerepoRepositoryIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../sourcerepo/google_sourcerepo_repository_iam_policy.dart';

/// Sensitive field paths for `google_sourcerepo_repository_iam_policy`.
const Set<String> _googleSourcerepoRepositoryIamPolicySensitive = <String>{};

/// Factory wrapper for `google_sourcerepo_repository_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleSourcerepoRepositoryIamPolicy extends Data {
  static const String tfType = 'google_sourcerepo_repository_iam_policy';

  DataGoogleSourcerepoRepositoryIamPolicy({
    required super.localName,
    TfArg<String>? project,
    required TfArg<String> repository,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (project != null) 'project': project,
           'repository': repository,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleSourcerepoRepositoryIamPolicySensitive;

  /// A reference to the `google_sourcerepo_repository_iam_policy` this data source reads, for
  /// arguments typed `RefTo<GoogleSourcerepoRepositoryIamPolicy>`.
  // ignore: invalid_use_of_internal_member
  RefTo<GoogleSourcerepoRepositoryIamPolicy> get ref => RefTo.read(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../dataform/google_dataform_repository_iam_policy.dart';

/// Sensitive field paths for `google_dataform_repository_iam_policy`.
const Set<String> _googleDataformRepositoryIamPolicySensitive = <String>{};

/// Factory wrapper for `google_dataform_repository_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleDataformRepositoryIamPolicy extends Data {
  static const String tfType = 'google_dataform_repository_iam_policy';

  DataGoogleDataformRepositoryIamPolicy({
    required super.localName,
    TfArg<String>? project,
    TfArg<String>? region,
    required TfArg<String> repository,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'project': ?project,
           'region': ?region,
           'repository': repository,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataformRepositoryIamPolicySensitive;

  /// A reference to the `google_dataform_repository_iam_policy` this data source reads, for
  /// arguments typed `RefTo<GoogleDataformRepositoryIamPolicy>`.
  RefTo<GoogleDataformRepositoryIamPolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `repository` attribute.
  TfRef<String> get repository => TfRef.attribute<String>(this, 'repository');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dataform_repository_iam_policy`.
const Set<String> _googleDataformRepositoryIamPolicySensitive = <String>{};

/// Factory wrapper for `google_dataform_repository_iam_policy`.
///
/// Authoritative IAM policy for a Dataform repository.
///
/// `policy_data` replaces the entire IAM policy, overwriting grants made
/// outside Terraform. Prefer [GoogleDataformRepositoryIamMember] for
/// single-principal grants.
final class GoogleDataformRepositoryIamPolicy extends Resource {
  static const String tfType = 'google_dataform_repository_iam_policy';

  GoogleDataformRepositoryIamPolicy({
    required super.localName,
    required TfArg<String> repository,
    required TfArg<String> policyData,
    TfArg<String>? region,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'repository': repository,
           'policy_data': policyData,
           if (region != null) 'region': region,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataformRepositoryIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}

// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../dataform/google_dataform_repository.dart'
    show GoogleDataformRepository;

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

  GoogleDataformRepositoryIamPolicy(
    super.localName, {
    required RefTo<GoogleDataformRepository> repository,
    required TfArg<String> policyData,
    TfArg<String>? region,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'repository': repository.encodeAs('name'),
           'policy_data': policyData,
           'region': ?(region ?? repository.alsoAs('region')),
           'project': ?(project ?? repository.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataformRepositoryIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataformRepositoryIamPolicy>`.
  RefTo<GoogleDataformRepositoryIamPolicy> get ref => RefTo.of(this);

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

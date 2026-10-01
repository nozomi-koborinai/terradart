// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../secure/google_secure_source_manager_repository.dart'
    show GoogleSecureSourceManagerRepository;

/// Sensitive field paths for `google_secure_source_manager_repository_iam_policy`.
const Set<String> _googleSecureSourceManagerRepositoryIamPolicySensitive =
    <String>{};

/// Factory wrapper for `google_secure_source_manager_repository_iam_policy`.
///
/// Authoritative IAM policy for a Secure Source Manager repository.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleSecureSourceManagerRepositoryIamMember] for single-principal
/// grants. Deferred with the never_apply SSM instance (no apply-smoke
/// quickstart).
final class GoogleSecureSourceManagerRepositoryIamPolicy extends Resource {
  static const String tfType =
      'google_secure_source_manager_repository_iam_policy';

  GoogleSecureSourceManagerRepositoryIamPolicy({
    required super.localName,
    required RefTo<GoogleSecureSourceManagerRepository> repository,
    required TfArg<String> policyData,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'repository_id': repository.encodeAs('repository_id'),
           'policy_data': policyData,
           'location': ?(location ?? repository.alsoAs('location')),
           'project': ?(project ?? repository.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleSecureSourceManagerRepositoryIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleSecureSourceManagerRepositoryIamPolicy>`.
  RefTo<GoogleSecureSourceManagerRepositoryIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyDataRef =>
      TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `repository_id` attribute.
  TfRef<String> get repositoryIdRef =>
      TfRef.attribute<String>(this, 'repository_id');
}

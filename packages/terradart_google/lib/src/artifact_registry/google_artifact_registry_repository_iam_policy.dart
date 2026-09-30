// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_artifact_registry_repository_iam_policy`.
const Set<String> _googleArtifactRegistryRepositoryIamPolicySensitive =
    <String>{};

/// Factory wrapper for `google_artifact_registry_repository_iam_policy`.
///
/// Authoritative IAM policy for an Artifact Registry repository.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleArtifactRegistryRepositoryIamMember] for single-principal grants.
final class GoogleArtifactRegistryRepositoryIamPolicy extends Resource {
  static const String tfType = 'google_artifact_registry_repository_iam_policy';

  GoogleArtifactRegistryRepositoryIamPolicy({
    required super.localName,
    required TfArg<String> repository,
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
           'repository': repository,
           'policy_data': policyData,
           'location': ?location,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleArtifactRegistryRepositoryIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleArtifactRegistryRepositoryIamPolicy>`.
  RefTo<GoogleArtifactRegistryRepositoryIamPolicy> get ref => RefTo.of(this);

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

  /// Reference to `repository` attribute.
  TfRef<String> get repositoryRef =>
      TfRef.attribute<String>(this, 'repository');
}

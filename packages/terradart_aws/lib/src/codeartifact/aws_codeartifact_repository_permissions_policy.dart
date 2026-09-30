// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_codeartifact_repository_permissions_policy`.
const Set<String> _awsCodeartifactRepositoryPermissionsPolicySensitive =
    <String>{};

/// Factory wrapper for `aws_codeartifact_repository_permissions_policy`.
final class AwsCodeartifactRepositoryPermissionsPolicy extends Resource {
  static const String tfType = 'aws_codeartifact_repository_permissions_policy';

  AwsCodeartifactRepositoryPermissionsPolicy({
    required super.localName,
    required TfArg<String> domain,
    TfArg<String>? domainOwner,
    required TfArg<String> policyDocument,
    TfArg<String>? policyRevision,
    TfArg<String>? region,
    required TfArg<String> repository,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'domain': domain,
           'domain_owner': ?domainOwner,
           'policy_document': policyDocument,
           'policy_revision': ?policyRevision,
           'region': ?region,
           'repository': repository,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsCodeartifactRepositoryPermissionsPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCodeartifactRepositoryPermissionsPolicy>`.
  RefTo<AwsCodeartifactRepositoryPermissionsPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `resource_arn` attribute.
  TfRef<String> get resourceArn =>
      TfRef.attribute<String>(this, 'resource_arn');

  /// Reference to `domain` attribute.
  TfRef<String> get domainRef => TfRef.attribute<String>(this, 'domain');

  /// Reference to `domain_owner` attribute.
  TfRef<String> get domainOwnerRef =>
      TfRef.attribute<String>(this, 'domain_owner');

  /// Reference to `policy_document` attribute.
  TfRef<String> get policyDocumentRef =>
      TfRef.attribute<String>(this, 'policy_document');

  /// Reference to `policy_revision` attribute.
  TfRef<String> get policyRevisionRef =>
      TfRef.attribute<String>(this, 'policy_revision');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `repository` attribute.
  TfRef<String> get repositoryRef =>
      TfRef.attribute<String>(this, 'repository');
}
